using BookStore.Models;
using PagedList;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace BookStore.Areas.Customer.Controllers
{
    public class NhaXuatBanController : Controller
    {
        //
        // GET: /NhaXuatBan/
        QuanLySachEntities db = new QuanLySachEntities();
        public PartialViewResult NhaXuatBanPartial()
        {
            return PartialView(db.NhaXuatBans.Take(5).OrderBy(x => x.TenNXB).ToList());
        }
        //Hiển thị sách theo nhà xuất bản 
        public ViewResult SachTheoNXB(int? page,int MaNXB = 0)
        {
            //Tạo biến số sản phẩm trên trang
            int pageSize = 9;
            //Tạo biến số trang
            int pageNumber = (page ?? 1);
            //Kiểm tra chủ đề tồn tại hay không
            NhaXuatBan nxb = db.NhaXuatBans.SingleOrDefault(n => n.MaNXB == MaNXB);
            if (nxb == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            //Truy xuất danh sách các quyển sách theo Nhà xuất bản
            List<Sach> lstSach = db.Saches.Where(n => n.MaNXB == MaNXB).OrderBy(n => n.GiaBan).ToList();
            if (lstSach.Count == 0)
            {
                ViewBag.Sach = "Không có sách nào thuộc chủ đề này";
            }
            ViewBag.MaNXB = MaNXB; // Lấy mã nhà xuất bản
            //Tạo viewbag danh sách nhà xuất bản 
            ViewBag.lstNXB = db.NhaXuatBans.ToList();
            return View(lstSach.ToPagedList(pageNumber, pageSize));
        }
        //Hiển thị các nhà xuất bản 
        public ViewResult DanhMucNXB()
        {
            //Lấy ra chủ đề đầu tiên trong csdl
            int MaNXB = int.Parse(db.NhaXuatBans.ToList().ElementAt(0).MaNXB.ToString());
            //Tạo 1 viewbag gán sách theo Nhà xuất bản đầu tiên trong csdl
            ViewBag.SachTheoNXB = db.Saches.Where(n => n.MaNXB == MaNXB).ToList();
            return View(db.NhaXuatBans.ToList());

        }
    }
}