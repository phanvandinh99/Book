using BookStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BookStore.Areas.Admin.Controllers
{
    public class ThongKeController : Controller
    {
        QuanLySachEntities db = new QuanLySachEntities();
        // GET: Admin/ThongKe
        public ActionResult Index()
        {
            //ViewBag.SoNguoiTruyCap = HttpContext.Application["SoNguoiTruyCap"].ToString(); // lấy số lượng người truy cập từ application trong gobal
            //ViewBag.SoNguoiOnline = HttpContext.Application["SoNguoiOnline"].ToString();// Thống kê số người online
            ViewBag.DoanhThuAll = DoanhThuAll(); // tổng doanh thu tất cả 
            ViewBag.ThongKeThanhVien = ThongKeThanhVien();
            ViewBag.ThongKeDonHang = ThongKeDonHang();
            ViewBag.ThongKeDonHangDangDuyet = ThongKeDonHangDangDuyet();
            ViewBag.ThongKeDonHangDangGiao = ThongKeDonHangDangGiao();
            ViewBag.ThongKeDonHangDaGiao = ThongKeDonHangDaGiao();
            ViewBag.ThongKeDonHangDaHuy = ThongKeDonHangDaHuy();
            return View();
        }
        //[HttpPost]
        //public ActionResult Index(int? Ngay, int Thang, int Nam)
        //{
        //    ViewBag.DoanhThuThangNam = DoanhThuThang(Thang, Nam);
        //    ViewBag.DoanhThuNgayThangNam = DoanhThuNgayThangNam(Ngay, Thang, Nam);

        //    #region Doanh Thu Các Loại
        //    ViewBag.SoNguoiTruyCap = HttpContext.Application["SoNguoiTruyCap"].ToString(); // lấy số lượng người truy cập từ application trong gobal
        //    ViewBag.SoNguoiOnline = HttpContext.Application["SoNguoiOnline"].ToString();// Thống kê số người online
        //    ViewBag.DoanhThuAll = DoanhThuAll(); // tổng doanh thu tất cả 
        //    ViewBag.ThongKeDonHang = ThongKeDonHang();
        //    ViewBag.ThongKeThanhVien = ThongKeThanhVien();
        //    ViewBag.ThongKeDonHang = ThongKeDonHang();
        //    ViewBag.ThongKeDonHangXuLyDonHang = ThongKeDonHangXuLyDonHang();
        //    ViewBag.ThongKeDonHangChoLayHang = ThongKeDonHangChoLayHang();
        //    ViewBag.ThongKeDonHangDangGiao = ThongKeDonHangDangGiao();
        //    ViewBag.ThongKeDonHangDaGiao = ThongKeDonHangDaGiao();
        //    ViewBag.ThongKeDonHangDaHuy = ThongKeDonHangDaHuy();
        //    #endregion
        //    return View();
        //}
        public decimal DoanhThuAll()
        {
            // doanh thu tất cả 
            decimal TongDoanhThu = db.ChiTietDonHangs.Sum(n => n.DonGia).Value;
            return TongDoanhThu;
        }
        public decimal DoanhThuThang(int Thang, int Nam)
        {

            var listDDH = db.DonHangs.Where(n => n.NgayDat.Value.Month == Thang && n.NgayDat.Value.Year == Nam);
            decimal TongTien = 0;
            foreach (var item in listDDH)
            {
                TongTien += decimal.Parse(item.ChiTietDonHangs.Sum(n => n.DonGia).Value.ToString());
            }
            return TongTien;
        }
        public decimal DoanhThuNgayThangNam(int? Ngay, int Thang, int Nam)
        {

            var listDDH = db.DonHangs.Where(n => n.NgayDat.Value.Day == Ngay && n.NgayDat.Value.Month == Thang && n.NgayDat.Value.Year == Nam);
            decimal TongTien = 0;
            foreach (var item in listDDH)
            {
                TongTien += decimal.Parse(item.ChiTietDonHangs.Sum(n => n.DonGia).Value.ToString());
            }
            return TongTien;
        }

        #region Thống kê số lượng đơn hàng
        public int ThongKeDonHang()
        {
            var SLddh = db.DonHangs.Count();
            return SLddh;
        }
        // Đang duyệt
        public int ThongKeDonHangDangDuyet()
        {
            var SLddh = db.DonHangs.Count(n => n.TinhTrangGiaoHang == 0);
            return SLddh;
        }

        //Đang giao
        public int ThongKeDonHangDangGiao()
        {
            var SLddh = db.DonHangs.Count(n => n.TinhTrangGiaoHang == 1);
            return SLddh;
        }
        // Đã giao
        public int ThongKeDonHangDaGiao()
        {
            var SLddh = db.DonHangs.Count(n => n.TinhTrangGiaoHang == 2);
            return SLddh;
        }
        // Đã Hủy
        public int ThongKeDonHangDaHuy()
        {
            var SLddh = db.DonHangs.Count(n => n.TinhTrangGiaoHang == 3);
            return SLddh;
        }
        #endregion

        public int ThongKeThanhVien()
        {
            int SLThanhVien = db.KhachHangs.Count();
            return SLThanhVien;
        }

    }
}