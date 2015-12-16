<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuperLogin.aspx.cs" Inherits="GroceryStore.Admin.SuperLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="~/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="~/JScript/bootstrap.min.js" type="text/javascript"></script>
     <script src="../JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../jQValidation.js" type="text/javascript"></script>
    <link href="managestyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            //debugger;
            $('#SuperloginForm').validate({
                rules: {
                    loginId: {
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
        });
    </script>
</head>
<body>
    <div id="SuperWrapper">
        <nav class="navbar navbar-default navbar-fixed-top" style="background-color:White;">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                  <img class="img-responsive" src="../img/OrganiKong.jpg" width="120px" height="60px"
                            alt="OrganiKong">
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                     <li><%--<a href="../ContactUs.aspx">Contact Us</a>--%></li>
                        <li><a href="../ContactUs.aspx">Contact Us</a></li>
                    </ul>
                    <%--<ul class="nav navbar-nav navbar-right">
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                            class="fa fa-user"></i>
                            <label id="lblUserName" runat="server">
                            </label>
                            <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="~/Logout.aspx"><i class="fa fa-fw fa-power-off"></i>Log Out</a> </li>
                            </ul>
                        </li>
                    </ul>--%>
                </div>
                <!--/.nav-collapse -->
            </div>
        </nav>
        <div id="SupperPageWrapper">
            <form id="SuperloginForm" runat="server">
            <div class="container">
                <div id="LoginAd" class="col-md-4 col-md-offset-1">
                    <div class="login-panel panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                Login As Administrator</h3>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <input class="form-control" placeholder="Login ID" name="loginId" type="text" autofocus="true">
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Password" name="password" type="password"
                                    value="">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                </label>
                            </div>
                            <div class="form-group">
                                <%--<input type="button" id="btnlogin" runat="server" class="btn btn-lg btn-success"
                            name="Login" />--%>
                                <asp:Button ID="btnlogin" runat="server" Text="Login" class="btn btn-lg btn-success btn-block"
                                    OnClick="btnlogin_Click" />
                            </div>
                          </div>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>
   
</body>
</html>
