<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="GroceryStore.Cart.Login" %>
<script src="../JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="../jQValidation.js" type="text/javascript"></script>
<script src="../JScript/bootstrap.min.js" type="text/javascript"></script>
<link href="../font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
            aria-hidden="true" data-backdrop="static" data-keyboard="false">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header login_modal_header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;</button>
                        <h2 class="modal-title" id="myModalLabel">
                            Login to Your Account</h2>
                    </div>

                    <div class="modal-body login-modal">
                        <br />
                        <div class="clearfix">
                        </div>
                        <div id='social-icons-conatainer'>
                            <div class='modal-body-left'>
                                <div class="form-group">
                                    <input type="text" id="username" name="username" placeholder="Email" value="" class="form-control login-field">
                                    <i class="fa fa-user login-field-icon"></i>
                                </div>
                                <div class="form-group">
                                    <input type="password" id="login-pass" placeholder="Password" value="" class="form-control login-field"
                                        name="password">
                                    <i class="fa fa-lock login-field-icon"></i>
                                </div>
                                <input id="btnloginCkeck" type="button" class="btn btn-success modal-login-btn" value="Login" />
                                <a href="../Customer/ForgetPassword.aspx" class="btn btn-block btn-info"><i class="fa fa-unlock modal-icons">
                                </i>Forget Password ?</a>
                            </div>
                            <div class='modal-body-right'>
                                <div class="modal-social-icons">                           
                                    <asp:LinkButton ID="LinkButton1" class="btn btn-primary facebook" runat="server"
                                        PostBackUrl="#" OnClick="LinkButton1_Click" CausesValidation="false"><i class="fa fa-facebook modal-icons"></i>Sign In with Facebook</asp:LinkButton>
                                    <%--<a class="btn btn-danger google" onclick="login()"><i class="fa fa-google-plus modal-icons">
                                    </i>Sign In with Google </a>--%>
                                </div>
                            </div>
                            <div id='center-line'>
                                OR
                            </div>
                        </div>
                        <div class="clearfix">
                        </div>
                        <div class="form-group modal-register-btn">
                            <a href="../Customer/UserRegister.aspx" class="btn btn-primary"><i class="fa fa-user modal-icons">
                            </i>New User Register Here</a>
                        </div>
                    </div>
                    <div class="clearfix">
                    </div>
                    <div class="modal-footer login_modal_footer">
                    </div>
                </div>
            </div>
    </div>
<script type="text/javascript">
    $(document).ready(function () {
        //$("#dropdownMenu1").dropdown('toggle');
        //debugger;
        $("#btnloginCkeck").bind("click", function () {
            //debugger;
            $('#Form1').validate({
                rules: {
                    username: {
                        email: true,
                        required: true
                    },
                    password: {
                        required: true
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

            //            if ($('#Form1').valid()) {
            //alert("hi");
            //debugger;
            var url = window.location.href;
            $.ajax({
                type: 'POST', // define the type of HTTP verb we want to use (POST for our form)
                url: "Default.aspx/CheckUser", // the url where we want to POST
                data: '{username: "' + $('input[name=username]').val() + '",password:"' + $('input[name=password]').val() + '" }',
                contentType: "application/json; charset=utf-8",
                dataType: 'json', // what type of data do we expect back from the server
                async: true,
                encode: true,
                success: OnSuccess,
                failure: function (response) {
                    alert(response.d);
                }
            });
            // }

            function OnSuccess(res) {//debugger;
                if (res.d == 1) { //lblUserName.innerHTML = "Hello Customer";
                    $("#login-modal").modal('hide');
                    window.location.replace(url);
                }
                else {
                    alert("Please Enter the valid User Name and Password..");
                }
            }
        });
    });
    </script>
