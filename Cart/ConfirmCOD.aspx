﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmCOD.aspx.cs" Inherits="GroceryStore.Cart.ConfirmCOD" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="../JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../JScript/bootstrap.min.js" type="text/javascript"></script>
    <link href="../font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="row">
    <br />
    </div>

        <div class="row">
            <div class="col-sm-2">
                <div id="firstdiv" class="img-responsive">
                    <a id="A3" class="navbar-brand" runat="server" href="~/" style="">
                        <img class="img-responsive" src="../img/OrganiKong.jpg" width="120px" height="60px"
                            alt="OrganiKong">
                    </a>
                </div>
            </div>
            <div class="col-sm-10">
                <div style="float: right;">
                    <ul class="list-inline">
                        <li role="presentation"><a class="fa fa-envelope" href="../Contact-Us">Contact Us</a></li>
                        <li role="presentation"><i class="fa fa-user"></i><label id="username" runat="server"></label></li>
                    </ul>
                </div>
            </div>
        </div>
     <div class="row">
         <div class="col-sm-12">
         <hr style=" margin-bottom:5px; margin-top:2px;"/>
         </div>
     </div>

     <div class="row">

                 <div id="OrderAlert" class="alert alert-success alert-dismissible" role="alert"
                     runat="server" visible="false">
                     <!--<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                         <span aria-hidden="true">&times;</span></button>-->
                     <strong>Alert!!</strong>You have Successfully place Order with C.O.D.<!--<a href="Plans.aspx" class="alert-link">
                         Choose a Plan here</a>-->
                 </div>

                 <div id="linksto" class="alert alert-info alert-dismissible" role="alert"
                     runat="server" visible="false">
                     <!--<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                         <span aria-hidden="true">&times;</span></button>-->
                     <!--<strong>Check</strong>--> To View Order Details <a href="../Customer/MyOrder.aspx" class="alert-link">
                         Click here</a>
                 </div>
     </div>

        </div>
    </form>
</body>
</html>