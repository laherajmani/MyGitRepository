<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="GroceryStore.Logout" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>OrganiKong</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <script src="JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="JScript/bootstrap.min.js" type="text/javascript"></script>
    <link href="css/sb-admin.css" rel="stylesheet">
        <%-- <script type="text/javascript">
        //debugger;
        function myfunction() {
            var r = confirm("you have successfully logout.");
            if (r == true) 
            {
                location.href = "ShowProduct.aspx";
            }
            else {
                location.href = "Default.aspx";
            }
        }

        function VendorLogout() {
            var r = confirm("you have successfully logout.");
            if (r == true) {
                location.href = "Vendor/VendorLogin.aspx";
            }
            else {
                location.href = "Default.aspx";
            }
        }

    </script>--%>

        <%--<script type="text/javascript">
            $(document).ready(function () {
                //debugger;
                CheckingSeassion();
            });
            function CheckingSeassion() {
                $.ajax({
                    type: "POST",
                    url: "ShowProduct.aspx/LogoutCheck",
                    data: "{}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        if (response.d == 0) {
                            window.location = "ShowProduct.aspx";
                        }
                    },
                    failure: function (msg) {
                        alert(msg);
                    }
                });
            }
</script>--%>
        
        <style>
        .navbar-brand
        {
            padding: 5px;
        }
        .list-inline
        {
            margin-top: 12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="logoutWrapper">
        <div class="Container">
            <div class="row">
                <div class="col-sm-2">
                    <div id="1firstdiv">
                        <a id="A1" class="navbar-brand" runat="server" href="~/" style="height: 70px;">
                            <img class="img-responsive" src="img/OrganiKong.jpg" alt="Organikong">
                        </a>
                    </div>
                </div>
                <div class="col-sm-10">
                    <div class="ODD" style=" float:right;">
                        <ul class="list-inline">
                            <li role="presentation"><a class="fa fa-envelope" href="Contact-Us">Contact Us</a></li>
                            <li role="presentation"><a class="fa fa-link" href="#" onclick="window.open('../Vendor/VendorLogin.aspx','mywindow','width=1100,height=500');">
                                Sell With Us</a></li>
                                <li><a href="CustomerLogin.aspx"><i class="fa fa-fw fa-sign-in"></i>Login</a> </li>
                            <li id="loggedinLI" runat="server" class="dropdown" visible="false"><a href="#" class="dropdown-toggle"
                                data-toggle="dropdown"><i class="fa fa-user"></i>
                                <label id="lblUserName1" runat="server">
                                </label>
                                <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="Customer/MyProfile.aspx"><i class="fa fa-fw fa-user"></i>Profile</a>
                                    </li>
                                    <li><a href="Logout.aspx"><i class="fa fa-fw fa-power-off"></i>Log Out</a> </li>
                                </ul>
                            </li>
                            <li role="presentation" id="lisignup" runat="server"><a class="fa fa-user" href="Customer/UserRegister.aspx">
                                SignUp</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
            <div class="col-sm-12">
                        <hr style="margin-top: 5px; margin-bottom: 2px;" />
                    </div>
            </div>

            <div class="row">
            <div class="col-sm-6 col-sm-offset-3" style=" margin-top:5px;">
            <div class="panel panel-green">
                            <div class="panel-heading" style="padding: 5px 10px;">
                                You Have Successfully Logout.
                            </div>
                            <div class="panel-body" style="padding: 0 0 0 0;">
                             <a href="Default.aspx"><span style="margin-top: 8px; margin-left: 12px;">Go to OrganiKong Home</span></a>
                                <div class="img-responsive" style="background-image: url(Images/Logout_Image.jpg);
                                    background-repeat: no-repeat; background-position: center; width: 100%  !important;
                                    height: 180px  !important;">
                               </div>
                            </div>
                        </div>
            </div>
            </div>
            </div>

            <footer id="footer">
            <div class="container">
                <div class="row footer">
                    <div class="first col-md-3">
                        <h4 class="footh4">
                            About OrganiKong</h4>
                        <ul class="footul">
                             <li class="footli"><a class="foota" href="About-Us">What is OrganiKong ?</a></li>
                            <li class="footli"><a class="foota" href="Where-We-Deliver">Where We Deliver ?</a></li>
                            <li class="footli"><a class="foota" href="Contact-Us">Contact Us</a></li>
                            <li class="footli"><a class="foota" href="Invite-A-Friend">Refer A Friend</a></li>
                        </ul>
                    </div>
                    <div class="latest col-md-3">
                        <h4 class="footh4">
                          Organic</h4>
                        <ul class="footul">
                            <li class="footli"><a class="foota" href="OrganicFarming.htm">Organic Farming</a></li>
                            <li class="footli"><a class="foota" href="Eat Organic.htm">Eat Organic</a></li>
                            <li class="footli"><a class="foota" href="LegalDisclaimer.htm">Legal Disclaimer</a></li>
                        </ul>
                    </div>
                    <div class=" links col-md-3">
                        <h4 class="footh4">
                            Information</h4>
                        <ul class="footul">
                            <li class="footli"><a class="foota" href="FAQ.htm">FAQ's</a></li>
                            <li class="footli"><a class="foota" href="TermsCondition.htm">Term & Conditions</a></li>
                            <li class="footli"><a class="foota" href="Policy.htm">Return/Refund Policy</a></li>
                            <li class="footli"><a class="foota" href="OurPartners.aspx">Our Partners</a></li>
                        </ul>
                    </div>
                    <div class="social col-md-3">
                        <h4 class="footh4">
                            Connect with Us</h4>
                        <div>
                            <a href="https://twitter.com/OrganiKong" target="_blank">
                                <img title="Twitter" alt="Twitter" src="../img/twitter.png" width="35" height="35" />
                            </a><a href="https://www.facebook.com/Organikong?fref=ts" target="_blank">
                                <img title="Facebook" alt="Facebook" src="../img/facebook.png" width="35" height="35" />
                            </a><a href="https://oragnikong@gmail.com " target="_blank">
                                <img src="../img/g.png" title="google+" alt="Google plus" width="35" height="35" />
                            </a>
                        </div>
                    </div>
                </div>
                <div class="row copywrite">
                Copyright <a href="http://www.OrganiKong.com">OrganiKong Company</a>,Collaborative Business Consulting 2015
                </div>
            </div>
        </footer>
        </div>
    </form>
</body>
</html>
