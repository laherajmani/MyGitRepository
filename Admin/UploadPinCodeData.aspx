<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/myAdmin.Master" AutoEventWireup="true" CodeBehind="UploadPinCodeData.aspx.cs" Inherits="GroceryStore.Admin.UploadPinCodeData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="Pincod-Wrapper">

<div id="Pincode-PageWrapper">
    <div id="container">
        <div id="row">
           <div class="col-md-6 col-md-offset-1">
           <div class="panel panel-primary">
                        <div class="panel-heading">
                           Import PinCode Details From Excel
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <asp:Panel ID="Panel1" runat="server">
                                    <asp:FileUpload ID="bulkuploadPincodeexcel" runat="server" BackColor="White" ForeColor="#3333CC" />
                                    <br />
                                    <asp:Button ID="btnuploadPincodeExcel" runat="server" Text="Upload Excel" class="btn btn-md btn-success"
                                        Width="120px" onclick="btnuploadPincodeExcel_Click" />
                                    <asp:Label ID="lblMessage" runat="server" Text="" />
                                </asp:Panel>
                            </div>
                        </div>
                        <%--<div class="panel-footer">
                        Panel Footer
                    </div>--%>
                    </div>
           </div>  
        </div>
    </div>
</div>

</div>
</asp:Content>
