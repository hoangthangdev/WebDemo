<%@ Page Title="" Language="C#" MasterPageFile="~/Themes/Layout.Master" AutoEventWireup="true" CodeBehind="New.aspx.cs" Inherits="WebDemo.Page.New" %>

<%@ Import Namespace="WebDemo.BLL.Base.NewBase" %>
<%@ Import Namespace="WebDemo.Hepper" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%
        var Date = Page.Request.QueryString["date"];
        var Todate = Page.Request.QueryString["todate"];
        NewRepo repo = new NewRepo();
        var data = repo.GetAll(Date, Todate);
    %>

    <section>
        <div class="text-center">
            <h1>Phần mềm demo</h1>
        </div>
        <div class="ribbon"></div>
        <div class="tableData">
            <div class="col-lg-12 col-sm-12">
                <div class="row">
                    <div class="col-lg-3 mlinput">
                        <label>Start date</label>
                        <input type="date" name="date" value="<%=Date %>"" />
                    </div>
                    <div class="col-lg-3 mlinput">
                        <label>To date</label>
                        <input type="date" name="todate" value="<%=Todate %>" />
                        <div class="btn btn-success"id="view"><span>view</span></div>
                    </div>
                    <div class="col-lg-3">
                        <div class="btn btn-success" id="add"><span>ADD New</span></div>
                        <div class="btn btn-danger"><span>Remove</span></div>
                    </div>
                </div>
            </div>
            <div class="">
                <table class="table table-bordered">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Transaction Date</th>
                            <th scope="col">Description</th>
                            <th scope="col">Send Date</th>
                            <th scope="col">Finde</th>
                            <th scope="col">Receiver</th>
                            <th scope="col">Status</th>
                            <th scope="col">#</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%if (data != null)
                            {
                                foreach (var item in data)
                                {%>
                        <tr>
                            <td class="align-center width-50">
                                <input type="checkbox" class="chkItem no-margin" name="rbId" />

                            </td>
                            <td><%=Core.ConvertDate(item.TransactionDate.Value) %></td>
                            <td><%=item.Descriptoion %></td>
                            <td><%=Core.ConvertDate(item.SendDate.Value) %></td>
                            <td><%=item.Finde %></td>
                            <td><%=item.Receiver %></td>
                            <td><%=EnumHepper.GetNameStatus(item.Status.Value) %></td>
                            <td>
                                <button class="btn btn-warning edit" data-id="<%=item.ID %>">edit</button>
                            </td>
                        </tr>
                        <%}
                            }%>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <script src="../Themes/js/New.js"></script>
    <script>
        
    </script>
</asp:Content>
