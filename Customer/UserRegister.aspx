<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="GroceryStore.Customer.UserRegister" %>

<!DOCTYPE html>

<html lang="en">
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

    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/sb-admin.css" rel="stylesheet" type="text/css" />
    <link href="~/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"> 
    <script src="../JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../JScript/bootstrap.min.js" type="text/javascript"></script>
    <script src="../jQValidation.js" type="text/javascript"></script>
    <link href="customer.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">
    $(document).ready(function () {
        //debugger;
        $('#myForm').validate({
            rules: {
                email: {
                    required: true,
                    email: true
                },
                
                password: {

                    required: true
                },
                firstname: {

                    required: true
                },
                lastname: {

                    required: true
                },
                Mobile: {
                    required: true,
                    digits: true,
                    maxlength: 10
                },
                city: {
                    required: true
                },
                pincode: {
                    required: true,
                    digits: true,
                    maxlength: 6
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
    //debugger;
    $(document).ready(function () {
        $(":reset").css("background-color", "red");
        $('#btnCancel').on('click', function () {
            $("#myForm").validate().resetForm();
            $("#myForm").removeClass("has-error");
        });
    }); 
    </script>
    <script type="text/javascript">
        function VerifyUserEmailID(obj) {
            //debugger;
            var email = document.getElementById('txtemail');
            var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            if (!filter.test(email.value)) {
               mymsg.style.color = "red";
                mymsg.innerHTML = "Email Not Valid";
                $("#txtemail")[0].value = "";
                //email.focus();
                return false;
            }
            mymsg.innerHTML = "";
            //debugger;
            $.ajax({
                type: "POST",
                url: "UserRegister.aspx/VerifyUserEmailID",
                contentType: "application/json; charset=utf-8",
                data: '{emailid: "' + $("#txtemail")[0].value + '" }',
                dataType: "json",
                success: whenSuccess,
                failure: function (response) {
                    alert(response.d);
                }
            });
        }
        function whenSuccess(status) {
            //debugger;
            if (status.d == 0) {
                mymsg.style.color = "green";
                mymsg.innerHTML = "Email Available";
            }
            else {
                mymsg.style.color = "red";
                mymsg.innerHTML = "Email Already Registered";
                $("#txtemail")[0].value = "";
                //$("#txtemail").focus();
            }
        }
    </script>
    <script type="text/javascript">
        function myFunction2() {
        mymsg.innerHTML = "";
        }
    </script>

</head>
<body>
    <div id="Cwrapper">
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
                    <img class="img-responsive" src="../img/OrganiKong.jpg"
                        alt="OrganiKong.Com" width="100px" height=""></a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="wekirana_Navbar">
                       <%--<ul>
                       <li>
                       <a href="UserRegister.aspx">Customer Registration</a>
                       </li>
                       </ul>--%>
                       
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
            </nav>
        </div>
 
        <div id="CPageWrapper">
            <form id="myForm" runat="server">
            <div class="container">
                <div class="row">
                    <div id="Breadcrumbs" style="">
                        <ol class="breadcrumb">
                            <li><a href="../Default.aspx" class="fa fa-home">OrganiKong Home</a></li>
                            <li class="active"><i class="fa fa-file">Customer Registration</i></li>
                        </ol>
                    </div>
                </div>
                <div class="row">           
                <div id="VregstrD" class="col-md-4 col-md-offset-0">
                        <div class="login-panel panel panel-default">
                            <div class="panel-heading" style="height: 100px; padding: 0 0 0 0">
                                <img src="../Icons/imagesc.jpg" width="100%" height="80px" alt="Customer Registration" />
                            </div>
                            <div class="panel-body">
                                <%--<div class="form-group">
                                    <input id="Username" class="form-control" placeholder="Create User ID"
                                        name="Username" type="text" autofocus="true">
                                </div>--%>
                                <div class="form-group">
                                <input type="text" class="form-control" placeholder="jane.doe@example.com" name="email" autofocus="true"
                                        id="txtemail" runat="server" onfocus="myFunction2();" onchange="VerifyUserEmailID(this);"  required="required">
                                        <span id="mymsg" style=" margin-left:100px;"></span>
                                   <%-- <input id="txtemail" class="form-control" placeholder="Krish@example.com" name="email"
                                        type="email" autofocus="true" runat="server">--%>
                                    <%--myTextBox.Attributes["type"] = "email";--%>
                                </div>
                                <div class="form-group">
                                    <input id="txtpwd" class="form-control" placeholder="New Password" name="password" type="password">
                                </div>
                                <div class="form-group">
                                    <input id="txtfname" class="form-control" placeholder="First Name" name="firstname"
                                        type="text" autofocus="true">
                                </div>
                                <div class="form-group">
                                    <input id="txtlname" class="form-control" placeholder="Last Name" name="lastname"
                                        type="text" autofocus="true">
                                </div>
                                <div class="form-group">
                                    <input id="txtmob" class="form-control" placeholder="Mobile Number" name="Mobile"
                                        type="tel" autofocus="true" maxlength="10">
                                </div>
                                <div class="form-group">
                                    <input id="txtCity" class="form-control" placeholder="City" name="city" type="text"
                                        autofocus="true">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" id="customer_pincode" placeholder="PinCode" name="pincode"
                                        type="text" />
                                </div>
                                <%--<div class="form-group">
                                    <input id="txtdob" class="form-control" placeholder="mm/dd/yyyy" name="dob" type="date" autofocus="true">
                                </div>--%>
                                <asp:Button ID="btnSubmit" runat="server" class="btn btn-md btn-success" Text="Create"
                                    OnClick="btnSubmit_Click" />
                                <input id="btnCancel" type="reset" class="btn btn-md btn-danger" value="Cancel" />
                            </div>
                        </div>
                    </div>
                                 
                <div id="Imgbanner" class="col-lg-6 col-md-offset-1">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h1>
                                    Register and Get Shopping Point Free
                                </h1>
                                <hr />
                                <h3>
                                    See Thousands of Products
                                </h3>
                            </div>
                            <div class="panel-body">
                                <a href="../Default.aspx">
                                    <img src="../Images/LiveOrganic.jpg" style="width:100%; height: 290px; "
                                        alt="Registration" /></a>
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
