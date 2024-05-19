using BookStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BookStore.Areas.Admin.Controllers
{
    public class NhapHangController : Controller
    {
        QuanLySachEntities db = new QuanLySachEntities();
        [HttpGet]
        public ActionResult NhapSach()
        {
            ViewBag.TaiKhoanNV = db.NhanViens;
            //ViewBag.MaNhaCungCap = new SelectList(db.tblNhaCungCaps.OrderBy(n => n.MaNhaCungCap), "MaNhaCungCap", "TenNhaCungCap");
            ViewBag.LstSanh = db.Saches;
            return View();
        }
        [HttpPost]
        public ActionResult NhapSach(PhieuNhap Model, IEnumerable<ChiTietPhieuNhap> lstModel)
        {
            //ViewBag.MaNhaCungCap = new SelectList(db.tblNhaCungCaps.OrderBy(n => n.MaNhaCungCap), "MaNhaCungCap", "TenNhaCungCap");
            ViewBag.LstSanh = db.Saches;
            db.PhieuNhaps.Add(Model);
            db.SaveChanges();
            // lấy mã phiếu nhập savechang để gán cho lít chi tiết phiếu nhập
            foreach (var item in lstModel)
            {
                // gan ma phieu nhap cho ca chi tiet phieu nhap
                item.MaPhieuNhap = Model.MaPhieuNhap;
            }
            db.ChiTietPhieuNhaps.AddRange(lstModel);
            db.SaveChanges();
            return RedirectToAction("Index", "Home");
        }

    }
}