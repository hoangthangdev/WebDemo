using Dapper;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using WebDemo.BLL.Excutecomant;
using WebDemo.Model;

namespace WebDemo.BLL.Base.Deposit
{
    public class DepositDal
    {
        public List<DepositPayment> GetAll(string date,string todate)
        {
            Excute _excute = new Excute();
            var _conn = ConfigurationManager.ConnectionStrings["MainDb"].ToString();
            string commandText = "";
            var p = new DynamicParameters();
            p.Add("@date", date);
            p.Add("@Todate", todate);
            var rs = _excute.ExecuteCommant(_conn, conn => conn.Query<DepositPayment>(commandText, p, commandType: System.Data.CommandType.StoredProcedure)).ToList();
            return rs;
        }
        public DepositPayment GetById(int ID)
        {

            Excute _excute = new Excute();
            var _conn = ConfigurationManager.ConnectionStrings["MainDb"].ToString();
            string commandText = "Use_GetDepositById";
            var p = new DynamicParameters();
            p.Add("@ID", ID);
            var rs = _excute.ExecuteCommant(_conn, conn => conn.Query<DepositPayment>(commandText, p, commandType: System.Data.CommandType.StoredProcedure));
            return rs.FirstOrDefault();
        }
        public bool InsertOrUpdate(DepositPayment depo)
        {
            try
            {
                Excute _excute = new Excute();
                var _conn = ConfigurationManager.ConnectionStrings["MainDb"].ToString();
                string commandText = "Use_AddDataDeposit";
                var p = new DynamicParameters();
                p.Add("@ID", depo.ID);
                p.Add("@TransactionCode", depo.TransactionCode);
                p.Add("@Supplement", depo.Supplement);
                p.Add("@Status", depo.Status);
                p.Add("@ReservationType", depo.ReservationType);
                p.Add("@Reference", depo.Reference);
                p.Add("@ExpDate", depo.ExpDate);
                p.Add("@DepositAmount", depo.DepositAmount);
                p.Add("@Currency", depo.Currency);
                p.Add("@CreditCard", depo.CreditCard);
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
                string commandText = "Use_DeleteDeposit";
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