<%@ Page Title="" Language="C#" MasterPageFile="~/Themes/Layout.Master" AutoEventWireup="true" CodeBehind="FormAddNew.aspx.cs" Inherits="WebDemo.Page.FormAddNew" %>


<%@ Import Namespace="WebDemo.BLL.Base.NewBase" %>
<%@ Import Namespace="WebDemo.Model" %>
<%@ Import Namespace="WebDemo.Hepper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script language="C#" runat="server">

        void SubmitBtn_Click(Object sender, EventArgs e)
        {

        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <%
        var path = Page.Request.Url.LocalPath.ToString();
        var splPath = path.Split('/');
        var id = 0;
        if (splPath[1].Equals("Edit"))
        {
            var id_route_data = Page.Request.QueryString["id"].ToString();
            id = int.Parse(id_route_data);
        }
        NewRepo repo = new NewRepo();
        var obj = repo.GetById(id);
        if (obj == null)
        {
            obj = new New();
            obj.TransactionDate = DateTime.Now;
            obj.Descriptoion = "";
            obj.SendDate = DateTime.Now;
            obj.Location = "";
            obj.Finde = "";
            obj.Receiver = "";
        }
    %>--%>
    <div class="modal" id="ModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="false">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header" style="background-color: steelblue">
                    <h5 class="modal-title" id="exampleModalLongTitle">ADD</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="from1">
                    <div class="modal-body">
                        <div class="form-row">
                            <div class="col-3">
                                <label style="margin-top: 10px">Transaction Date</label>
                            </div>
                            <div class="col-6">
                                <input type="date" class="form-control" id="txtDateTran" value="<%=Core.ConvertDate(obj.TransactionDate.Value) %>">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-3">
                                <label style="margin-top: 10px">Description</label>
                            </div>
                            <div class="col-6">
                                <input type="text" class="form-control" id="txtDis" value="<%=obj.Descriptoion %>" placeholder="Description">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-3">
                                <label style="margin-top: 10px">Send Date</label>
                            </div>
                            <div class="col-6">
                                <input type="date" class="form-control" id="txtDateSen" value="<%=Core.ConvertDate(obj.SendDate.Value) %>">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-3">
                                <label style="margin-top: 10px">Location</label>
                            </div>
                            <div class="col-6">
                                <input type="text" class="form-control" id="txtLoca" placeholder="Location" value="<%=obj.Location %>">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-3">
                                <label style="margin-top: 10px">Finder</label>
                            </div>
                            <div class="col-6">
                                <input type="text" class="form-control" id="txtFinder" placeholder="Finder" value="<%=obj.Finde %>">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-3">
                                <label style="margin-top: 10px">Receiver</label>
                            </div>
                            <div class="col-6">
                                <input type="text" class="form-control" id="txtRV" placeholder="Receiver" value="<%=obj.Receiver %>">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-3">
                                <label style="margin-top: 10px">Status</label>
                            </div>
                            <div class="col-6">
                                <select style="width: 100%; height: 30px">
                                    <option value="1" <%=obj.Status ==1?"selected":"" %>>tranfered</option>
                                    <option value="2" <%=obj.Status ==2?"selected":"" %>>Transfer</option>
                                    <option value="3" <%=obj.Status ==3?"selected":"" %>>Debt Relief</option>
                                </select>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <div class="row col-10">
                            <div class="col-2">
                                <button id="btnAdd" class="btn btn-secondary rounded-0" type="button">Save</button>
                            </div>
                            <div class="col-2">
                                <button type="button" class="btn btn-secondary refresh">
                                    Refresh
                                </button>
                            </div>
                        </div>
                        <div class="col-2">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal" id="close">
                                Close
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <script>
        $(document).ready(function () {
            $('#ModalCenter').modal('show');
            $('#ModalCenter').modal({ backdrop: 'static', keyboard: false });
            $('#close').click(function () {
                window.location.href = "http://localhost:2002";
            })
            $('#btnAdd').click(function () {

                var news = {};
                news.ID = "";
                news.TransactionDate = "";
                news.Descriptoion = "";
                news.SendDate = "";
                news.Location = "";
                news.Finde = "";
                news.Receiver = "";
                news.Status = "";
                $.ajax({
                    url: 'Page/FormAddNew.aspx/AddData',
                    method: 'post',
                    data: '{news: ' + JSON.stringify(news) + '}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        //getAllEmployees();
                        alert( data )
                    },
                    error: function (err) {
                        console.log(err);
                    }
                });
            })

        })
    </script>
</asp:Content>
