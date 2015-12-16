<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RecoverPassword.aspx.cs" Inherits="GroceryStore.RecoverPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">



</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div id="forget-w">

    <div id="forget-pw">
        <div class="container-fluid">
            <div class="row-fluid">
            <div class="col-sm-12">
            
            <div class="row-fluid">
            <div class="col-sm-6 offset-1">
            
            <div id="password-panel" style=" margin-top:10%; margin-bottom:10%;">
            
                <div class="panel panel-primary">
                <div class="panel-heading">Enter Email to Recover your Password.</div>
                    <div class="panel-body">
                                   
                        <div class="form-group">
                            <asp:TextBox ID="txtemail" placeholder="OrganiKong@OrganiKong.com" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="btnSubmit" runat="server" class="btn btn-sm btn-success" 
                                Text="Submit" onclick="btnSubmit_Click1"/>
                            <asp:Button ID="btnRecover" runat="server" Text="Send" 
                                onclick="btnRecover_Click" />
                            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">LinkButton</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            </div>
            </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
