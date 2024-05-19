using BookStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BookStore.Areas.Customer.Controllers
{
    public class SachController : Controller
    {
        // GET: /SachMoiPartial/
        QuanLySachEntities db = new QuanLySachEntities();
        public PartialViewResult SachMoiPartial()
        {
            var lstSachMoi = db.Saches.ToList().OrderByDescending(n=>n.MaSach).Take(3);
            return PartialView(lstSachMoi);
        }
        //Xem chi tiết
        public ViewResult XemChiTiet(int MaSach = 0)
        {
            Sach sach = db.Saches.SingleOrDefault(x => x.MaSach == MaSach);
            if (sach == null)
            {
                //Trả về trang báo lổi
                Response.StatusCode = 404;
                return null;
            }
            ViewBag.TenChuDe = db.ChuDes.Single(x => x.MaChuDe == sach.MaChuDe).TenChuDe;
            ViewBag.NhaXuatBan = db.NhaXuatBans.Single(x => x.MaNXB == sach.MaNXB).TenNXB;
            return View(sach);
        }
    }
}