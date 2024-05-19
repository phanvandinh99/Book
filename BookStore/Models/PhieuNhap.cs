namespace BookStore.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PhieuNhap")]
    public partial class PhieuNhap
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PhieuNhap()
        {
            ChiTietPhieuNhaps = new HashSet<ChiTietPhieuNhap>();
        }

        [Key]
        [Display(Name = "Mã Phiếu Nhập")]
        public int MaPhieuNhap { get; set; }

        [Display(Name = "Tên Nhà Cung Cấp")]
        public int TenNhaCungCap { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name = "Tài Khoản Nhân Viên")]
        public string TaiKhoanNV { get; set; }

        [Column(TypeName = "date")]
        [Display(Name = "Ngày Nhập Kho")]
        public DateTime? NgayNhapKho { get; set; }

        [Column(TypeName = "money")]
        [Display(Name = "Thành Tiền")]
        public decimal ThanhTien { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietPhieuNhap> ChiTietPhieuNhaps { get; set; }

        public virtual NhanVien NhanVien { get; set; }
    }
}
