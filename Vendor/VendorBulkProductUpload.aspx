<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VendorMaster.Master" AutoEventWireup="true" CodeBehind="VendorBulkProductUpload.aspx.cs" Inherits="GroceryStore.Vendor.VendorBulkProductUpload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="wrapper">

    <div id="page-wrapper">
        <div id="row">
            <div class="col-lg-6 col-md-offset-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        Import Product Details From Excel
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <asp:Panel ID="Panel1" runat="server">
                                <asp:FileUpload ID="fileupload" runat="server" BackColor="White" ForeColor="#3333CC" />
                                <br/>
                                <asp:Button ID="btnuploadexcel" runat="server" Text="Upload Excel" OnClick = "Upload" class="btn btn-md btn-success"
                                     Width="120px" /><%--OnClick = "Upload"--%>
                                <asp:Label ID="lblMessage" runat="server" Text="" />
                            </asp:Panel>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
</asp:Content>
