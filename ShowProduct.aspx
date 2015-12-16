<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowProduct.aspx.cs" Inherits="GroceryStore.Product.ShowProduct" %>
<%@ Register Src="~/Cart/BasketOffer.ascx" TagName="Basket" TagPrefix="ucBasket" %>
<%@ Register  Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<html>
<head runat="server">
    <title>OrganiKong Products</title>
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, minimal-ui">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-barstyle" content="black-translucent">

    <meta name="mobile-web-app-capable" content="yes">

    <meta name="keyword" content="organic Products,gluten free,Organic cosmetics,organic stores,organic food home delivery,online organic store,gluten free products " />
    <meta name="description" content="OrganiKong,Online organic grocery shopping made easy. We provide daily grocery products such as dry fruits, personal care products, snacks, rice, organic dals and pulses with free home delivery option at the best price">
    <meta name="author" content="OrganiKong.com">
    <!--FACEBOOK-->
    <meta property="og:title" content="Organic Products">
    <meta property="og:site_name" content="OrganiKong">
    <meta property="og:url" content="http://www.OrganiKong.com">
    <meta property="og:description" content="OrganiKong,Online organic grocery shopping made easy. We provide daily grocery products such as dry fruits, personal care products, snacks, rice, organic dals and pulses with free home delivery option at the best price">
    <meta property="og:image" content="http://www.OrganiKong.com/Images/Wekirana_Customer.jpg">
    <meta property="og:type" content="website">
    <meta property="og:locale" content="en_US">
    <!--TWITTER-->
    <meta property="twitter:card" content="summary">
    <meta property="twitter:title" content="Organic Products">
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

    <script src="../Scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />   
    <script src="../Scripts/bootstrap.min.js" type="text/javascript"></script>   
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
   </style>

   <script type="text/javascript">
       $(document).ready(function () {
           //document.getElementsByClassName('basketlink').style.visibility = 'hidden';
           var appBanners = document.getElementsByClassName('basketlink'), i;
           for (var i = 0; i < appBanners.length; i++) {
               appBanners[i].style.display = 'none';
           }
       });
        </script>
    <%--<script type="text/javascript">
        //debugger;
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>--%>
</head>
<body>
    <div id="ProductWrapper">       
        <form id="form1" runat="server">      
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <div id="firstdiv">
                        <a id="A3" class="navbar-brand" runat="server" href="Default.aspx" style="padding: 0;">
                            <img class="img-responsive" src="img/OrganiKong.jpg" width="120px" height="60px"
                                alt="OrganiKong">
                        </a>
                    </div>
                </div>
                <div class="col-sm-10">
                    <div style="float: right;">
                        <ul class="list-inline">
                            <li role="presentation"><a class="fa fa-envelope" href="../ContactUs.aspx">Contact Us</a></li>
                            <li role="presentation"><a class="fa fa-link" href="../Vendor/VendorLogin.aspx">Sell
                                With Us</a></li>
                                <li><a href="CustomerLogin.aspx"><i class="fa fa-user"></i>Log In</a> </li>
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
                <hr style="width: 100%; color: black; margin: 1% 0 0 0;" />
            </div>
            <div class="row">
                <div id="Breadcrumbs" style="">
                    <ol class="breadcrumb">
                        <li><a href="../Default.aspx" class="fa fa-home">OrganiKong Home</a></li>
                        <li class="active"><i class="fa fa-file">OrganiKong All Product</i></li>
                    </ol>
                </div>
            </div>
            <div id="ProductPageWrapper">
            <div class="row" style="margin-top: 5px !important">
                        <div class="col-sm-12 col-sm-offset-0">
                            <div class="panel panel-primary" style="border: none;">
                                <div class="panel-body" style="height: 180px;">
                                    <ucBasket:Basket ID="Basket1" runat="server"></ucBasket:Basket>
                                </div>
                            </div>
                            <%--<a id="ViewAllBasket" href="ViewAllOffer's.aspx?OfferId=1" style="float: right;">View
                                All Offer's</a>--%>
                        </div>
                    </div>
                <%--<div class="row">
                    <div class="col-lg-4">
                        <div class="panel panel-primary">
                            <div class="panel-body">
                                <a href="#">
                                    <img class="img-responsive" src="../Images/newgrocery-products-shopping-basket.jpg"
                                        alt="Grocery" height="120px !important" width="300px !important" />
                                </a>
                            </div>
                            <div class="panel-footer">
                                <a href="#">Groceries</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="panel panel-primary">
                            <div class="panel-body">
                                <a href="Category.aspx?id=2">
                                    <img class="img-responsive" src="../Images/Wekirana-dairy-product.jpg" height="120px !important"
                                        width="300px !important" alt="Dairy Product" />
                                </a>
                            </div>
                            <div class="panel-footer">
                                <a href="Category.aspx?id=2">Dairy Product</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="panel panel-primary">
                            <div class="panel-body">
                                <img src="../Images/SnacksFood.jpg" class="img-responsive" alt="Snacks" height="120px !important"
                                    width="300px !important" />
                            </div>
                            <div class="panel-footer">
                                <a href="#">Snacks</a>
                            </div>
                        </div>
                    </div>
                </div>--%>
                <div class="row">
                    <div id="Subscriptonalert" class="alert alert-danger alert-dismissible" role="alert"
                        runat="server">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                         <a href="AllBasketOffer.aspx" class="alert-link">
                            View All Basket</a>
                    </div>
                    <%--  <div class="col-lg-4">
                        <div class="panel panel-primary">
                            <div class="panel-body">
                                <img src="../Images/baby-care-products.jpg" class="img-responsive" alt="Baby Care"
                                    height="120px !important" width="300px !important" />
                            </div>
                            <div class="panel-footer">
                                <a href="#">Baby Care</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="panel panel-primary">
                            <div class="panel-body">
                                <img src="../Images/petscare.jpg" class="img-responsive" alt="Pets Care" height="120px !important"
                                    width="300px !important" />
                            </div>
                            <div class="panel-footer">
                                <a href="#">Pets care & Foods</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="panel panel-primary">
                            <div class="panel-body">
                                <img src="../Images/Pastries_Wekirana.jpg" class="img-responsive" alt="Sweets" height="120px !important"
                                    width="300px !important" />
                            </div>
                            <div class="panel-footer">
                                <a href="#">Sweets</a>
                            </div>
                        </div>
                    </div>--%>
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
        </form>
    </div>
</body>
</html>


<%--<div id="fooImage" style="background-image: url(../img/loweraboutus.png);">
                <div class="row">
                    <div class="col-md-12">
                        <div class="row footer" style="padding: 2 2 2 2; margin-bottom: 3px;">
                            <div class="first col-md-3 ">
                                <h4 class="footh4">
                                    About Wekirana</h4>
                                <ul class="footul">
                                    <li class="footli"><a class="foota" href="About-Us">About Us</a></li>
                                    <li class="footli"><a class="foota" href="Where-We-Deliver">Where We Deliver</a></li>
                                    <li class="footli"><a class="foota" href="Contact-Us">Contact Us</a></li>
                                    <li class="footli"><a class="foota" href="Invite-A-Friend">Refer A Friend</a></li>
                                </ul>
                            </div>
                            <div class="latest col-md-3">
                                <h4 class="footh4">
                                    Latest products</h4>
                                <ul class="footul">
                                    <li class="footli"><a class="foota" href="Category.aspx?id=1">Grocery & Staples</a></li>
                                    <li class="footli"><a class="foota" href="Category.aspx?id=2">Dairy</a></li>
                                </ul>
                            </div>
                            <div class=" links col-md-3">
                                <h4 class="footh4">
                                    Information</h4>
                                <ul class="footul">
                                    <li class="footli"><a class="foota" href="FAQ.htm">FAQ's</a></li>
                                    <li class="footli"><a class="foota" href="TermsCondition.htm">Term & Conditions</a></li>
                                    <li class="footli"><a class="foota" href="Policy">Return/Refund Policy</a></li>
                                </ul>
                            </div>
                            <div class="social col-md-3">
                                <h4 class="footh4">
                                    Connect with Us</h4>
                                <div>
                                    <a href="https://twitter.com/wekirana1" target="_blank">
                                        <img title="Twitter" alt="Twitter" src="img/twitter.png" width="35" height="35" />
                                    </a><a href="https://www.facebook.com/wekirana?fref=ts" target="_blank">
                                        <img title="Facebook" alt="Facebook" src="img/facebook.png" width="35" height="35" />
                                    </a><a href="https://wekirana@gmail.com" target="_blank">
                                        <img src="img/g.png" title="google+" alt="Google plus" width="35" height="35" />
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="row copywrite">
                            Copyright &copy; 2015 <a href="http://www.wekirana.com">Wekirana Company</a>All
                            rights reserved.
                        </div>
                    </div>
                </div>
            </div>--%>
<%--<div class="row">
                    
                    <div class="col-lg-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                Show Product
                            </div>
                            <div class="panel-body">
                                <p>
                                    Product</p>
                            </div>
                            <div class="panel-footer">
                               <a href="#">Spices & herbs</a>
                            </div>
                        </div>
                    </div>
                </div>--%>
<%--<ul>

                <asp:Repeater ID="outerRep" runat="server" OnItemDataBound="outerRep_ItemDataBound">
                    <ItemTemplate>
                        <li>
                            <asp:Label Font-Size="Large" Font-Bold="true" ID="lblCategoryName" runat="server"
                                Text='<%# Eval("Pro_CategorytName") %>' />
                        </li>
                        <ul>
                            <asp:Repeater ID="innerRep" runat="server">
                                <ItemTemplate>
                                    <li style="background-color:Blue">
                                        <asp:HyperLink ID="hlProductName" runat="server" Text='<%# Eval("Sub_Pro_CategorytName")%>' />
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>

                </ul>--%>
<%--<nav class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Grocery Store</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="../Default.aspx">Home</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#contact">Contact Us</a></li>--%>
<%--<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>--%>
<%--      </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <%--<li><a href="../navbar/">Default</a></li>
                        <%--<li class="active"><a href="./">Fixed top <span class="sr-only">(current)</span></a></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                            class="fa fa-user"></i>
                            <label id="lblUserName" runat="server">
                            </label>
                            <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#"><i class="fa fa-fw fa-user"></i>Profile</a> </li>
                               <li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>
                        <li>
                            <a href="ChangeSettings.aspx"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                                <li class="divider"></li>
                                <li><a href="~/Logout.aspx"><i class="fa fa-fw fa-power-off"></i>Log Out</a> </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </nav>--%>
<%--<div id="sidevarDiv">
            <div class="row-offcanvas row-offcanvas-left">
                <div id="sidebar" class="sidebar-offcanvas">
                    <div class="col-md-2 col-md-offset-0">
                        <h3>
                            Select Category</h3>
                        <ul class="nav nav-pills nav-stacked">
                            <li class="active"><a href="#">Section</a></li>
                            <li><a href="#">Section</a></li>
                            <li><a href="#">Section</a></li>
                            <li><a href="#">Section</a></li>
                            <li><a href="#">Section</a></li>
                        </ul>
                        <h4>
                            Select Price Range</h4>
                        <ul class="nav nav-pills nav-stacked">
                            <asp:SliderExtender ID="SliderExtender1" runat="server" BoundControlID="Label1" Orientation="Horizontal"
                                EnableHandleAnimation="true" Maximum="5000" Minimum="100" TargetControlID="txtslider">
                            </asp:SliderExtender>
                            <asp:TextBox ID="txtslider" runat="server"></asp:TextBox>
                            <asp:Label ID="Label1" runat="server" AssociatedControlID="txtslider"> </asp:Label>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-2">
            </div>
        </div>--%>