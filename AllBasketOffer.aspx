<%@ Page Title="" Language="C#" MasterPageFile="~/BasketMaster.Master" AutoEventWireup="true" CodeBehind="AllBasketOffer.aspx.cs" Inherits="GroceryStore.AllBasketOffer" %>
<%@ Register Src="~/Cart/BasketOffer.ascx" TagName="Basket" TagPrefix="ucBasket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="ProductStyle.css" rel="stylesheet" type="text/css" />
<script src="JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        //debugger;
        $.ajax({
            type: "POST",
            url: "AddBasketOrder.aspx/loadProducts",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: OnSuccess,
            failure: function (response) {
                alert(response.d);
            }
        });

       function OnSuccess(response) {
           var ShoppingBody = "<table id='CartTable' class='table table-bordered'><thead><tr><th>Product Name</th> <th> Quantity </th> <th>Unit Price</th><th>Delete</th><th>Remove Quantity</th></tr></thead>";
           $.each(response.d._BasketOrderItem, function (index, data) {
               ShoppingBody += "<tr> <td> " + data.BasketName + "</td> <td>" + data.Quantity + " </td> <td>" + data.UnitPrice + " </td> <td> <a id=" + data.BasketId + " class='del' href='javascript:void' data-val=" + data.BasketId + ">X</a> </td><td><a id=" + data.BasketId + " class='delQuantity' href='javascript:void' data-val4=" + data.BasketId + ">-</a></td></tr>";
           })
           ShoppingBody += "</table>";
           $("#Items").html("");
           $("#Items").html(ShoppingBody);
           $("#totalPrice").html("");
           $("#GrandTotal").html("");
           $("#totalPrice").html(response.d.AllTotal);
           $("#GrandTotal").html(response.d.AllTotalWithVat);
           $('#ItemsNo').text(counter);
           var x = document.getElementById("CartTable").rows.length;
           document.getElementById("ItemsNo").innerHTML = x - 1;       
        }
    });
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="Allbasket-wrap">

        <div id="Allbasket-PageWrap">
            <div class="container">
                <div class="row">
                    <hr style="margin-top: 17px; margin-bottom:7px;" />
                </div>
                <div class="row">
                <div id="Breadcrumbs" style="">
                    <ol class="breadcrumb">
                        <li><a href="Default.aspx" class="fa fa-home">OrganiKong Home</a></li>
                        <li class="active"><i class="fa fa-file">Basket's Offer</i></li>
                    </ol>
                </div>
            </div>
                <div class="row" style="height: auto;">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h4>
                                All Basket Offers</h4>
                        </div>
                        <div class="panel-body">
                            <ucbasket:basket id="Basket1" runat="server"></ucbasket:basket>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>
</asp:Content>
