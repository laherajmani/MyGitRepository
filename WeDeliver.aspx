<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WeDeliver.aspx.cs" Inherits="GroceryStore.WeDeliver" %>

<!DOCTYPE html>

<html>
<head runat="server">
     <title>Where We Deliver</title>
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
  
    <meta name="google-site-verification" content="l165N2hIntV_IUrGDmKdwNxlWwVKh42BF0uffOdGnRw" />
    <meta name="msvalidate.01" content="39DDBAAB22834C4CB9558562721F8A43" />

    <script src="../JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../JScript/bootstrap.min.js" type="text/javascript"></script>
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />     
    <link href="../font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" /> 
     <link href="ProductStyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css"> 
         .navbar-brand
   {
       padding:5px;
   }
   .list-inline
   {
       margin-top:12px;
   }

.transition {
    -webkit-transform: scale(3); 
    -moz-transform: scale(3);
    -o-transform: scale(3);
    transform: scale(3);
}
.panel panel-default {
  color: #333;
  background-color: #f5f5f5;
  border-color: #ddd;
    </style>
   
   <script type="text/javaScript">

       $(document).ready(function () {
           $(' .img-responsive mymap').hover(function () {
               $(this).addClass('transition');

           }, function () {
               $(this).removeClass('transition');
           });
       });
</script>

<script type="text/javascript">
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
      m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-69363105-1', 'auto');
    ga('send', 'pageview');
 
    </script>

</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
        <div id="deliver-Wrapper" style="margin-top: 3%">

            <div class="row">
                <div class="col-sm-2">
                    <div id="firstdiv">
                        <a id="A1" class="navbar-brand" runat="server" href="Default.aspx" style="padding: 0;">
                            <img class="img-responsive" src="img/OrganiKong.jpg" width="120px" height="60px"
                                alt="OrganiKong">
                        </a>
                    </div>
                </div>
                <div class="col-sm-10">
                    <div style=" float:right;">
                        <ul class="list-inline">
                            <li role="presentation"><a class="fa fa-envelope" href="ContactUs.aspx">Contact Us</a></li>
                            <li role="presentation"><a class="fa fa-link" href="Vendor/VendorLogin.aspx">Sell With
                                Us</a></li>
                            <li id="loginfromdeliver" runat="server" role="presentation"><a class="fa fa-sign-in"
                                href="CustomerLogin.aspx">Login</a></li>
                            <li id="loggedinLI" runat="server" class="dropdown" visible="false"><a href="#" class="dropdown-toggle"
                                data-toggle="dropdown"><i class="fa fa-user"></i>
                                <label id="lblUserName" runat="server">
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
            <hr style="margin-top: 5px; margin-bottom: 2px;" />
            </div>

            <div id="deliver-pagewrapper" style="margin-top: 3%">

            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>
                                    Where We Deliver</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="col-sm-4">
                                <img class="img-responsive mymap" src="img/south-delhi.jpg" width="125px" height="80px"
                                    alt="Wekirana" />
                                <h4>
                                    South Delhi
                                </h4>
                            </div>
                            <div class="col-sm-8">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                    <tr class="info">
                                        <td>
                                            10006
                                        </td>
                                        <td>
                                            118378
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            10006
                                        </td>
                                        <td>
                                            118378
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                    </tr>
                                    <tr class="active">
                                        <td>
                                            10006
                                        </td>
                                        <td>
                                            118378
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            10006
                                        </td>
                                        <td>
                                            118378
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                    </tr>
                                </table>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="col-sm-4">
                                <img class="img-responsive mymap" src="img/east delhi.png" width="125px" height="80px"
                                    alt="Wekirana" /><h4>
                                        East Delhi
                                    </h4>
                            </div>
                            <div class="col-sm-8">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <tr class="info">
                                            <td>
                                                10006
                                            </td>
                                            <td>
                                                118378
                                            </td>
                                            <td>
                                                123456
                                            </td>
                                            <td>
                                                123456
                                            </td>
                                            <td>
                                                123456
                                            </td>
                                            <td>
                                                10006
                                            </td>
                                            <td>
                                                118378
                                            </td>
                                            <td>
                                                123456
                                            </td>
                                            <td>
                                                123456
                                            </td>
                                            <td>
                                                123456
                                            </td>
                                        </tr>
                                        <tr class="active">
                                            <td>
                                                10006
                                            </td>
                                            <td>
                                                118378
                                            </td>
                                            <td>
                                                123456
                                            </td>
                                            <td>
                                                123456
                                            </td>
                                            <td>
                                                123456
                                            </td>
                                            <td>
                                                10006
                                            </td>
                                            <td>
                                                118378
                                            </td>
                                            <td>
                                                123456
                                            </td>
                                            <td>
                                                123456
                                            </td>
                                            <td>
                                                123456
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
                            <li class="footli">
                                <a href="http://blog.organikong.com" onclick="window.open(this.href); return false;" onkeypress="window.open(this.href); return false;">Organikong Blog</a>
                                </li>
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
</body>
</html>
<%--<div class="panel-body">
                        <div class="col-sm-4">
                            <img class="img-responsive" src="Images/gurgaon.png" width="125px" height="80px"
                                alt="Wekirana" /><h4>
                                    Gurgoan</h4>
                            <div class="col-sm-8">
                                <table class="table table-bordered">
                                    <tr class="info">
                                        <td>
                                            10006
                                        </td>
                                        <td>
                                            1y8378
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            10006
                                        </td>
                                        <td>
                                            1y8378
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                    </tr>
                                    <tr class="active">
                                        <td>
                                            10006
                                        </td>
                                        <td>
                                            1y8378
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            10006
                                        </td>
                                        <td>
                                            1y8378
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                        <td>
                                            123456
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>--%>