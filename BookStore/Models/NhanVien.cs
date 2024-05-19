namespace BookStore.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NhanVien")]
    public partial class NhanVien
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NhanVien()
        {
            PhieuNhaps = new HashSet<PhieuNhap>();
        }

        [Key]
        [StringLength(50)]
        [Display(Name = "Tài Khoản Nhân Viên")]
        public string TaiKhoanNV { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name = "Mật Khẩu Nhân Viên")]
        public string MatKhauNV { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name = "Tên Nhân Viên")]
        public string TenNhanVien { get; set; }

        [Column(TypeName = "date")]
        [Display(Name = "Ngày Sinh")]
        public DateTime NgaySinh { get; set; }

        [StringLength(10)]
        [Display(Name = "Giới Tính")]
        public string GioiTinh { get; set; }

        [StringLength(50)]
        [Display(Name = "Email")]
        public string Email { get; set; }

        [Required]
        [StringLength(10)]
        [Display(Name = "Số Điện Thoại")]
        public string SoDienThoai { get; set; }

        [Required]
        [StringLength(500)]
        [Display(Name = "Quê Quán")]
        public string QueQuan { get; set; }

        [Display(Name = "Trạng Thái")]
        public int TrangThai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuNhap> PhieuNhaps { get; set; }
    }
}
