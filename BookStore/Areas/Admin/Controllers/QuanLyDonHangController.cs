using BookStore.Models;
using System.Linq;
using System.Net;
using System.Web.Mvc;

namespace BookStore.Areas.Admin.Controllers
{
    public class QuanLyDonHangController : Controller
    {
        QuanLySachEntities db = new QuanLySachEntities();


        #region 4 trạng thái đơn hàng
        // xác nhận (0)
        public ActionResult XacNhan()
        {
            var lstXacNhanDonHang = db.DonHangs.Where(n => n.TinhTrangGiaoHang == 0).ToList();
            return View(lstXacNhanDonHang);
        }
        // Đang giao (1)
        public ActionResult DangGiao()
        {
            var lstDonHangDangGiao = db.DonHangs.Where(n => n.TinhTrangGiaoHang == 1).ToList();
            return View(lstDonHangDangGiao);
        }
        // Đã giao (2)
        //Đơn hàng đã giao
        public ActionResult DaGiao()
        {
            var lstDonHangDaGiao = db.DonHangs.Where(n => n.TinhTrangGiaoHang == 2).ToList();
            return View(lstDonHangDaGiao);
        }
        // Đã Hủy (3)
        public ActionResult DaHuy()
        {
            var lstXacNhanDaHuy = db.DonHangs.Where(n => n.TinhTrangGiaoHang == 3).ToList();
            return View(lstXacNhanDaHuy);
        }
        #endregion

        #region Duyệt 3 trạng thái đơn hàng
        // Duyệt đơn (0->1)
        public ActionResult XacNhanDuyetDon(int id)
        {
            DonHang lstDonHang = db.DonHangs.Find(id);
            lstDonHang.TinhTrangGiaoHang = 1;
            db.SaveChanges();
            return RedirectToAction("XacNhan", "QuanLyDonHang");
        }
        // Thực hiện duyệt đơn hàng đang giao
        public ActionResult XacNhanDangGiao(int id)
        {
            DonHang lstDonHang = db.DonHangs.Find(id);
            lstDonHang.TinhTrangGiaoHang = 2;
            db.SaveChanges();
            return RedirectToAction("DangGiao", "QuanLyDonHang");
        }
        // Thực hiện hủy đơn hàng
        public ActionResult XacNhanHuyDon(int id)
        {
            DonHang lstDonHang = db.DonHangs.Find(id);
            lstDonHang.TinhTrangGiaoHang = 3;

            foreach (var item in lstDonHang.ChiTietDonHangs)
            {
                item.SoLuong = 0;
                db.SaveChanges();
            }
            db.SaveChanges();
            return RedirectToAction("XacNhan", "QuanLyDonHang");
        }
        #endregion

        #region Xem Chi Tiết
        [HttpGet]
        public ActionResult XemChiTietDonHang(int? id)
        {
            // Kiểm tra id có hợp lệ không
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DonHang model = db.DonHangs.SingleOrDefault(n => n.MaDonHang == id);
            //Kiểm tra đơn hàng có tồn tại không
            if (model == null)
            {
                return HttpNotFound();
            }
            //Lấy danh sách chi tiết đơn hàng để hiển thị cho người dùng thấy
            var lstChiTietDH = db.ChiTietDonHangs.Where(n => n.MaDonHang == id);

            ViewBag.listchitietdonhang = lstChiTietDH;

            return View(model);
        }

        #endregion







    }
}