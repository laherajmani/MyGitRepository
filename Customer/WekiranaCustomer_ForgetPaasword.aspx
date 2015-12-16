<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="WekiranaCustomer_ForgetPaasword.aspx.cs" Inherits="GroceryStore.Customer.WekiranaCustomer_ForgetPaasword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ErrorMessage="Please enter your Email"
                                        ControlToValidate="txtemail" runat="server">
                                    </asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ForeColor="Red"
                                     Display="Dynamic" ErrorMessage="Please enter valid email" 
                                     ValidationExpression="^\s*(([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5}){1,25})+([;.](([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5}){1,25})+)*\s*$">
                                    </asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="btnSubmit" runat="server" class="btn btn-sm btn-success" Text="Submit"
                                OnClick="btnSubmit_Click" />
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
