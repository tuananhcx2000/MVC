//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace kiemtra.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class DienThoai
    {
        public int MaDienThoai { get; set; }
        public Nullable<int> MaThuongHieu { get; set; }
        public string TenDienThoai { get; set; }
        public Nullable<double> GiaTien { get; set; }
        public Nullable<double> ChietKhau { get; set; }
        public Nullable<bool> SPMoi { get; set; }
        public Nullable<bool> SPBanChay { get; set; }
        public string Anh { get; set; }
        public string Mota { get; set; }
    
        public virtual ThuongHieu ThuongHieu { get; set; }
    }
}
