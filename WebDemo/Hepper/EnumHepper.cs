using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebDemo.Hepper
{
    public class EnumHepper
    {
        public static string GetNameStatus(int ss)
        {
            var status = ss;
            var i_tag = "";
            switch (status)
            {
                case (int)EnumNew.Tranfered:
                    i_tag = "Tranfered";
                    break;
                case (int)EnumNew.Transfer:
                    i_tag = "Transfer";
                    break;
                case (int)EnumNew.DebtRelief:
                    i_tag = "Debt Relief";
                    break;
            }
            return i_tag;
        }
    }
}