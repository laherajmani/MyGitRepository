<%@ Page Title="OrganiKong,Delhi's own online grocery shopping store" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="GroceryStore._Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register src="~/Cart/menu.ascx" tagname="menu" tagprefix="uc2" %>
<%@ Register Src="~/Cart/BasketOffer.ascx" TagName="Basket" TagPrefix="ucBasket" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

<meta name="viewport" content="width=device-width, initial-scale=1"> 
    <link href="css/sb-admin.css" rel="stylesheet" type="text/css" />
  <style type="text/css">
  .carousel-inner > .item > img, .carousel-inner > .item > a > img
        {
            width: 100%;
            height: 250px !important;
           /* margin: auto;*/
          /*  max-height: 300px;*/
            /*height: 100%;*/
        }
  </style>

  <script type="text/javascript">
      $(document).ready(function () {
          $('.carousel').carousel({
              interval: 3600
          })
      });
  </script>

<link rel="canonical" href="http://www.OrganiKong.com"/>
<%-- style="margin-left: 10px;"--%>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="row">
        <div class="col-lg-12">
            <div class="row">
                <div class="col-lg-2">
                    <div id="Grocery-menuDiv" class="table">
                        <uc2:menu ID="Menu1" runat="server"></uc2:menu>
                    </div>
                </div>

                <div class="col-lg-10 pull-right" style=" padding:0;">
                 <div class="pull-right">
                    <ul class="nav nav-sm nav-pills">
                        <li class="active" role="presentation"><a class="fa fa-shopping-cart" href="AllBasketOffer.aspx?OfferId=1">Offers Zone</a></li>
                        <li class="active" role="presentation"><a class="fa fa-link" href="#" onclick="window.open('../Vendor/VendorLogin.aspx','mywindow','width=1100,height=500');">
                            Sell With Us</a></li>
                        <%--<li class="active" id="login2" runat="server" visible="false" role="presentation"><a class="fa fa-sign-in" data-toggle="modal"
                            role="button" href="#login-modal">Login</a> </li>
                        <li  id="loggedinLI" runat="server" class="dropdown" visible="false"><a href="#" class="dropdown-toggle"
                            data-toggle="dropdown"><i class="fa fa-user"></i>
                            <label id="lblUserName1" runat="server">
                            </label>
                            <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="Customer/MyProfile.aspx"><i class="fa fa-fw fa-user"></i>Profile</a>
                                </li>
                                <li><a href="Logout.aspx"><i class="fa fa-fw fa-power-off"></i>Log Out</a> </li>
                            </ul>
                        </li>--%>
                     <%--   <li class="active" role="presentation" id="lisignup" runat="server"><a class="fa fa-user" href="Customer/UserRegister.aspx">
                            SignUp</a></li>--%>
                    </ul>
                 </div>
                </div>
            </div>

            <div class="row">

                <div id="imageRotator" class="col-lg-9 pull-right" style="padding: 0 0 0 0; margin-left: 2px !important;">
                    <div id="wrapperDef" style="margin-top: 1%;">
                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img class="img-responsive" src="Images/bannerSpice.jpg" height="267px !important"
                                        alt="OrganiKong" />
                                </div>
                                <div class="item">
                                    <img class="img-responsive" src="img/organicstamp1.jpg" height="100px !important"
                                        alt="OrganiKong">
                                </div>
                                <div class="item">
                                    <img class="img-responsive" src="Images/Wekiran-staples.png" height="267px !important"
                                        alt="OrganiKong" />
                                </div>
                            </div>
                            <!-- Left and right controls -->
                            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">
                                    Previous</span> </a><a class="right
                            carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="glyphicon
                            glyphicon-chevron-right" aria-hidden="true"></span><span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>

                    <div class="row" style="margin-top: 2px !important">
                        <div class="col-sm-12 col-sm-offset-0">
                            <div class="panel panel-primary" style="border: none;">
                                <div class="panel-body" style="height: 180px;">
                                    <ucBasket:Basket ID="Basket1" runat="server"></ucBasket:Basket>
                                </div>
                             
                            </div>
                               <a href="AllBasketOffer.aspx?OfferId=1" style="float: right;">View All offer's</a>
                            <%--<a id="ViewAllBasket" href="ViewAllOffer's.aspx?OfferId=1" style="float: right;">View
                                All Offer's</a>--%>
                        </div>
                    </div>
                </div>              
             </div>            
        </div>
    </div>
</asp:Content>
  <%--<a id="ViewAllBasket" href="ViewAllOffer's.aspx?OfferId=1" style="float: right;">View
                                All Offer's</a>--%>
<%--<div class="col-sm-4 col-sm-offset-0">
                            <div class="panel panel-green">
                                <%--<div class="panel-heading" style="padding: 5px 10px;">
                                Fresh Dairy Product
                            </div>
                                <%--<div class="panel-body" >
                                    <div class="img-responsive" style="background-image: url(Images/dairy-products-Home.jpg);
                                        background-repeat: no-repeat; background-position: center; width: 398px  !important;
                                        height: 180px  !important;">
                                        <a href="Category.aspx?id=2"><span style="margin-top: 8px; margin-left: 12px;">Shop
                                            Now</span></a>
                                    </div>
                                </div>
                            </div>
                            <!-- /.col-lg-4 -->
                        </div>
                        <%--<div class="col-sm-4 col-sm-offset-0">
                            <div class="panel panel-red">
                                <%--                            <div class="panel-heading" style="padding: 5px 10px;">
                                Grocery & Staples
                            </div>
                                <%--<div class="panel-body" >
                                    <div class="img-responsive" style="background-image: url(Images/Wholegrains.jpg);
                                        width: 390px  !important; height: 180px  !important;">
                                        <a href="Category.aspx?id=1"><span style="margin-top: 8px; margin-left: 12px;">Shop
                                            Now</span></a>
                                    </div>
                                </div>
                            </div>
                            <!-- /.col-lg-4 -->
                        </div>--%>
<%--<script type="text/javascript">
    var settings = $("#mulitplefileuploader").uploadFile({
        url: "Handler/MultiFileUploader.ashx",
        method: "POST",
        allowedTypes: "jpg,png,gif,mp4,ogv,webm",
        fileName: "myfile",
        multiple: true,
        data:""
        autoSubmit: false,
        onSuccess: function (files, data, xhr) {
            $("#status").html("<font color='green'>Upload is success</font>");
        },
        onError: function (files, status, errMsg) {
            $("#status").html("<font color='red'>Upload is Failed</font>");
        }
    });   
</script>--%>