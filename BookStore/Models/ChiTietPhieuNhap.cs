namespace BookStore.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietPhieuNhap")]
    public partial class ChiTietPhieuNhap
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        [Display(Name = "Mã Phiếu Nhập")]
        public int MaPhieuNhap { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        [Display(Name = "Mã Sách")]
        public int MaSach { get; set; }

        [Display(Name = "Số Lượng Sách Nhập")]
        public int SoLuongSachNhap { get; set; }

        [Column(TypeName = "money")]
        [Display(Name = "Giá Sách Nhập")]
        public decimal GiaSachNhap { get; set; }

        [Column(TypeName = "money")]
        [Display(Name = "Thành Tiền")]
        public decimal? ThanhTien { get; set; }

        [Display(Name = "Phiếu Nhập")]
        public virtual PhieuNhap PhieuNhap { get; set; }


        public virtual Sach Sach { get; set; }
    }
}
