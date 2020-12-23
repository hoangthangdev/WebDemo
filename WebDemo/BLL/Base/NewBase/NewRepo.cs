using Dapper;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using WebDemo.BLL.Excutecomant;
using WebDemo.Model;

namespace WebDemo.BLL.Base.NewBase
{
    public class NewRepo
    {
        public List<New> GetAll(string date, string todate)
        {
            Excute _excute = new Excute();
            var _conn = ConfigurationManager.ConnectionStrings["MainDb"].ToString();
            string commandText = "Use_GetAllNew";
            var p = new DynamicParameters();
            p.Add("@date", date);
            p.Add("@Todate", todate);
            var rs = _excute.ExecuteCommant(_conn, conn => conn.Query<New>(commandText, p, commandType: System.Data.CommandType.StoredProcedure)).ToList();
            return rs;
        }
        public New GetById(int ID)
        {

            Excute _excute = new Excute();
            var _conn = ConfigurationManager.ConnectionStrings["MainDb"].ToString();
            string commandText = "Use_GetNewById";
            var p = new DynamicParameters();
            p.Add("@ID", ID);
            var rs = _excute.ExecuteCommant(_conn, conn => conn.Query<New>(commandText, p, commandType: System.Data.CommandType.StoredProcedure));
            return rs.FirstOrDefault();
        }
        public bool InsertOrUpdate(New news)
        {
            try
            {
                Excute _excute = new Excute();
                var _conn = ConfigurationManager.ConnectionStrings["MainDb"].ToString();
                string commandText = "Use_AddDataNew";
                var p = new DynamicParameters();
                p.Add("@ID", news.ID);
                p.Add("@TransactionDate", news.TransactionDate);
                p.Add("@Descriptoion", news.Descriptoion);
                p.Add("@SendDate", news.SendDate);
                p.Add("@Receiver", news.Receiver);
                p.Add("@Location", news.Location);
                p.Add("@Finde", news.Finde);
                p.Add("@Status", news.Status);
                var rs = _excute.ExecuteCommant(_conn, conn => conn.Query<int>(commandText, p, commandType: System.Data.CommandType.StoredProcedure));
                return true;
            }
            catch (Exception)
            {

                return false;
            }
      
        }
        public bool Dalete(int ID)
        {
            try
            {
                Excute _excute = new Excute();
                var _conn = ConfigurationManager.ConnectionStrings["MainDb"].ToString();
                string commandText = "Use_DeleteNew";
                var p = new DynamicParameters();
                p.Add("@ID", ID);
               
                var rs = _excute.ExecuteCommant(_conn, conn => conn.Query<int>(commandText, p, commandType: System.Data.CommandType.StoredProcedure));
                return true;
            }
            catch (Exception)
            {

                return false;
            }

        }

    }
}