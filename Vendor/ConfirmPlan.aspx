<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VendorMaster.Master" AutoEventWireup="true" CodeBehind="ConfirmPlan.aspx.cs" Inherits="GroceryStore.Vendor.ConfirmPlan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="VWrapper">
        <div id="VPageWrapper">
            <div class="Container">
                <div class="row">
                    <div class="alert alert-success">
                        <h4>
                            Order Status</h4>
                        <asp:Label ID="lblstatus" runat="server"></asp:Label>
                    </div>
                    <div class=" panel panel-info">
                        <div class="panel-heading">
                            <h4>
                                Order Summery</h4>
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <tr class="form-group">
                                    <td>
                                        Order Date
                                    </td>
                                    <td>
                                        <asp:Label ID="lblOrderDate" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr class="form-group">
                                    <td>
                                        Amount
                                    </td>
                                    <td>
                                        <asp:Label ID="Amount" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr class="form-group">
                                    <td>
                                        Contact No
                                    </td>
                                    <td>
                                        <asp:Label ID="lblContact" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr class="form-group">
                                    <td>
                                        Bank Name
                                    </td>
                                    <td>
                                        <asp:Label ID="lblbank" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr class="form-group">
                                    <td>
                                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<%--<div class="row">
                    <div id="col-sm-8 col-md-offset-0">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                Plan Confirmation Message</div>
                            <div class="panel-body">

                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>


                            
 
 </div>
  </div>
   </div>
   </div>--%>
