﻿using System.Web;
using System.Web.Mvc;

namespace BAI_TH_15._1
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
