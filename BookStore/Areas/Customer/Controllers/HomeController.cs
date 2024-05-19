using BookStore.Models;
using PagedList;
using System.Linq;
using System.Web.Mvc;



namespace BookStore.Areas.Customer.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        QuanLySachEntities db = new QuanLySachEntities();
        public ActionResult Index(int? page)
        {
            //Tạo biến số sản phẩm trên trang
            int pageSize = 12;
            //Tạo biến số trang
            int pageNumber = (page ?? 1);
            return View(db.Saches.OrderBy(n => n.MaSach).ToPagedList(pageNumber, pageSize));
        }
        public ActionResult GioiThieu()
        {
            return View();
        }
        public ActionResult LienHe()
        {
            return View();
        }
        public ActionResult HuongDan()
        {
            return View();
        }
        public ActionResult Sach()
        {
            return View();
        }
        public ActionResult SoLuongKhongDu()
        {
            return View();
        }
        public ActionResult ChinhSachBaoMat()
        {
            return View();
        }

        public ActionResult ChinhSachVanChuyen()
        {
            return View();
        }
        public ActionResult ChinhSachDoiTra()
        {
            return View();
        }
        public ActionResult ChinhSachMuaSi()
        {
            return View();
        }
        public ActionResult DathangThanhCong()
        {
            return View();
        }
    }
}