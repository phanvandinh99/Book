﻿using BookStore.Models;
using PagedList;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace BookStore.Areas.Customer.Controllers
{
    public class TimKiemController : Controller
    {
        //
        // GET: /TimKiem/
        QuanLySachEntities db = new QuanLySachEntities();
        [HttpPost]
        public ActionResult KetQuaTimKiem(FormCollection f, int? page)
        {
            string sTuKhoa = f["txtTimKiem"].ToString();
            ViewBag.TuKhoa = sTuKhoa;
            List<Sach> lstKQTK = db.Saches.Where(n => n.TenSach.Contains(sTuKhoa)).ToList();
            //Phân trang
            int pageNumber = (page ?? 1);
            int pageSize = 12;
            if (lstKQTK.Count == 0)
            {
                ViewBag.ThongBao = "Không tìm thấy sản phẩm nào";
                return View(db.Saches.OrderBy(n => n.TenSach).ToPagedList(pageNumber, pageSize));
            }
            ViewBag.ThongBao = "Đã tìm thấy " + lstKQTK.Count + " kết quả!";
            return View(lstKQTK.OrderBy(n => n.TenSach).ToPagedList(pageNumber, pageSize));
        }
        [HttpGet]
        public ActionResult KetQuaTimKiem(int? page, string sTuKhoa)
        {
            ViewBag.TuKhoa = sTuKhoa;
            List<Sach> lstKQTK = db.Saches.Where(n => n.TenSach.Contains(sTuKhoa)).ToList();
            //Phân trang
            int pageNumber = (page ?? 1);
            int pageSize = 12;
            if (lstKQTK.Count == 0)
            {
                ViewBag.ThongBao = "Không tìm thấy sản phẩm nào";
                return View(db.Saches.OrderBy(n => n.TenSach).ToPagedList(pageNumber, pageSize));
            }
            ViewBag.ThongBao = "Đã tìm thấy " + lstKQTK.Count + " kết quả!";
            return View(lstKQTK.OrderBy(n => n.TenSach).ToPagedList(pageNumber, pageSize));
        }
    }
}