<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OurPartners.aspx.cs" Inherits="GroceryStore.OurPartnre" %>

<!DOCTYPE html >

<html>
<head runat="server">
    <title>Organikong Partners</title>
       <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, minimal-ui">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-barstyle" content="black-translucent">
    <%--<link rel="apple-touch-icon" href="icon-152.png">--%>
    <!-- for Chrome on Android, multi-resolution icon of 196x196 -->
    <meta name="mobile-web-app-capable" content="yes">
    <%--<link rel="shortcut icon" sizes="196x196" href="icon-196.png">--%>

    <meta name="keyword" content="Organic site,organic stores,organic food home delivery,online organic store,gluten free products " />
    <meta name="description" content="OrganiKong,Online organic grocery shopping made easy. We provide daily grocery products such as dry fruits, personal care products, snacks, rice, organic dals and pulses with free home delivery option at the best price">
    <meta name="author" content="OrganiKong.com">
    <!--FACEBOOK-->
    <meta property="og:title" content="Organic is Health">
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
  
    <meta name="google-site-verification" content="l165N2hIntV_IUrGDmKdwNxlWwVKh42BF0uffOdGnRw" />
    <meta name="msvalidate.01" content="39DDBAAB22834C4CB9558562721F8A43" />

    
    <script src="../JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../JScript/bootstrap.min.js" type="text/javascript"></script>
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />     
    <link href="../font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" /> 
    <link href="ProductStyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    .panel-body
    {
        margin-top:120px;
        margin-left:250px;
        margin-right:250px;
        }
        .img
        {
          
   padding:1px;
   border:4px solid #021a40;
   border-radius:5px;
   background-color:#b0c4de;
            }
            .img:hover
            {
     -ms-transform: rotate(7deg); /* IE 9 */
    -webkit-transform: rotate(7deg); /* Chrome, Safari, Opera */
    transform: rotate(7deg);
                }
            #tbl2
            {
                margin-top:100px;
                }
   </style>
</head>
<body>
    
 <form id="form2" runat="server">
    <div class="container" >
     <div class="row">
    <br />
    </div>

    <div class="row">
            <div class="col-md-2">
                <div id="firstdiv">
                    <a id="A1" class="navbar-brand" runat="server" href="Default.aspx" style="padding: 0;">
                      <img class="img-responsive" src="img/OrganiKong.jpg" alt="OrganiKong">
                    </a>
                </div>
            </div>
        <div class="col-md-10">
            <div style="float: right;">
                <ul class="list-inline">
                    <li role="presentation"><a class="fa fa-envelope" href="Contact-Us">Contact Us</a></li>
                    <li role="presentation"><a class="fa fa-link" href="Vendor/VendorLogin.aspx">Sell With
                        Us</a></li>
                    <li role="presentation"><a class="fa fa-sign-in" href="CustomerLogin.aspx">Login</a></li>
                    <li role="presentation" id="lisignup" runat="server"><a class="fa fa-user glyphicon-plus-sign"
                        href="Customer/UserRegister.aspx">SignUp</a></li>
                    
                </ul>
            </div>
        </div>
          
        </div>
          <div class="row">
        <hr style="margin-top: 20px;" />
    </div>
    <div class="row">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h4>
                    Our Partners</h4>
            </div>
            <div class="panel-body">
                <div class="table">
                    <div class="col-md-2">
                        <a href="http://www.flipcart.com">
                            <img src="img/flipcart.png" height="80px" width="100px" class="img" alt="imz" /></a></div>
                    <div class="col-md-2">
                        <a href="http://www.OrganiKong.com">
                            <img src="Icons/logoImage.png" height="80px" width="100px" class="img" alt="imz" /></a></div>
                    <div class="col-md-2">
                        <a href="http://www.amazon.com">
                            <img src="img/amazon.jpg" height="80px" width="100px" alt="imz" class="img" /></a></div>
                    <div class="col-md-2">
                        <a href="http://www.OrganiKong.com">
                            <img src="img/snapdeal.jpg" height="80px" width="100px" alt="imz" class="img" /></a></div>
                    <div class="col-md-2">
                        <a href="http://www.OrganiKong.com">
                            <img src="Icons/logoImage.png" height="80px" width="100px" class="img" alt="imz" /></a></div>
                    <div class="col-md-2">
                        <a href="http://www.OrganiKong.com">
                            <img src="Icons/logoImage.png" height="80px" width="100px" class="img" alt="imz" /></a></div>
                </div>
                <div class="table" id="tbl2">
                    <div class="col-md-2">
                        <a href="http://www.OrganiKong.com">
                            <img src="Icons/logoImage.png" height="80px" width="100px" class="img" alt="imz" /></a></div>
                    <div class="col-md-2">
                        <a href="http://www.OrganiKong.com">
                            <img src="Icons/logoImage.png" height="80px" width="100px" class="img" class="img"
                                alt="imz" /></a></div>
                    <div class="col-md-2">
                        <a href="http://www.OrganiKong.com">
                            <img src="Icons/logoImage.png" height="80px" width="100px" class="img" alt="imz" /></a></div>
                    <div class="col-md-2">
                        <a href="http://www.OrganiKong.com">
                            <img src="Icons/logoImage.png" height="80px" width="100px" class="img" alt="imz" /></a></div>
                    <div class="col-md-2">
                        <a href="http://www.OrganiKong.com">
                            <img src="Icons/logoImage.png" height="80px" width="100px" class="img" alt="imz" /></a></div>
                    <div class="col-md-2">
                        <a href="http://www.OrganiKong.com">
                            <img src="Icons/logoImage.png" height="80px" width="100px" class="img" alt="imz" /></a></div>
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
</body>
</html>
