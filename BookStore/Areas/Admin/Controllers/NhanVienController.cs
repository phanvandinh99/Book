using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using BookStore.Models;

namespace BookStore.Areas.Admin.Controllers
{
    public class NhanVienController : Controller
    {
        private QuanLySachEntities db = new QuanLySachEntities();

        // GET: Admin/NhanVien
        public ActionResult Index()
        {
            return View(db.NhanViens.ToList());
        }

        // GET: Admin/NhanVien/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NhanVien nhanVien = db.NhanViens.Find(id);
            if (nhanVien == null)
            {
                return HttpNotFound();
            }
            return View(nhanVien);
        }

        // GET: Admin/NhanVien/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/NhanVien/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "TaiKhoanNV,MatKhauNV,TenNhanVien,NgaySinh,GioiTinh,Email,SoDienThoai,QueQuan,Quyen")] NhanVien nhanVien)
        {
            if (ModelState.IsValid)
            {
                db.NhanViens.Add(nhanVien);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(nhanVien);
        }

        // GET: Admin/NhanVien/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NhanVien nhanVien = db.NhanViens.Find(id);
            if (nhanVien == null)
            {
                return HttpNotFound();
            }
            return View(nhanVien);
        }

        // POST: Admin/NhanVien/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "TaiKhoanNV,MatKhauNV,TenNhanVien,NgaySinh,GioiTinh,Email,SoDienThoai,QueQuan,Quyen")] NhanVien nhanVien)
        {
            if (ModelState.IsValid)
            {
                db.Entry(nhanVien).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(nhanVien);
        }

        // GET: Admin/NhanVien/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NhanVien nhanVien = db.NhanViens.Find(id);
            if (nhanVien == null)
            {
                return HttpNotFound();
            }
            return View(nhanVien);
        }

        // POST: Admin/NhanVien/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            NhanVien nhanVien = db.NhanViens.Find(id);
            db.NhanViens.Remove(nhanVien);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
        #region controll Đăng kí và đăng nhập
        //Đăng nhập
        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DangNhap(FormCollection f)
        {
            // Kiểm tra tên đăng nhập và mật khẩu
            string ssTaiKhoan = f["txtTenDangNhap"].ToString();
            string ssMatKhau = f["txtMatKhau"].ToString();
            if (ssTaiKhoan == "")
            {
                ModelState.AddModelError("", "Bạn không được bỏ trống tên đăng nhập !");
            }
            if (ssMatKhau == "")
            {
                ModelState.AddModelError("", "Bạn không được bỏ trống mật khẩu !");
            }
            //trường hợp user đúng, pass đúng
            NhanVien nv = db.NhanViens.FirstOrDefault(n => n.TaiKhoanNV == ssTaiKhoan && n.MatKhauNV == ssMatKhau);

            if (nv != null) // có nhập vào 2 ô text box
            {
                var updateNhanVien = db.NhanViens.FirstOrDefault(n => n.TaiKhoanNV == nv.TaiKhoanNV);
                if (updateNhanVien.TrangThai > 3)
                {
                    ModelState.AddModelError("", "Tài khoản của bạn đã bị khóa !");
                }
                else
                {
                    Session["TaiKhoanNV"] = nv;
                    return RedirectToAction("Index", "Home");
                    // kết thúc sự kiện trả về index
                }
            }
            else
            {
                //trường hợp user đúng, pass sai
                NhanVien nv2 = db.NhanViens.FirstOrDefault(n => n.TaiKhoanNV == ssTaiKhoan && n.MatKhauNV != ssMatKhau);
                if (ModelState.IsValid)
                {
                    if (nv2 != null)
                    {
                        var updateNhanVien = db.NhanViens.FirstOrDefault(n => n.TaiKhoanNV == nv2.TaiKhoanNV);
                        if (updateNhanVien.TrangThai > 3)
                        {
                            ModelState.AddModelError("", "Tài khoản của bạn đã bị khóa !");
                        }
                        else
                        {
                            NhanVien demlannhapsai = new NhanVien();

                            updateNhanVien.TrangThai += 1;
                            db.SaveChanges();
                            ModelState.AddModelError("", "Sai Mật Khẩu !");
                        }
                    }
                    else
                    {
                        ModelState.AddModelError("", "Tài Khoản Không Tồn tại !");
                    }
                }
            }


            return View();
        }
        //[ChildActionOnly]
        public ActionResult DangXuat()
        {
            Session["TaiKhoanNV"] = null;
            return RedirectToAction("Index", "Home");
        }
        #endregion
    }
}
