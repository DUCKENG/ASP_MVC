﻿namespace BaiTH11.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Danhmuc")]
    public partial class Danhmuc
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Danhmuc()
        {
            Sanphams = new HashSet<Sanpham>();
        }

        [Key]
        public int MaDanhmuc { get; set; }

        [Required(ErrorMessage = ("Tên danh mục không được để trống!"))]
        [DisplayName("Tên danh mục")]
        [StringLength(50)]
        public string TenDanhmuc { get; set; }

        [DisplayName("Mô tả")]
        [StringLength(100)]
        public string Mota { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sanpham> Sanphams { get; set; }
    }
}
