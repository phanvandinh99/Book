namespace BookStore.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("KhachHang")]
    public partial class KhachHang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public KhachHang()
        {
            DonHangs = new HashSet<DonHang>();
        }

        [Key]
        [Display(Name = "Mã Khách Hàng")]
        public int MaKhachHang { get; set; }

        [Required(ErrorMessage = "Không được bỏ trống họ và tên")]
        [StringLength(50)]
        [DataType(DataType.Text)]
        [Display(Name = "Họ Tên")]
        public string HoTen { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage = "Không được bỏ trống tài khoản")]
        [Display(Name = "Tài Khoản")]
        public string TaiKhoan { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage = "Không được bỏ trống mật khẩu")]
        [Display(Name = "Mật Khẩu")]
        public string MatKhau { get; set; }

        [StringLength(100)]
        [Required(ErrorMessage = "Không được bỏ trống email")]
        [Display(Name = "Email")]
        [RegularExpression("^[a-zA-Z0-9_\\.-]+@([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$", ErrorMessage = "Email Không hợp lệ [ ____@__.__ ]")]
        //[DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        [StringLength(500)]
        [Required(ErrorMessage = "Không được bỏ trống email")]
        [Display(Name = "Địa Chỉ")]
        public string DiaChi { get; set; }

        [StringLength(12)]
        [Display(Name = "Điện Thoại")]
        public string DienThoai { get; set; }

        [StringLength(5)]
        [Display(Name = "Giới Tính")]
        public string GioiTinh { get; set; }

        [Display(Name = "Ngày Sinh")]
        [DataType(DataType.Date)]
        public DateTime? NgaySinh { get; set; }

        [Display(Name = "Trạng Thái")]
        public int? TrangThai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DonHang> DonHangs { get; set; }
    }
}
