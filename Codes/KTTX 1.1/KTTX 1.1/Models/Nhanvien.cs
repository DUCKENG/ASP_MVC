﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KTTX_1._1.Models
{
    public class Nhanvien
    {
        public string manv { get; set; }
        public string hoten { get; set; }
        public string diachi { get; set; }
        public int songaylam { get; set; }
        public double luongngay { get; set; }
        public double tienluong { get; set; }
        
        public Nhanvien() { }
        public Nhanvien(string manv, string hoten, string diachi, int songaylam, double luongngay)
        {
            this.manv = manv;
            this.hoten = hoten;
            this.diachi = diachi;
            this.songaylam = songaylam;
            this.luongngay = luongngay;
            this.tienluong = this.songaylam * this.luongngay;
        }
    }
}