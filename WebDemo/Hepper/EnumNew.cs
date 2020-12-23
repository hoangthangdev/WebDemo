using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace WebDemo.Hepper
{
    public enum EnumNew
    {
        [Description("tranfered")]
        Tranfered = 1,
        [Description("transfer")]
        Transfer = 2,
        [Description("debt relief")]
        DebtRelief = 3,
    }
}