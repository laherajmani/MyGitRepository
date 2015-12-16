<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/myAdmin.Master" AutoEventWireup="true" CodeBehind="BulkProductUpload.aspx.cs" Inherits="GroceryStore.Admin.BulkProductUpload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="blkwrapper">
    <div id="Breadcrumbs" style=" margin-top:60px;">
        <ol class="breadcrumb">
            <li><a href=HomeAdmin.aspx class="fa fa-home">Admin Home</a></li>
            <li class="active"><i class="fa fa-file"></i>Bulk Product Upload</li>
        </ol>
    </div>

        <div id="blkPageWrapper">
            <div id="row">
                <div class="col-lg-6 col-md-offset-3">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                           Import Product Details From Excel
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <asp:Panel ID="Panel1" runat="server">
                                    <asp:FileUpload ID="bulkuploadexcel" runat="server" BackColor="White" ForeColor="#3333CC" />
                                    <br />
                                    <asp:Button ID="btnuploadexcel" runat="server" Text="Upload Excel" class="btn btn-md btn-success"
                                        OnClick="btnuploadexcel_Click" Width="120px" />
                                        <asp:Label ID="lblMessage" runat="server" Text="" />
                                </asp:Panel>
                                
                                <%--<asp:Panel ID="Panel2" runat="server">
                                    <asp:Label ID="lblfilename1" runat="server" Text="File Name" />
                                    <asp:Label ID="lblFileName" runat="server" Text="" />
                                    <asp:Label ID="lblsheet" runat="server" Text="Select Sheet" />
                                    &nbsp;&nbsp;
                                    <asp:DropDownList ID="ddlSheets" runat="server" AppendDataBoundItems="true" Width="150px">
                                    </asp:DropDownList>
                                    <asp:Button ID="btnSavefile" runat="server" Text="Save" OnClick="btnSavefile_Click" />
                                    <asp:Button ID="btnCancelfile" runat="server" Text="Cancel" OnClick="btnCancelfile_Click" />
                                </asp:Panel>--%>
                                

                               
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
</asp:Content>
