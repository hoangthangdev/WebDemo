<%@ Page Title="" Language="C#" MasterPageFile="~/Themes/Layout.Master" AutoEventWireup="true" CodeBehind="FormAddDeposit.aspx.cs" Inherits="WebDemo.Page.FormAddDeposit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="modal" id="ModalCenterdepit" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="false">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header" style="background-color: steelblue">
                    <h5 class="modal-title" id="exampleModalLongTitle"</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="col-1">
                        <button type="button" id="btsave" onclick="SubmitBtn_Click" class="btn btn-primary save"  runat="server">OK</button>
                    </div>
                    <form>
                        <div class="form-row">
                            <div class="col-3">
                                <label style="margin-top: 10px">Transaction code</label>
                            </div>
                            <div class="col-6">
                                <input type="text" class="form-control" id="txtDateTran" placeholder="Transaction code">
                            </div>
                        </div>
                         <div class="form-row">
                            <div class="col-3">
                                <label style="margin-top: 10px">Currency</label>
                            </div>
                            <div class="col-6">

                                <select >
                                    <option value="1">VND</option>
                                    <option value="2">USD</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-3">
                                <label style="margin-top: 10px">Deposit amount</label>
                            </div>
                            <div class="col-6">
                                <input type="text" class="form-control" id="txtdpa" value="" placeholder="Deposit amount">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-3">
                                <label style="margin-top: 10px">Reference</label>
                            </div>
                            <div class="col-6">
                                <input type="text" class="form-control" id="txtrfr" placeholder="Reference" value="">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-3">
                                <label style="margin-top: 10px">Supplement</label>
                            </div>
                            <div class="col-6">
                                <input type="text" class="form-control" id="txtslm" placeholder="Supplement" value="">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-3">
                                <label style="margin-top: 10px">Credit Card No</label>
                            </div>
                            <div class="col-6">
                                <input type="text" class="form-control" id="txtcrd" placeholder="Credit Card No" value="">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-3">
                                <label style="margin-top: 10px">Exp Date</label>
                            </div>
                            <div class="col-6">
                                <input type="date" class="form-control" id="txtexp" value="">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="col-3">
                                <label style="margin-top: 10px">Reservation Type</label>
                            </div>
                            <div class="col-6">
                                <input type="text" class="form-control" id="txtrvt" placeholder="Reservation" value="">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <script>
        $(document).ready(function () {
            $('#ModalCenterdepit').modal('show');
            $('#ModalCenterdepit').modal({ backdrop: 'static', keyboard: false });
        })
    </script>
</asp:Content>
