<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="GroceryStore.Error" %>

<!DOCTYPE html >

<html >
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="JScript/bootstrap.min.js" type="text/javascript"></script>
    <link href="ProductStyle.css" rel="stylesheet" type="text/css" />
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
        <%--Ooops!!! Error Occures--%>

        <div id="page-wrapper">
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
                   <img class="img-responsive" src="../img/OrganiKong.jpg" width="120px" height="60px"
                            alt="OrganiKong"></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">                   
                </ul>              
                <ul class="nav navbar-nav navbar-right">
                    <li><a></a></li>
                   <li><a href="CustomerLogin.aspx"><i class="fa fa-fw fa-lock"></i>Customer Login</a></li>
                    <li><a href="../About-Us"><i class="fa fa-fw fa-info-circle"></i>About Us</a></li>
                    <li><a href="../Contact-Us"><i class="fa fa-fw fa-envelope"></i>Contact Us</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
          <div class="container-fluid"> 
            <div class="row">
                <div class="col-lg-12 col-lg-offset-1">
                    <div id="logoError">
                        <img src="img/errorimg.png" alt="OrganiKong Grocery Store" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="alert alert-danger" role="alert">
                        <asp:Label ID="lblerror" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="alert alert-success" role="alert">
                        <a href="Default.aspx" class="alert-link">GO TO OrganiKong Home Page</a>
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
<%-- <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive" src="Icons/logoImage.png" width="135px" height="100px"
                        alt="WeKirana.Com" />
                </div>
            </div>--%>
