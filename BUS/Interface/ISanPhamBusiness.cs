﻿using Data_Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS.Interface
{
   public interface ISanPhamBusiness
    {
        List<SanPham> SearchSP(int pageIndex, int pageSize, out int total, string TenSanPham, int MaTheLoai, int MaThuongHieu, string giatien);

        bool Create_SanPham(SanPham tl);
        bool Delete_SanPham(int id);
        bool Update_Info_SanPham(SanPham th);
        bool Update_SLdaban_New(int id, int sldaban);
        bool UpdateLuotXem(int maSP);

    }
}
