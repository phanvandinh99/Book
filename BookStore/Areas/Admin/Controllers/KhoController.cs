using BookStore.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BookStore.Areas.Admin.Controllers
{
    public class KhoController : Controller
    {
        QuanLySachEntities db = new QuanLySachEntities();
        // GET: Admin/Kho
        public ActionResult SachBanChay(int? page)
        {
            int pageNumber = (page ?? 1);
            int pageSize = 10;
            var sachbanchay = db.Saches.Take(20).ToList().OrderByDescending(n => n.SoLuongDaBan);
            return View(sachbanchay.ToPagedList(pageNumber, pageSize));
        }
        public ActionResult SachTon(int? page)
        {
            int pageNumber = (page ?? 1);
            int pageSize = 10;
            var sachton = db.Saches.Where(n=>n.SoLuongDaBan==0).Take(20).ToList().OrderBy(n => n.MaSach);
            return View(sachton.ToPagedList(pageNumber, pageSize));
        }

        public ActionResult SachSapHet(int? page)
        {
            int pageNumber = (page ?? 1);
            int pageSize = 10;
            var sachton = db.Saches.Where(n => n.SoLuongTon <= 5).Take(20).ToList().OrderByDescending(n => n.SoLuongTon);
            return View(sachton.ToPagedList(pageNumber, pageSize));
        }
    }
}