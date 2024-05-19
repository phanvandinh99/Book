namespace BookStore.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DonHang")]
    public partial class DonHang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DonHang()
        {
            ChiTietDonHangs = new HashSet<ChiTietDonHang>();
        }

        [Key]
        [Display(Name = "Mã Đơn Hàng")]
        public int MaDonHang { get; set; }

        [Display(Name = "Đã Thanh Toán")]
        public int? DaThanhToan { get; set; }

        [Display(Name = "Tình Trạng Giao Hàng")]
        public int? TinhTrangGiaoHang { get; set; }

        [Column(TypeName = "date")]
        [Display(Name = "Ngày Đặt")]
        public DateTime? NgayDat { get; set; }

        [Column(TypeName = "date")]
        [Display(Name = "Ngày Giao")]
        public DateTime? NgayGiao { get; set; }

        [Display(Name = "Mã Khách Hàng")]
        public int? MaKhachHang { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietDonHang> ChiTietDonHangs { get; set; }

        public virtual KhachHang KhachHang { get; set; }
    }
}
