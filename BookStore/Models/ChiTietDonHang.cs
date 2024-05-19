namespace BookStore.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietDonHang")]
    public partial class ChiTietDonHang
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        [Display(Name = "Mã Đơn Hàng")]
        public int MaDonHang { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        [Display(Name = "Mã Sách")]
        public int MaSach { get; set; }

        [Display(Name = "Số Lượng")]
        public int? SoLuong { get; set; }

        [Display(Name = "Đơn Giá")]
        public decimal? DonGia { get; set; }

        [Display(Name = "Đơn Hàng")]
        public virtual DonHang DonHang { get; set; }

        [Display(Name = "Sách")]
        public virtual Sach Sach { get; set; }
    }
}
