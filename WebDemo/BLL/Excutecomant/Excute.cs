using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebDemo.BLL.Excutecomant
{
    public class Excute
    {
        public T ExecuteCommant<T>(string connectSt, Func<SqlConnection, T> task)
        {
            using (var conn = new SqlConnection(connectSt))
            {
                conn.Open();
                var a = task(conn);
                conn.Close();
                return a;
            }
        }
    }
}