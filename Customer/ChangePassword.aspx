<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="GroceryStore.Customer.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="Pwd-wrapper">
        <div id="Pwd-Pagewrapper">
            <div class="container">
                <div class="row">
                    <hr style="margin-bottom: 1px;" />
                </div>
                <div class="row">
                    <div id="Breadcrumbs">
                        <ol class="breadcrumb">
                            <li><a href="../Default.aspx" class="fa fa-home">OrganiKong-Home</a></li>
                            <li><a href="MyProfile.aspx" class="fa fa-user">My Profile</a></li>
                            <li class="active"><i class="fa fa-user"></i>Change Password</li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            Change Password
                        </div>
                        <div class="panel-body">
                            <div>
                                <table style="width: 30%;" class=" table-responsive">
                                    <tr>
                                        <td>
                                            <label class="form-group" for="txtold">
                                                Old Password</label>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <asp:TextBox ID="txtold" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label class="form-group">
                                                New Password</label>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <asp:TextBox ID="txtNewPwd" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-group">
                                                <label class="form-group" for="confirmPwd">
                                                    Confirmed Password</label>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <asp:TextBox ID="txtConfirm" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <div class="form-group" style="text-align: center;">
                                                <asp:Button ID="btnchangePwd" class="btn btn-sm btn-success" runat="server" Text="Save"
                                                    OnClientClick="return compare();" OnClick="btnchangePwd_Click" />
                                                <asp:Button ID="btnCancelPwd" class="btn btn-sm btn-danger" runat="server" Text="Reset" />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="alert alert-info fade in" id="msgDiv" runat="server" visible="false">
                                                <strong>
                                                    <asp:Label ID="lblMSG" runat="server"></asp:Label></strong>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        $(document).ready(function() {
        //debugger;
            $("#customerMaster").validate({
                rules: {
                    <%=txtold.UniqueID %>: 
                    {
                        required: true
                    },
                     <%=txtNewPwd.UniqueID %>: 
                     {                       
                        required: true,
                        maxlength: 10
                    },
                    <%=txtConfirm.UniqueID %>: 
                    {
                      required: true,
                      maxlength: 10            
                    }
                },

                 highlight: function (element) {
                $(element).closest('.form-group').addClass('has-error');
            },
            unhighlight: function (element) {
                $(element).closest('.form-group').removeClass('has-error');
            },
            errorElement: 'span',
            errorClass: 'help-block',
            errorPlacement: function (error, element) {
                if (element.parent('.input-group').length) {
                    error.insertAfter(element.parent());
                } else {
                    error.insertAfter(element);
                }
            }
          });
       });
    </script>
    <script type="text/javascript">
    function compare() {
          //debugger;
          var pass = document.getElementById('<%=txtNewPwd.ClientID %>').value;
          var confirmpass = document.getElementById('<%=txtConfirm.ClientID %>').value;
            var Password = document.getElementById('<%=txtNewPwd.ClientID %>').value;
            var valid = pass == confirmpass;
            if (Password == "") {
                alert("Please Enter Password");
                return false;
            }
            if (!valid) {
                alert("Password do not match");
                $("#txtConfirm.ClientID")[0].value = "";
                return false;
            }
            else {
                return true;
            }
        }
        </script>
    <script type="text/javascript">
        $(document).ready(function () {
            debugger;
            //            $('#msgDiv').delay(1000).hide();
            setTimeout("$('msgDiv').hide();", 1000);
        });
    </script>
</asp:Content>
