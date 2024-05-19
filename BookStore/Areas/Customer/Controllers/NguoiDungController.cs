using BookStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BookStore.Areas.Customer.Controllers
{
    public class NguoiDungController : Controller
    {
        QuanLySachEntities db = new QuanLySachEntities();
        // GET: /NguoiDung/
        public ActionResult Index()
        {
            return View();
        }
        //Dăng ký
        [HttpGet]
        public ActionResult DangKy()
        {

            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DangKy(KhachHang kh)
        {
            if (ModelState.IsValid)
            {
                //Chèn dữ liệu vào bảng khách hàng
                kh.TrangThai = 0;
                db.KhachHangs.Add(kh);
                //Lưu vào csdl 
                db.SaveChanges();
                return RedirectToAction("Index", "Home");
            }
            return View();
        }
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
            KhachHang kh = db.KhachHangs.FirstOrDefault(n => n.TaiKhoan == ssTaiKhoan && n.MatKhau == ssMatKhau);

            if (kh != null) // có nhập vào 2 ô text box
            {
                var updateKhachhang = db.KhachHangs.FirstOrDefault(n => n.TaiKhoan == kh.TaiKhoan);
                if (updateKhachhang.TrangThai > 3)
                {
                    ModelState.AddModelError("", "Tài khoản của bạn đã bị khóa !");
                }
                else
                {
                    Session["TaiKhoan"] = kh;
                    return RedirectToAction("Index", "Home");
                    // kết thúc sự kiện trả về index
                }

            }
            else
            {
                //trường hợp user đúng, pass sai
                KhachHang kh2 = db.KhachHangs.FirstOrDefault(n => n.TaiKhoan == ssTaiKhoan && n.MatKhau != ssMatKhau);
                if (ModelState.IsValid)
                {
                    if (kh2 != null)
                    {
                        var updateKhachhang = db.KhachHangs.FirstOrDefault(n => n.TaiKhoan == kh2.TaiKhoan);
                        if (updateKhachhang.TrangThai > 3)
                        {
                            ModelState.AddModelError("", "Tài khoản của bạn đã bị khóa !");
                        }
                        else
                        {
                            KhachHang demlannhapsai = new KhachHang();

                            updateKhachhang.TrangThai += 1;
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
            Session["TaiKhoan"] = null;
            return RedirectToAction("Index", "Home");
        }

    }
}