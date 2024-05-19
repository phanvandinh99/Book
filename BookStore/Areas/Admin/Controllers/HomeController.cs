using BookStore.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BookStore.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
        // GET: Admin/Home
        QuanLySachEntities db = new QuanLySachEntities();
        public ActionResult Index(int? page)
        {
            int pageNumber = (page ?? 1);
            int pageSize = 10;
            var lst = db.Saches.ToList().OrderByDescending(n => n.MaSach);
            return View(lst.ToPagedList(pageNumber, pageSize));
        }
       
    }
}