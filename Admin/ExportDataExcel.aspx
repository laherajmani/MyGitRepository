<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/myAdmin.Master" AutoEventWireup="true" CodeBehind="ExportDataExcel.aspx.cs" Inherits="GroceryStore.Admin.ExportDataExcel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Button ID="btnExport" runat="server" Text="Export" OnClick="ExportExcel"/>


</asp:Content>
