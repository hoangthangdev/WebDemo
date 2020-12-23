using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;

namespace WebDemo.Hepper
{
    public static class Core
    {
        public static string ConvertDate(DateTime dtime)
        {
            string s = dtime.ToString("yyyy-MM-dd", CultureInfo.InvariantCulture);
            return s;
        }
    }
}