namespace BookStore.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Sach")]
    public partial class Sach
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Sach()
        {
            ChiTietDonHangs = new HashSet<ChiTietDonHang>();
            ChiTietPhieuNhaps = new HashSet<ChiTietPhieuNhap>();
            ThamGias = new HashSet<ThamGia>();
        }

        [Key]
        [Display(Name = "Mã Sách")]
        public int MaSach { get; set; }

        [StringLength(200)]
        [Display(Name = "Tên Sách")]
        public string TenSach { get; set; }

        [Display(Name = "Giá Bán")]
        public decimal? GiaBan { get; set; }

        [Display(Name = "Mô Tả")]
        public string MoTa { get; set; }

        [Display(Name = "Ảnh Bìa")]
        public string AnhBia { get; set; }

        [Display(Name = "Ngày Cập Nhật")]
        public DateTime? NgayCapNhat { get; set; }

        [Display(Name = "Số Lượng Tồn")]
        public int? SoLuongTon { get; set; }

        [Display(Name = "Số Lượng Đã Bán")]
        public int? SoLuongDaBan { get; set; }

        [Display(Name = "Mới")]
        public int? Moi { get; set; }

        [Display(Name = "Nhà Xuất Bản")]
        public int MaNXB { get; set; }

        [Display(Name = "Mã Chủ Đề")]
        public int MaChuDe { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietDonHang> ChiTietDonHangs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietPhieuNhap> ChiTietPhieuNhaps { get; set; }

        public virtual ChuDe ChuDe { get; set; }

        public virtual NhaXuatBan NhaXuatBan { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ThamGia> ThamGias { get; set; }
    }
}
