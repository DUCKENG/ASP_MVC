﻿using System.Web;
using System.Web.Mvc;

namespace Bai3._1_ASP_MVC
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
