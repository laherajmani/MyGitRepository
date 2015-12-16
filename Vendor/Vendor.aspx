<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VendorMaster.Master" AutoEventWireup="true" CodeBehind="Vendor.aspx.cs" Inherits="GroceryStore.Vendor.Vendor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<title>Welcome Vendor</title>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Vendor-Wrapper">
        <div id="Subscriptonalert" class="alert alert-danger alert-dismissible" role="alert" runat="server" visible="false">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
           <strong>Warning!</strong> Purchase a Plan first to Continue<a href="Plans.aspx" class="alert-link"> Choose a Plan here</a>
        </div>
       
        <%--<div class="alert alert-info fade in">
            <a href="#" class="close" data-dismiss="alert">&times;</a> <strong>Download the Sample
                Excel file to upload the Product</strong>
            <asp:Button ID="btnDownload" runat="server" Text="Download File" OnClick="btnDownload_Click" />
        </div>--%>
        <div id="Vendor-PageWrapper">

        </div>
    </div>

</asp:Content>
