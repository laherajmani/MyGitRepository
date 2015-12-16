<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerLogin.aspx.cs" Inherits="GroceryStore.CustomerLogin" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, minimal-ui">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-barstyle" content="black-translucent">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="keyword" content="OrganiKong,Online organic grocery shopping delhi,home delivery,online organic store,Organic stores,Shopping at home,Departmental store,Bazaar,gluten free products " />
    <meta name="description" content="OrganiKong,Online organic grocery shopping made easy. We provide daily grocery products such as dry fruits, personal care products, snacks, rice, organic dals and pulses with free home delivery option at the best price">
    <meta name="author" content="OrganiKong.com">
    <!--FACEBOOK-->
    <meta property="og:title" content="About OrganicKong">
    <meta property="og:site_name" content="OrganiKong">
    <meta property="og:url" content="http://www.OrganiKong.com">
    <meta property="og:description" content="OrganiKong,Online organic grocery shopping made easy. We provide daily grocery products such as dry fruits, personal care products, snacks, rice, organic dals and pulses with free home delivery option at the best price">
    <meta property="og:image" content="http://www.OrganiKong.com/Images/Wekirana_Customer.jpg">
    <meta property="og:type" content="website">
    <meta property="og:locale" content="en_US">
    <!--TWITTER-->
    <meta property="twitter:card" content="summary">
    <meta property="twitter:title" content="Organic is Health">
    <meta property="twitter:description" content="OrganiKong,Online organic grocery shopping made easy. We provide daily grocery products such as dry fruits, personal care products, snacks, rice, organic dals and pulses with free home delivery option at the best price">
    <meta property="twitter:creator" content="@organikong">
    <meta property="twitter:url" content="http://www.organikong.com">
    <meta property="twitter:image" content="Images/Wekirana_Twitter.jpg">
    <meta property="revisit-after" content="7 days" />
    <link rel="apple-touch-icon" sizes="57x57" href="../Icons/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="../Icons/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="../Icons/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="../Icons/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="../Icons/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="../Icons/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="../Icons/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="../Icons/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="../Icons/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="../Icons/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="../Icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="../Icons/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="../Icons/favicon-16x16.png">
    <link rel="manifest" href="../Icons/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="../Icons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <title>OrganiKong ,NCR's own online organic grocery shopping store</title>
    <meta name="google-site-verification" content="l165N2hIntV_IUrGDmKdwNxlWwVKh42BF0uffOdGnRw" />
    <meta name="msvalidate.01" content="39DDBAAB22834C4CB9558562721F8A43" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="Customer/customer.css" rel="stylesheet" type="text/css" />
    <script src="JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="JScript/bootstrap.min.js" type="text/javascript"></script>
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <script src="jQValidation.js" type="text/javascript"></script>
    <%--<script type="text/javascript">
        $(document).ready(function () {
            $('#loginCustomerForm').validate({
                rules: {
                    Email: {
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
                    }
                    else {
                        error.insertAfter(element);
                    }
                }
            });
            $('#btnlogin').click(function () {
                $("#loginCustomerForm").valid();
            });

            if ($('#Form1').valid()) {
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
            }
        });
    </script>--%>

    <script type="text/javascript">
        $(document).ready(function () {
            //$("#dropdownMenu1").dropdown('toggle');
            //debugger;
            $("#btnloginCkeck").bind("click", function () {
                debugger;
                var referrer = document.referrer;
                $('#loginCustomerForm').validate({
                    rules: {
                        Email: {
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

                if ($('#loginCustomerForm').valid()) {
                //debugger;
                $.ajax({
                    type: 'POST', // define the type of HTTP verb we want to use (POST for our form)
                    url: "Default.aspx/CheckUser", // the url where we want to POST
                    data: '{username: "' + $('input[name=Email]').val() + '",password:"' + $('input[name=password]').val() + '" }',
                    contentType: "application/json; charset=utf-8",
                    dataType: 'json', // what type of data do we expect back from the server
                    async: true,
                    encode: true,
                    success: OnSuccess,
                    failure: function (response) {
                        alert(response.d);
                    }
                });
                }
                function OnSuccess(res) {//debugger;
                    if (res.d == 1) { //lblUserName.innerHTML = "Hello Customer";
                       // $("#login-modal").modal('hide');
                        window.location.replace(referrer);
                    }
                    else {
                        alert("Please Enter the valid User Name and Password..");
                    }
                }
            });
        });
    </script>
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default" role="navigation" style=" background-color:White;">
             <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                    aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <a id="A1" class="navbar-brand" runat="server" href="~/" style="padding: 0;">
                    <img class="img-responsive" src="../img/OrganiKong.jpg"
                        alt="OrganiKong.Com" width="100px" height=""></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">                   
                </ul>              
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"></a></li>
                    <li class="active"><a><i class="fa fa-fw fa-lock"></i>Customer Login</a></li>
                    <li><a href="../About-Us"><i class="fa fa-fw fa-info-circle"></i>About Us</a></li>
                    <li><a href="../Contact-Us"><i class="fa fa-fw fa-envelope"></i>Contact Us</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
            <!-- /.container-fluid -->
        </nav>
        <div id="Pagewrapper">
            <form id="loginCustomerForm" runat="server">
            <div class="container">
                <div class="row">
                    <div id="SignInD" class="col-sm-4 col-sm-offset-0">
                        <div class="login-panel panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    Login As Customer</h3>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <input class="form-control" placeholder="E-mail" name="Email" type="email" autofocus="true" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" type="password"
                                        value="" />
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me" />Remember Me
                                    </label>
                                </div>
                                <div class="form-group">
                                        <input id="btnloginCkeck" type="button" class="btn btn-success btn-block modal-login-btn" value="Login" />
                                </div>
                                <div class="form-group">
                                 <asp:LinkButton ID="LinkButton1" class="btn btn-primary facebook" runat="server"
                                        PostBackUrl="#" OnClick="LinkButton1_Click" CausesValidation="false"><i class="fa fa-facebook modal-icons"></i>Sign In with Facebook</asp:LinkButton>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="Imgbanner" class="col-sm-8 col-sm-offset-0">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3>
                                New Customer Registration
                            </h3>
                            <h4>
                              &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Customer/UserRegister.aspx"
                                    ForeColor="White">Click Here!!</asp:HyperLink></h4>
                        </div>
                        <div class="panel-body" style=" height:15%">
                            <img class="img-responsive" src="Images/Organic-customer-Reg.jpg" width="100%" height="10%" alt="OrganiKong-Customer" />
                        </div>
                    </div>
                </div>
                </div>

                <div class="row">
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
                            </a><a href="https://www.facebook.com/wekirana?fref=ts" target="_blank">
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
        </div>
    </div>
</body>
</html>
