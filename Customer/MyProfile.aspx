<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="GroceryStore.Customer.MyProfile" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, minimal-ui">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-barstyle" content="black-translucent">
    <%--
    <link rel="apple-touch-icon" href="icon-152.png">--%>
    <!-- for Chrome on Android, multi-resolution icon of 196x196 -->
    <meta name="mobile-web-app-capable" content="yes">
    <%--
    <link rel="shortcut icon" sizes="196x196" href="icon-196.png">--%>

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
    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="customer.css" rel="stylesheet" type="text/css" />
    <!-- Main JS -->
    <script src="../JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <!-- Bootstrap Core JS -->

    <script src="../JScript/bootstrap.min.js" type="text/javascript"></script>
    <script src="../jQValidation.js" type="text/javascript"></script>
    <link href="customer.css" rel="stylesheet" type="text/css" />
    <link href="../font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <%--<script src="twitter-bootstrap-v2/docs/assets/js/bootstrap-alert.js"></script>--%>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#customerProfile').validate({
                rules: {
                    txtFirstName: { required: true },
                    txtLastName: { required: true },
                    txtemail: { required: true, email: true },
                    txtmobile1: { required: true, digits: true, minlength: 10, maxlength: 10 },
                    txtmobile2: { required: true, digits: true, minlength: 10, maxlength: 10 },
                    txtAddress1: { required: true },
                    txtAddress2: { required: true },
                    txtAddress3: { required: true },
                    txtcity: { required: true, maxlength: 20 },
                    txtZip: { required: true, digits: true, minlength: 6, maxlength: 6},
                    txtState: { required: true, maxlength: 20 },
                    txtCountry: { required: true, maxlength: 20 }
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
//                ,
//                success: function (element) {
//                    element.text('OK!').addClass('valid')
//                                                .closest('.control-group')
//                                                .removeClass('error').addClass('success');
//                }
            });
        });
    </script>

    <script type="text/javascript">
        (function ($) {
            $(document).ready(function () {
                // hide .navbar first
                $(".navbar").hide();
                // fade in .navbar
                $(function () {
                    $(window).scroll(function () {
                        // set distance user needs to scroll before we fadeIn navbar
                        if ($(this).scrollTop() > 250) {
                            $('.navbar').fadeIn();
                        } else {
                            $('.navbar').fadeOut();
                        }
                    });


                });

            });
        } (jQuery));
    </script>

</head>

<body>
    <div id="myprofile-W">
        <div class="top-Strip-wrapper">
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style=" background-color:White;">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display style="background-color: #222;" -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#wekirana_Navbar"
                            aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                                class="icon-bar"></span><span class="icon-bar"></span>
                        </button>
                        <a id="A1" class="navbar-brand" runat="server" href="~/" style="padding: 0;">
                            <img class="img-responsive" src="../img/OrganiKong.jpg" width="120px" height="60px"
                            alt="OrganiKong">
                        </a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="wekirana_Navbar">
                       
                        <ul class="nav navbar-nav navbar-right">
                            
                            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                                class="fa fa-user"></i>
                                <label id="lblUserName" runat="server">
                                </label>
                                <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                   <%-- <li><a href="Customer/MyProfile.aspx"><i class="fa fa-fw fa-user"></i>Profile</a>
                                    </li>--%>
                                    <li><a href="../Logout.aspx"><i class="fa fa-fw fa-power-off"></i>Log Out</a> </li>
                                </ul>
                            </li>
                           <%-- <li><a id="A2" href="#" runat="server"><i class="fa fa-shopping-cart fa-1x"></i>Cart</a></li>--%>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
            </nav>
        </div>

        <div id="myprifile-PW">
            <form id="customerProfile" runat="server">
            <div class="container-fluid">
                <div class="row-fluid">
                <div id="Mainheader" style=" margin-bottom:0 !important;">
                    <div class="col-sm-2">
                        <div class="row-fluid">
                            <div class="col-sm-12">
                                <div id="firstdiv">
                                    <a id="A3" class="navbar-brand" runat="server" href="~/" style="padding: 0;">
                                        <img class="img-responsive" src="../img/OrganiKong.jpg" width="120px" height="60px"
                                            alt="OrganiKong">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-10">
                        <div style="float: right;">
                            <ul class="list-inline">                               
                                <li role="presentation"><a class="fa fa-share" href="MyOrder.aspx">My Order</a></li>
                                <li role="presentation"><a class="fa fa-globe" href="CustomerAddress.aspx">My Address</a></li>
                                <li role="presentation"><a class="fa fa-gear" href="ChangePassword.aspx">Change Password</a></li>
                                <li class="dropdown" visible="false"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-user"></i>
                                    <label id="lblUserName1" runat="server">
                                    </label>
                                    <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="../Logout.aspx"><i class="fa fa-fw fa-power-off"></i>Log Out</a> </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    
                    </div>
                </div>
                <div class="row-fluid">
                    <hr style="height: 1px; margin-top: 3%; margin-bottom:0%" />
                </div>
                <div class="row-fluid">
                    <div id="Breadcrumbs">
                        <ol class="breadcrumb">
                            <li><a href="../Default.aspx" class="fa fa-home">OrganiKong-Home</a></li>
                            <li class="active"><i class="fa fa-user"></i>My Profile</li>
                        </ol>
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="col-md-8 offset-0">
                        <div class="panel panel-danger">
                            <div class="panel-heading">
                                My Profile
                                <%--<span class="pull-right "></span>--%>
                            </div>
                            <div class="panel-body">
                                <div id="profileDtail">
                                    <div class="form-group has-success">
                                        <span class="label label-danger">Name :</span>
                                        <label id="lblname" runat="server">
                                        </label>
                                        <br />
                                        <span class="label label-success">Email :</span>
                                        <label id="lblemail" runat="server">
                                        </label>
                                        <br />
                                        <span class="label label-success">Mobile :</span>
                                        <label id="lblphone" runat="server">
                                        </label>
                                        <br />
                                        <span class="label label-success">Address Nick Name :</span>
                                        <label id="lblNickName" runat="server">
                                        </label>
                                        <br />
                                        <div>
                                            <div style="float: left;">
                                                <span class="label label-success">Address :</span>
                                            </div>
                                            <div style="float: left; margin-left: 10px;">
                                                <label id="lblAddress1" runat="server">
                                                </label>
                                                <br />
                                                <label id="lblAddress2" runat="server">
                                                </label>
                                                <br />
                                                <label id="lblAddress3" runat="server">
                                                </label>
                                                <br />
                                                <label id="lblAddress4" runat="server">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="panel panel-info">
                            <div class="panel-heading clickable">
                                <h3 class="panel-title">
                                    Update Profile</h3>
                                <span class="pull-right "></span>
                            </div>
                            <div class="panel-body">
                                <fieldset class="form" id="profile">
                                    <%--<legend></legend>--%>
                                    <div class="form-group">
                                        <label class="control-label" for="Firstname">
                                            First Name</label>
                                        <input class="form-control" placeholder="First Name" name="Firstname" type="text"
                                            autofocus="true" id="txtFirstName" runat="server">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="Lastname">
                                            Last Name</label>
                                        <input class="form-control" placeholder="Last Name" name="Lastname" type="text" autofocus="true"
                                            id="txtLastName" runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="email">
                                            Email</label>
                                        <input class="form-control" placeholder="jane.doe@example.com" name="email" autofocus="true"
                                            id="txtemail" runat="server">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="Mobile">
                                            Mobile</label>
                                        <input class="form-control" placeholder="10 Digit Mobile" name="Mobile" autofocus="true"
                                            runat="server" id="txtmobile1">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="AlterMobile">
                                            Alternate Mobile</label>
                                        <input id="txtmobile2" class="form-control" placeholder="Alternate 10 Digit Mobile"
                                            name="AlterMobile" autofocus="true" runat="server">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="txtAddress1">
                                            Nick Name</label>
                                        <input type="text" class="form-control" placeholder="e.g. Home or Office" name="txtAddType"
                                            autofocus="true" id="txtAddtype" runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="txtAddress1">
                                            House No.</label>
                                        <input type="text" class="form-control" placeholder="House no./ Flat No." name="txtAddress11"
                                            autofocus="true" id="txtAddress1" runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="txtAddress2">
                                            Street</label>
                                        <input type="text" class="form-control" placeholder="Street Name/No." name="txtAddress22"
                                            autofocus="true" id="txtAddress2" runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="txtAddress3">
                                            Locality/ Landmark</label>
                                        <input type="text" class="form-control" placeholder="Near By Landmark" name="txtAddress33"
                                            autofocus="true" id="txtAddress3" runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="txtcity">
                                            City</label>
                                        <input type="text" class="form-control" placeholder="City Name" name="txtcity" id="txtcity"
                                            runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="txtZip">
                                            City Pin Code</label>
                                        <input type="text" class="form-control" placeholder="6 Digit Pin Code" name="txtZip"
                                            id="txtZip" runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="txtState">
                                            State</label>
                                        <input type="text" class="form-control" placeholder="State Name" name="txtState"
                                            id="txtState" runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="txtCountry">
                                            Country</label>
                                        <input type="text" class="form-control" placeholder="Country Name" name="txtCountry"
                                            id="txtCountry" runat="server" />
                                    </div>
                                    <div style="margin-left: 70px;">
                                        <asp:Button ID="btnupdate" Class="btn btn-md btn-success" runat="server" Text="Save"
                                            OnClick="btnupdate_Click" />
                                        <asp:Button ID="btnCancel" Class="btn btn-md btn-danger" runat="server" Text="Reset"
                                            value="Cancel" OnClientClick="resetFeilds();" />
                                    </div>
                                    <%--<asp:HiddenField ID="img" runat="server" Value="" />--%>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
                <asp:Panel ID="MessagePanel" runat="server" CssClass="hide" EnableViewState="false">
                    <div class="modal-header">
                        <asp:Button type="button" ID="btnClose" runat="server" data-dismiss="modal" Text="x" />
                    </div>
                    <div class="modal-body">
                        <h4>
                            What's
                        </h4>
                    </div>
                </asp:Panel>
            </div>
            </form>
        </div>

        <footer id="footer">
         <div class="container" style="clear: both; display: table;">
             <div class="col-md-12">
                 <div class="row footer">
                     <div class="first col-md-3">
                          <h4 class="footh4">
                            About OrganiKong</h4>
                        <ul class="footul">
                             <li class="footli"><a class="foota" href="../About-Us">What is OrganiKong ?</a></li>
                             <li class="footli"><a class="foota" href="../Where-We-Deliver">Where We Deliver ?</a></li>
                             <li class="footli"><a class="foota" href="../Contact-Us">Contact Us</a></li>
                             <li class="footli"><a class="foota" href="../Invite-A-Friend">Refer A Friend</a></li>
                         </ul>
                     </div>
                     <div class="latest col-md-3">
                          <h4 class="footh4">
                          Organic</h4>
                        <ul class="footul">
                            <li class="footli"><a class="foota" href="../OrganicFarming.htm">Organic Farming</a></li>
                            <li class="footli"><a class="foota" href="../Eat Organic.htm">Eat Organic</a></li>
                            <li class="footli"><a class="foota" href="../LegalDisclaimer.htm">Legal Disclaimer</a></li>
                        </ul>
                     </div>
                     <div class=" links col-md-3">
                         <h4 class="footh4">
                             Information</h4>
                         <ul class="footul">
                             <li class="footli"><a class="foota" href="../FAQ.htm">FAQ's</a></li>
                             <li class="footli"><a class="foota" href="../TermsCondition.htm">Term & Conditions</a></li>
                             <li class="footli"><a class="foota" href="../Policy.htm">Return/Refund Policy</a></li>
                             <li class="footli"><a class="foota" href="../OurPartners.aspx">Our Partners</a></li>
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
                     <div class="row copywrite">
                Copyright <a href="http://www.OrganiKong.com">OrganiKong Company</a>,Collaborative Business Consulting 2015
                </div>
                 </div>
             </div>
         </div>
   </footer>
    </div>
</body>
</html>

<%--<script type="text/javascript">
        var validation = $('#customerProfile').validateWebForm();
        //Rule set 1
        debugger;
        var validationRulesLogin = {
            txtFirstName: { required: true },
                txtLastName: { required: true },
                txtemail: { required: true, email: true },
                txtmobile1: { required: true, digits: true, minlength: 10, maxlength: 10 },
                txtmobile2: { required: true, digits: true, minlength: 10, maxlength: 10 },
                txtAddress1: { required: true },
                txtAddress2: { required: true },
                txtAddress3: { required: true },
                txtcity: { required: true, maxlength: 20 },
                txtZip: { required: true, maxlength: 20 },
                txtState: { required: true, maxlength: 20 },
                txtCountry: { required: true, maxlength: 20 }
        };
            var validationMessagesLogin = {
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
        };
        //Rule set 2
        var validationRulesSignup = {
           txtAddress11: { required: true },
                txtAddress22: { required: true },
                txtAddress33: { required: true },
                txtcity1: { required: true, maxlength: 20 },
                txtZip1: { required: true, maxlength: 20 },
                txtState1: { required: true, maxlength: 20 },
                txtCountry1: { required: true, maxlength: 20 }
        };
        var validationMessagesSignup = {
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
        };

        function validatingLoginForm() {
            validation.resetForm();
            validation.settings.rules = validationRulesLogin;
            validation.settings.messages = validationMessagesLogin;
        }
        function validationSignupForm() {
            validation.resetForm();
            validation.settings.rules = validationRulesSignup;
            validation.settings.messages = validationMessagesSignup;
        }

    </script>--%>
<%--<div class="row">
            <div class="col-md-6">
                <div class="panel panel-primary">
                    <div class="panel-heading clickable">
                        <h3 class="panel-title">
                            Update Profile</h3>
                        <span class="pull-right "><i class="glyphicon glyphicon-minus"></i></span>
                    </div>
                    <div class="panel-body">
                        <fieldset class="validationGroup">
                            <legend>Sign Up</legend>
                            <label for="FirstName">
                                First Name:</label>
                            <asp:TextBox runat="server" ID="FirstName" CssClass="required" />
                            <label for="LastName">
                                Last Name:</label>
                            <asp:TextBox runat="server" ID="LastName" CssClass="required" />
                            <label for="Email">
                                Email:</label>
                            <asp:TextBox runat="server" ID="email" CssClass="required email" />
                            <label for="txtmobilefirst">
                                Mobile:</label>
                            <asp:TextBox runat="server" ID="txtmobilefirst" CssClass="required digits" />
                            <label for="txtmobilesecond">
                                Alternate Mobile:</label>
                            <asp:TextBox runat="server" ID="txtmobilesecond" CssClass="required digits" />
                            <label for="Address1">
                                House No.:</label>
                            <asp:TextBox runat="server" ID="Address1" CssClass="required" />
                            <label for="Address2">
                                Street:</label>
                            <asp:TextBox runat="server" ID="Address2" CssClass="required" />
                            <label for="Address3">
                                Locality/LandMark:</label>
                            <asp:TextBox runat="server" ID="Address3" CssClass="required" />
                            <label for="City">
                                City:</label>
                            <asp:TextBox runat="server" ID="City" CssClass="required" />
                            <label for="State">
                                State:</label>
                            <asp:TextBox runat="server" ID="State" CssClass="required" />
                            <label for="Zip">
                                PinCode:</label>
                            <asp:TextBox runat="server" ID="Zip" CssClass="required digits" />
                            <label for="Country">
                                Country:</label>
                            <asp:TextBox runat="server" ID="Country" CssClass="required" />
                            <div style="margin-left: 70px;">
                                <asp:Button ID="btnupdate" Class="btn btn-lg btn-success" runat="server" Text="Save"
                                    CssClass="causesValidation" />
                                <asp:Button ID="btnCancel" Class="btn btn-lg btn-danger" runat="server" Text="Reset"
                                    value="Cancel" OnClientClick="resetFeilds();" />
                            </div>
                            <asp:HiddenField ID="img" runat="server" Value="" />
                        </fieldset>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="panel panel-success">
                    <div class="panel-heading clickable">
                        <h3 class="panel-title">
                            Add New Address</h3>
                        <span class="pull-right "><i class="glyphicon glyphicon-minus"></i></span>
                    </div>
                    <div class="panel-body">
                        <div>
                            <fieldset class="validationGroup">
                                <legend>Login</legend>
                                <div class="form-group">
                                    <label class="control-label" for="Firstname">
                                        Address Type</label>
                                    <input class="form-control" placeholder="e.g. Home or Office" name="addresstype"
                                        type="text" autofocus="true" id="Text8" runat="server" cssclass="required">
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="txtAddress1">
                                        House Number</label>
                                    <input type="text" class="form-control" placeholder="Address Line 1" name="txtAddress11"
                                        autofocus="true" id="Text1" runat="server" cssclass="required" />
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="txtAddress2">
                                        Street</label>
                                    <input type="text" class="form-control" placeholder="Address Line 2" name="txtAddress22"
                                        autofocus="true" id="Text2" runat="server" cssclass="required" />
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="txtAddress3">
                                        Locality</label>
                                    <input type="text" class="form-control" placeholder="Address Line 3" name="txtAddress33"
                                        autofocus="true" id="Text3" runat="server" cssclass="required" />
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="txtcity">
                                        City</label>
                                    <input type="text" class="form-control" placeholder="City Name" name="txtcity1" id="Text4"
                                        runat="server" cssclass="required" />
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="txtZip">
                                        City Pin Code</label>
                                    <input type="text" class="form-control" placeholder="6 Digit Pin Code" name="txtZip1"
                                        id="Text5" runat="server" cssclass="required" />
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="txtState">
                                        State</label>
                                    <input type="text" class="form-control" placeholder="State Name" name="txtState1"
                                        id="Text6" runat="server" cssclass="required" />
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="txtCountry">
                                        Country</label>
                                    <input type="text" class="form-control" placeholder="Country Name" name="txtCountry1"
                                        id="Text7" runat="server" cssclass="required" />
                                </div>
                                <div style="margin-left: 70px;">
                                    <asp:Button ID="Button1" Class="btn btn-lg btn-success" runat="server" Text="Save"
                                        CssClass="causesValidation" />
                                    <asp:Button ID="Button2" Class="btn btn-lg btn-danger" runat="server" Text="Reset"
                                        value="Cancel" OnClientClick="resetFeilds();" />
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
<%--<div class="alert alert-success alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                        &times;
                    </button>
                    Success! Well done its submitted.
                </div>--%>