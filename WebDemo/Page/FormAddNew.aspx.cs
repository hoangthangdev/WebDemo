using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDemo.BLL.Base.NewBase;

namespace WebDemo.Page
{
    public partial class FormAddNew : System.Web.UI.Page
    {
        public WebDemo.Model.New obj;
        protected void Page_Load(object sender, EventArgs e)
        {
            var path = Page.Request.Url.LocalPath.ToString();
            var splPath = path.Split('/');
            var id = 0;
            if (splPath[1].Equals("Edit"))
            {
                var id_route_data = Page.Request.QueryString["id"].ToString();
                id = int.Parse(id_route_data);
            }
            NewRepo repo = new NewRepo();
            obj = repo.GetById(id);
            if (obj == null)
            {
                obj = new WebDemo.Model.New();
                obj.ID = 0;
                obj.TransactionDate = DateTime.Now;
                obj.Descriptoion = "";
                obj.SendDate = DateTime.Now;
                obj.Location = "";
                obj.Finde = "";
                obj.Receiver = "";
            }
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string AddData(ParamNew news)
        {
            return "123haha";
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string Test(string news,string lala)
        {
            return news+"jjjj";
        }
        public class ParamNew
        {
            public string ID { get; set; }
            public string TransactionDate { get; set; }
            public string Descriptoion { get; set; }
            public string SendDate { get; set; }
            public string Location { get; set; }
            public string Finde { get; set; }
            public string Receiver { get; set; }
            public string Status { get; set; }
           
        }
    }
}