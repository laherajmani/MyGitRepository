<%@ Page Title="" Language="C#" MasterPageFile="ProductMasterPage.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="GroceryStore.Product.Category" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register src="~/Cart/menu.ascx" tagname="menu" tagprefix="uc2" %>
<%--<%@ Register Src="~/Cart/BasketOffer.ascx" TagName="Basket" TagPrefix="ucBasket" %>--%>
<%@ MasterType VirtualPath="ProductMasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="ProductStyle.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.9.1.js" type="text/javascript"></script>
    <style>
        #Category-Wrapper
        {
            min-height: 650px;
            max-height: 100%;
        }
        .dropdown-menu
        {
          z-index:1 !important;
        }
        .CartMsg
        {
             font-size:larger;
              font-weight:bold;
              color:Green;
            }
     
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            //debugger;
            $.ajax({
                type: "POST",
                url: "AddtoCart.aspx/loadProducts",
                data: {},
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (response) {
                    alert(response.d);
                }
            });

            function OnSuccess(response) {
                // debugger;
                var ShoppingBody = "<table id='CartTable' class='table table-bordered'><thead><tr><th>Product Name</th> <th> Quantity </th> <th>Unit Price</th><th>Total Price</th> <th>Remove Quantity</th><th>Delete</th></tr></thead>";
                $.each(response.d._shoppingCartItem, function (index, data) {
                 ShoppingBody += "<tr> <td> " + data.ProductName + "</td> <td>" + data.Quantity + " </td> <td>" + data.UnitPrice + " </td> <td> " + data.TotalPrice + "</td> <td><a id=" + data.ProductId + " class='delPQuantity' href='javascript:void' data-val4=" + data.ProductId + ">-</a></td> <td> <a id=" + data.ProductId + " class='del' href='javascript:void' data-val=" + data.ProductId + ">X</a> </td> </tr>";

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
<script type="text/javascript">
    function Animate(obj) {
        var ProductName = $(obj).data('val1');
    
        $('.alertmsg').text("Successfully Added  '" + ProductName + "'  in your cart");
        $('#dv').slideDown('slow').delay("2000").slideUp('slow');
    }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Category-Wrapper">
   
        <div id="Cate-pageWrapper">
            <div class="row">
                <div id="Breadcrumbs" >
                    <ol class="breadcrumb">
                        <li><a href="../Default.aspx" class="fa fa-home">OrganiKong Home</a></li>
                        <li class="active"><i class="fa fa-file">Product</i></li>
                    </ol>
                </div>
            </div>

            <div class="row"> 
                <div class="col-sm-2 col-sm-offset-0" style="padding: 0 1 1 0">
                    <div id="Grocery-menuDiv" >
                        <uc2:menu ID="Menu1" runat="server"></uc2:menu>
                    </div>
                    <div class="clearfix">
                    </div>
                    <div id="PriceDiv" class="PriceDiv" style="overflow: auto; height: auto; width: auto; outline: #339900 solid 1px; vertical-align: middle;" >
                        <h4 style="text-align:center;">
                            <label class="label label-primary">
                                Price</label>
                            <asp:Button ID="btnReset11" runat="server" Text="Reset" OnClick="btnReset11_Click"
                                CausesValidation="False" Class="btn btn-xs btn-danger" UseSubmitBehavior="False" />
                        </h4>
                        <div style="overflow: auto; height: auto; outline: #339900 solid 1px;">
                            <asp:BulletedList ID="blPriceRange" runat="server" OnClick="blPriceRange_Click" DisplayMode="LinkButton">
                                <asp:ListItem>Less than Rs.50</asp:ListItem>
                                <asp:ListItem>Rs.50 to Rs.200</asp:ListItem>
                                <asp:ListItem>Rs.201 to Rs.500</asp:ListItem>
                                <asp:ListItem>Rs.501 to Rs.1000</asp:ListItem>
                                <asp:ListItem>Rs.1001 to Rs.2000</asp:ListItem>
                            </asp:BulletedList>
                        </div>
                    </div>
                    <div class="clearfix">
                    </div>
                    <div id="brandDiv" class="BrandDiv">
                        <h4 style="text-align: center;">
                            <label class="label label-primary">
                                Brand</label>
                            <asp:Button ID="btnbrand11" runat="server" Text="Reset" Class="btn btn-xs btn-danger"
                                OnClick="btnbrand11_Click" CausesValidation="False" UseSubmitBehavior="False" />
                        </h4>
                        <div class="brandRadioDiv">
                            <asp:RadioButtonList ID="RDList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="RDList_SelectedIndexChanged">
                            </asp:RadioButtonList>
                        </div>
                    </div>
                </div>
                <%--style="padding:8 1 1 5; "--%>
                <div class="col-sm-10">
                <div class="row">
                <div class="col-sm-12">
                      <asp:ListView runat="server" ID="listViewCategory" OnItemDataBound="listViewCategory_ItemDataBound">

                        <ItemTemplate>                                                     
                                <div class="col-sm-3">
                                    <div class="panel panel-success">
                                        <div class="panel-body" style=" height:220px">
                                            <div>
                                                <asp:HiddenField ID="HFID" runat="server" Value='<%# Bind("ProductId")%>' />
                                            </div>
                                                <div class="img-responsive">
                                                    <img src='<%#Eval("txtImage1_Url")%>' height="120" width="140" alt="Product" id="imgproduct" class="proimz"
                                                        runat="server" />
                                                    <%--<asp:Image ImageUrl='<%#Eval("txtImage1_Url")%>' runat="server" height="120" width="140" alt="Product" id="imgproduct"/>--%>
                                                </div>
                                                <label id="productname" style="font-size: smaller;width:100%;">
                                                    <%# Eval("ProductName") %></label><br />
           
                                                <label style="font-size: smaller; ">(<%# Eval("txtVariant_Value")%><%# Eval("txtVariant_Unit")%>)</label><br />
                                                <label style="font-size: smaller;">Price(Rs.):<%# Eval("Price_MRP", "{0:0.00}")%></label>                                        
                                        </div>
                                        <div class=" panel-primary panel-footer"> 
                                        <div style=" text-align:center;">                                                                 
                                                 <a onclick="Animate(this)" class="add" id="A1" href="javascript:void", data-val="<%#Eval("ProductId") %>" data-val1="<%#Eval("ProductName") %>" 
                                           data-val2="<%#Eval("Price_MRP", "{0:0.00}").ToString() %>" data-val3="<%#Eval("txtImage1_Url")%>">Add To Cart <i class="fa fa-plus"></i></a>
                                           
                                           </div>
                                       </div> 
                                   </div>
                               </div>                         
                        </ItemTemplate>
          
                        <EmptyDataTemplate>
                            No Product Found.
                        </EmptyDataTemplate>
                    </asp:ListView>
                    </div>
                </div>
                </div>
                
                
           </div>
        </div> 
          
        
    </div>
       <div id="dv" class="alert alert-success" role="alert" style=" left:0;  font-weight:bold; color:Black; font-family:Verdana;
        width:100%; display:none; position:fixed; text-align:center; top:0; z-index:1098;">
        
     <p class="alertmsg"/>
          
        
    </div>        
</asp:Content>

<%--<div class="col-sm-2" style="padding:0 0 0 0;">
                    <div class="panel panel-info">
                        <div class="panel-heading"                            Basket Offer
                        </div>
                        <div class="panel-body" style="padding: 0 0 0 0; height: 180px; overflow: auto;">
                            <ucBasket:Basket id="Basket1"  runat="server">
                                </ucBasket:Basket>
                        </div>
                    </div>
                </div>--%>