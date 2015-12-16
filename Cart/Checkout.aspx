<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="GroceryStore.Cart.Checkout"  %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>
<html >
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="../JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../JScript/bootstrap.min.js" type="text/javascript"></script>
    <link href="../font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <%--<script src="Basket.js" type="text/javascript"></script>--%>
    <link href="cartstyle.css" rel="stylesheet" type="text/css" />
    <script src="../jQValidation.js" type="text/javascript"></script>
    <script src=https://connect.facebook.net/en_US/all.js type="text/javascript"></script>
    <%--<script src="../JScript/all.js" type="text/javascript"></script>--%>
   <script type="text/javascript">
        //debugger;
       //        $(document).keydown(function (e) {<a href=></a>
//            if (e.keyCode == 27) return false;
//        });
        function openModal() {
            $('#login-modal').modal('show');
        }
   </script>

   <style>
        body
        {
            /*color: #626262;*/
            color:#626262;
            font-family: 'Bree Serif' ,serif;
            font-size: 16px;
            /*min-height: 2000px;*/            
        }
        .modal-backdrop
        {
           opacity:1 !important;
           -ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=50)";
           filter:alpha(opacity=50);
           background-image:url("../Images/WebsiteBanner.jpg");
        }
        
        .login_modal_footer
        {
            margin-top: 5px;
        }
        .login_modal_header .modal-title
        {
            text-align: center;
            font-family: 'Philosopher' ,sans-serif;
        }
        .form-group
        {
            position: relative;
        }
        .form-group .login-field-icon
        {
            font-size: 20px;
            position: absolute;
            right: 15px;
            top: 3px;
            transition: all 0.25s ease 0s;
            padding-top: 2%;
        }
        .login-modal
        {
            width: 100%;
            padding-bottom: 20px;
            
        }
        .login_modal_header, .login_modal_footer
        {
            background: #00BB64 !important;
            color: #fff;
        }
        .modal-register-btn
        {
            margin: 4% 33% 2% 33%;
            width: 100%;
        }
        .login-modal input
        {
            height: 40px;
            box-shadow: none;
            border: 1px solid #ddd;
        }
        .modal-body-left
        {
            float: left;
            width: 50%;
            padding-right: 4%;
            border-right: 4px solid #ddd;
        }
        .modal-body-right
        {
            float: right;
            width: 47%;
        }
        .login-link
        {
            padding: 0 20%;
        }
        .modal-social-icons
        {
            padding: 0 10%;
        }
        .facebook, .twitter, .google, .linkedin
        {
            width: 100%;
            height: 40px;
            padding-top: 2%;
            margin-top: 2%;
        }
        .modal-icons
        {
            margin-left: -10px;
            margin-right: 20px;
        }
        .google, .google:hover
        {
            background-color: #dd4b39;
            border: 2px solid #dd4b39;
            color: #fff;
        }
        /*.twitter, .twitter:hover
        {
            background-color: #00aced;
            border: 2px solid #00aced;
            color: #fff;
        }*/
        .facebook, .facebook:hover
        {
            background-color: #3b5999;
            border: 2px solid #3b5999;
            color: #fff;
        }
        /*.linkedin, .linkedin:hover
        {
            background-color: #007bb6;
            border: 2px solid #007bb6;
            color: #fff;
        }*/
        #social-icons-conatainer
        {
            position: relative;
        }
        #center-line
        {
            position: absolute;
            right: 265.7px;
            top: 80px;
            background: #ddd;
            border: 4px solid #DDDDDD;
            border-radius: 20px;
        }
        .modal-login-btn
        {
            width: 100%;
            height: 40px;
            margin-bottom: 10px;
        }
        #modal-launcher
        {
            margin: 30% 0 0 30%;
        }
        h1
        {
            border-bottom: 5px solid #00BB64;
        }
    </style>
    
   <script type="text/javascript">
       $(function () {
          
           $("#btnloginCkeck").bind("click", function () {
               debugger;
               $.ajax({
                   type: 'POST', // define the type of HTTP verb we want to use (POST for our form)
                   url: "Checkout.aspx/CheckUser", // the url where we want to POST
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
           })
       })
        function OnSuccess(res) {
            //debugger;
            if (res.d == 1) {
                $("#login-modal").modal('hide');
                window.location.replace("Checkout.aspx");
            }
            else 
            {
                alert("Try Again !!");
            }
        }
        //e.preventDefault();          
    </script>

   <style>
        .panel-heading span 
        {
             margin-top: -20px;
             font-size: 15px;
         }
        
        .clickable {
            cursor: pointer;
        }    
        
        #gv1Div {
    background: white;
    text-align: center;
       }
       #gvDiv:hover
       {
           background: #fae4ea;
       }

#gv1A:hover {
    color: red;
    background: #fae4ea;
}
#gv1A {
    display: block;
    height: 100%;
    width: 100%;
}
#gv2Div
{
     background: white;
    text-align: center;
}
 #gv2Div:hover
       {
           background: #fae4ea;
       }
      #gv2A:hover {
    color: red;
    background: #fae4ea;
}
#gv2A {
    display: block;
    height: 100%;
    width: 100%;
} 
    </style>

    <%--google API--%>

   <script type="text/javascript">
        function logout() {
            gapi.auth.signOut();
            location.reload();
        }
        function login() {
            //debugger;
            var myParams = {
                'clientid': '559773164252-638n6uar0q8i2h4jvdv2b71q455lqshi.apps.googleusercontent.com',
                'cookiepolicy': 'single_host_origin',
                'callback': 'loginCallback',
                'approvalprompt': 'force',
                'scope': 'https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.profile.emails.read'
            };
            gapi.auth.signIn(myParams);
        }

        function loginCallback(result) {
            if (result['status']['signed_in']) {
                var request = gapi.client.plus.people.get(
        {
            'userId': 'me'
        });
        request.execute(function (resp) {
            var email = '';
            if (resp['emails']) {
                for (i = 0; i < resp['emails'].length; i++) {
                    if (resp['emails'][i]['type'] == 'account') {
                        email = resp['emails'][i]['value'];
                    }
                }
            }

            var str = "Name:" + resp['displayName'] + "<br>";
           // alert(str);
            str += "Image:" + resp['image']['url'] + "<br>";
            str += "<img src='" + resp['image']['url'] + "' /><br>";

            str += "URL:" + resp['url'] + "<br>";
            str += "Email:" + email + "<br>";
            document.getElementById("profile").innerHTML = str;
            $.ajax({
                type: "POST",
                url: "Checkout.aspx/InsertGoogleProfile",
                data: "{'name':'" + resp['displayName'] + "', 'email':'" + email + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (res) {
                    if (res.d == 1) {
                        //lblUserName.innerHTML = "Hello Customer";
                        //$("#login-modal").modal('hide');
                        $("#login-modal").modal('hide');
                        window.location.replace("Checkout.aspx");
                    }
                    else {

                        alert("Try Again?");
                    }
                    //window.location = res.d; 
                },
                failure: function () { alert("Failed"); }
            });
        });
            }
        }
        function onLoadCallback() {
            //gapi.client.setApiKey('AIzaSyB7spiDldcGNTaYtg2cjcIpWHjFId7T_Do');
            gapi.client.setApiKey('AIzaSyB7spiDldcGNTaYtg2cjcIpWHjFId7T_Do');
            gapi.client.load('plus', 'v1', function () { });
        }
 
    </script>

   <script type="text/javascript">
        (function () {
            var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
            po.src = 'https://apis.google.com/js/client.js?onload=onLoadCallback';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
        })();
    </script>

    <%--Facebook API--%>
   
   <script type="text/javascript">
     // Confirmation before delete operation.
     function deleteConfirm(sender) {
         var c = confirm("Are you sure?");
         if (c) { return true; } else { return false; }
     }        
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
    <div id="checkoutWrapper">
        <div class="container">
            <div id="Top-navDiv">
                <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style=" background-color:White;">
                    <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display style="background-color: #222;" -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#wekirana_Navbar"
                                aria-expanded="false" aria-controls="navbar">
                                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                                    class="icon-bar"></span><span class="icon-bar"></span>
                            </button>
                            <a id="A1" class="navbar-brand" runat="server" href="../Default.aspx" style="padding: 0;">
                                 <img class="img-responsive" src="../img/OrganiKong5.jpg" width="120px" height="40px"
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
                                        <li><a href="../Customer/MyProfile.aspx"><i class="fa fa-fw fa-user"></i>Profile</a>
                                        </li>
                                        <li><a href="../Logout.aspx"><i class="fa fa-fw fa-power-off"></i>Log Out</a> </li>
                                    </ul>
                                </li>
                                <%--<li><a id="A2" href="#" runat="server"><i class="fa fa-shopping-cart fa-1x"></i>Cart</a></li>--%>
                            </ul>
                        </div>
                        <!-- /.navbar-collapse -->
                    </div>
                </nav>
            </div>
            <%--<div id="TopHeaderDiv"></div>--%>

            <div class="row">
                    <div class="col-sm-2">
                        <div id="firstdiv">
                            <a id="A3" class="navbar-brand" runat="server" href="~/" style="height: 63px;">
                               <img class="img-responsive" src="../img/OrganiKong.jpg" alt="OrganiKong">
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-10">
                        <div style="float: right; margin-top:3%;">
                            <ul class="list-inline">
                                <%--<li>
                                    <form class="navbar-form navbar-lg" role="search" action="../Search.aspx">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="Text1" placeholder="Search" runat="server"
                                            required="required" style="width: 209px; height: 28px" />
                                        <button id="Button3" type="submit" class="btn btn-primary btn-sm" runat="server">
                                            <span class="glyphicon glyphicon-search"></span>Search</button>
                                    </div>
                                    </form>
                                </li>
                                <li role="presentation"><a class="fa fa-envelope" href="../ContactUs.aspx">Contact Us</a></li>--%>
                                <li role="presentation"><a class="fa fa-link" href="../Vendor/VendorLogin.aspx">Sell
                                    With Us</a></li>
                                <li id="loggedinLI" runat="server" class="dropdown" visible="false"><a href="#" class="dropdown-toggle"
                                    data-toggle="dropdown"><i class="fa fa-user"></i>
                                    <label id="lblUserName1" runat="server">
                                    </label>
                                    <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="../Customer/MyProfile.aspx"><i class="fa fa-fw fa-user"></i>Profile</a>
                                        </li>
                                        <li><a href="../Logout.aspx"><i class="fa fa-fw fa-power-off"></i>Log Out</a> </li>
                                    </ul>
                                </li>
                                <%--<li role="presentation"><a class="fa fa-shopping-cart" href="#">Cart</a></li>--%>
                            </ul>
                        </div>
                    </div>
                </div>
            
            <div id="CheckoutPageWrapper">
                <form id="formcheckout" runat="server">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
                <hr style="margin-top: 5px; margin-bottom: 2px; background-color:#21272d" />

                <div id="CompareDiv" class="row" runat="server">
                    <div class="col-md-12">
                        <div class="panel panel-danger">
                            <div class="panel-heading">
                                Best Selling Price for your cart Select one to place an order
                            </div>
                            <div class="panel-body">
                                <div id="gv1Div" class="col-md-6">
                                <a id="gv1A" runat="server" onclick="btnplace1_Click" href="#">

                                    <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="false" OnRowDataBound="gv1_RowDataBound"
                                        BorderColor="#336699" BorderStyle="Solid" BorderWidth="1px" CellPadding="2" Font-Names="Verdana"
                                        ShowFooter="true" Font-Size="10pt" Width="100%" DataKeyNames="ProductId" GridLines="Horizontal">
                                        <Columns>
                                            <asp:BoundField DataField="VendorId" HeaderText="VId" Visible="false" />
                                            <asp:TemplateField HeaderText="Id" HeaderStyle-CssClass="visible-desktop" ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblpro" runat="server" Text='<%# Eval("ProductId") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Product Name" HeaderStyle-CssClass="visible-desktop"
                                                ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblproname" runat="server" Text='<%# Eval("ProductName") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="MRP" HeaderStyle-CssClass="visible-desktop" ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblMRP" runat="server" Text='<%# Eval("MRP") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Selling Price" HeaderStyle-CssClass="visible-desktop"
                                                ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSellingPrise" runat="server" Text='<%# Eval("Selling Price") %>' />
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="lblTotalPrice" runat="server" />
                                                </FooterTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Discount" HeaderStyle-CssClass="visible-desktop" ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lbldiscount" runat="server" Text='<%# Eval("Discount") %>' />
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="lblDiscount" runat="server" />
                                                </FooterTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Product Available" HeaderText="Is Available" ItemStyle-CssClass="hidden-phone"
                                                HeaderStyle-CssClass="hidden-phone" />
                                            <asp:TemplateField HeaderText="Quantity" HeaderStyle-CssClass="visible-desktop" ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("Quantity") %>' />
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="lblquantity" runat="server" />
                                                </FooterTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="#336699" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                                        <HeaderStyle BackColor="#336699" Font-Bold="True" ForeColor="White" HorizontalAlign="center" />
                                    </asp:GridView>
                                    <%--<asp:Label ID="Label3" runat="server"></asp:Label>--%>
                                    <br />
                                    <%--<asp:Button ID="btnplace1" runat="server" Text="Place Order" OnClick="btnplace1_Click"
                                        Visible="false" class="btn btn-primary" />--%>
                                </a>
                                </div>
                                
                                <div id="gv2Div" class="col-md-6">
                                <a id="gv2A" runat="server" onclick="btnPlace2_Click" href="#">
                                    <asp:GridView ID="gv2" runat="server" AutoGenerateColumns="false" OnRowDataBound="gv2_RowDataBound"
                                        BorderColor="#336699" BorderStyle="Solid" BorderWidth="1px" CellPadding="2" Font-Names="Verdana"
                                        ShowFooter="true" Font-Size="10pt" Width="100%" DataKeyNames="ProductId" GridLines="Horizontal">
                                        <Columns>
                                            <asp:BoundField DataField="VendorId" HeaderText="VId" Visible="false" />
                                            <asp:TemplateField HeaderText="Id" HeaderStyle-CssClass="visible-desktop" ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblpro2" runat="server" Text='<%# Eval("ProductId") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Product Name" HeaderStyle-CssClass="visible-desktop"
                                                ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblproname2" runat="server" Text='<%# Eval("ProductName") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="MRP" HeaderStyle-CssClass="visible-desktop" ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblMRP2" runat="server" Text='<%# Eval("MRP") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Selling Price" HeaderStyle-CssClass="visible-desktop"
                                                ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSP" runat="server" Text='<%# Eval("Selling Price") %>' />
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="lblTSP" runat="server" />
                                                </FooterTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Discount" HeaderStyle-CssClass="visible-desktop" ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblDS" runat="server" Text='<%# Eval("Discount") %>' />
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="lblTDS" runat="server" />
                                                </FooterTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Product Available" HeaderText="Is Available" ItemStyle-CssClass="hidden-phone"
                                                HeaderStyle-CssClass="hidden-phone" />
                                            <asp:TemplateField HeaderText="Quantity" HeaderStyle-CssClass="visible-desktop" ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblQnty" runat="server" Text='<%# Eval("Quantity") %>' />
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="lblTQnty" runat="server" />
                                                </FooterTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="#336699" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                                        <HeaderStyle BackColor="#336699" Font-Bold="True" ForeColor="White" HorizontalAlign="center" />
                                    </asp:GridView>
                                    <br />
                                    <%--<asp:Button ID="btnPlace2" runat="server" Text="Place Order" Visible="false" class="btn btn-primary"
                                        OnClick="btnPlace2_Click" />--%>
                                        </a>
                                </div>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>

                <%--<div class="row" style="margin-top: 5px;">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                Select One as Shipping Address
                            </div>
                            <div class="panel-body" style="padding: 0px; height: 403px;">
                               
                            </div>
                        </div>
                    </div>
                </div>--%>
          
                <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                    aria-hidden="true" data-backdrop="static" data-keyboard="false">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header login_modal_header">
                                <%--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                    &times;</button>--%>
                                <h2 class="modal-title" id="myModalLabel">
                                    Login to Your Account</h2>
                            </div>
                            <div class="modal-body login-modal">
                                <p>
                                    You have to Registered First to Checkout...</p>
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
                                            <%-- <a href='#' class="btn btn-default facebook" runat="server" onclick="FBlogin"><i class="fa fa-facebook modal-icons"></i>Sign In with Facebook </a>--%>
                                            <asp:LinkButton ID="LinkButton1" class="btn btn-default facebook" runat="server"
                                                PostBackUrl="#" OnClick="LinkButton1_Click"><i class="fa fa-facebook modal-icons"></i>Sign In with Facebook</asp:LinkButton>
                                            <a class="btn btn-default google" onclick="login()"><i class="fa fa-google-plus modal-icons">
                                            </i>Sign In with Google </a>
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

                <div id="profile">
                    <div class="fb-like" data-share="true" data-width="450" data-show-faces="true">
                    </div>
                </div>
                </form>
            </div>
        </div>
        <div id="fb-root">
        </div>
        <!-- This initializes the FB controls-->
        <div class="fb-login-button" autologoutlink="true" scope="user_birthday,email">
        </div>
        <!-- FB Login Button -->
        <!-- Details -->
        <div id="auth-status">
            <div id="auth-loggedin" style="display: none">
                Hi, <span id="displayname"></span>
                <br />
                Your Facebook ID : <span id="FBId"></span>
                <br />
                Your Email : <span id="DisplayEmail"></span>
                <br />
                Your Sex:, <span id="Gender"></span>
                <br />
                Your Date of Birth :, <span id="DOB"></span>
                <br />
            </div>
        </div>
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
                            <li class="footli">
                                <a href="http://blog.organikong.com" onclick="window.open(this.href); return false;" onkeypress="window.open(this.href); return false;">Organikong Blog</a>
                                </li>
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
</body>
</html>
 