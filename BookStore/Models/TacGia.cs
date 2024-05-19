namespace BookStore.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TacGia")]
    public partial class TacGia
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TacGia()
        {
            ThamGias = new HashSet<ThamGia>();
        }

        [Key]
        [Display(Name = "Mã Tác Giả")]
        public int MaTacGia { get; set; }

        [StringLength(100)]
        [Display(Name = "Tên Tác Giả")]
        public string TenTacGia { get; set; }

        [StringLength(200)]
        [Display(Name = "Địa Chỉ")]
        public string Diachi { get; set; }

        [StringLength(100)]
        [Display(Name = "Tiểu Sử")]
        public string TieuSu { get; set; }

        [StringLength(12)]
        [Display(Name = "Điện Thoại")]
        public string DienThoai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ThamGia> ThamGias { get; set; }
    }
}
