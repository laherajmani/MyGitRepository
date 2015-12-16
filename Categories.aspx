 <%@ Page Title="" Language="C#" MasterPageFile="ProductMasterPage.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="GroceryStore.Product.Categories" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register src="~/Cart/menu.ascx" tagname="menu" tagprefix="uc2" %>
<%--<%@ Register Src="~/Cart/BasketOffer.ascx" TagName="Basket" TagPrefix="ucBasket" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="ProductStyle.css" rel="stylesheet" type="text/css" />
    <script src="JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <style>
        #Categories-wrapper
        {
            /*margin-bottom:16%; /* ADD THIS */
            min-height: 560px;
            max-height: 100%;
        }
        .center
        {
            width: 120px;
            margin-top: 25px auto;
        }
    </style>

    <script type="text/javascript">
    $(document).ready(function () {
        //debugger;
        $.ajax({
            type: "POST",
            url: "AddtoCart.aspx/loadProducts",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: OnSuccess,
            failure: function (response) {
                alert(response.d);
            }
        });

        function OnSuccess(response) {
            //debugger;
            var ShoppingBody = "<table id='CartTable' class='table table-bordered'><thead><tr><th>Product Name</th> <th> Quantity </th> <th>Unit Price</th><th>Total Price</th> <th>Delete</th><th>Remove Quantity</th></tr></thead>";
            $.each(response.d._shoppingCartItem, function (index, data) {
                ShoppingBody += "<tr> <td> " + data.ProductName + "</td> <td>" + data.Quantity + " </td> <td>" + data.UnitPrice + " </td> <td> " + data.TotalPrice + "</td><td> <a id=" + data.ProductId + " class='del' href='javascript:void' data-val=" + data.ProductId + ">X</a> </td><td><a id=" + data.ProductId + " class='delPQuantity' href='javascript:void' data-val4=" + data.ProductId + ">-</a></td></tr>";

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
        $('.alertmsg1').text("Successfully Added  '" + ProductName + "'  in your cart");
        $('#dv1').slideDown('slow').delay("2000").slideUp('slow');
    }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Categories-wrapper">   


   

        <div id="Categories-PageWrapper">
            <div class="row">
                <div id="Breadcrumbs" style="">
                    <ol class="breadcrumb">
                        <li><a href="../Default.aspx" class="fa fa-home">OrganiKong Home</a></li>
                        <li class="active"><i class="fa fa-file">Product</i></li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-2 col-sm-offset-0" style=" padding:0 1 1 0">
                   <div>                
                    <div id="Grocery-menuDiv" style="">
                        <uc2:menu ID="Menu1" runat="server"></uc2:menu>
                    </div>
                   
                    <div id="PriceDiv" class="PriceDiv" style="overflow: auto; height: auto;width:auto; outline: #339900 solid 1px; vertical-align:middle;">
                        <h4 style=" text-align:center;">
                            <label class="label label-primary">
                                Price</label>
                            <asp:Button ID="btnReset" runat="server" Text="Reset" Class="btn btn-xs btn-danger"
                                OnClick="btnReset_Click" CausesValidation="False" UseSubmitBehavior="False" />
                        </h4>
                        <div style="overflow: auto; height: auto; outline: #339900 solid 1px; font-size:small;">
                            <asp:BulletedList ID="blPriceRange1" runat="server" OnClick="blPriceRange_Click"
                                DisplayMode="LinkButton" BackColor="White">
                                <asp:ListItem>Less than Rs.50</asp:ListItem>
                                <asp:ListItem>Rs.50 to Rs.200</asp:ListItem>
                                <asp:ListItem>Rs.201 to Rs.500</asp:ListItem>
                                <asp:ListItem>Rs.501 to Rs.1000</asp:ListItem>
                                <asp:ListItem>Rs.1001 to Rs.2000</asp:ListItem>
                            </asp:BulletedList>
                        </div>
                    </div>

                    <div id="brandDiv" class="BrandDiv">
                        <h4 style="text-align: center;">
                            <label class="label label-primary">
                                Brand</label>
                            <asp:Button ID="btnbrand13" runat="server" Text="Reset" 
                                Class="btn btn-xs btn-danger" 
                            CausesValidation="False" UseSubmitBehavior="False" onclick="btnbrand13_Click"/>
                        </h4>                       
                        <div  class="brandRadioDiv">
                            <asp:RadioButtonList ID="RDList3" runat="server" AutoPostBack="true"
                                onselectedindexchanged="RDList3_SelectedIndexChanged">
                            </asp:RadioButtonList>
                        </div>
                    </div>   
                   </div>               
                </div>
            
                <div class="col-sm-10" >
                <div class="row">
                <div class="col-sm-12">
 
                           <asp:ListView runat="server" ID="listViewCategories">
                           
                            <ItemTemplate>
                             <div class="col-sm-3">
                                  <div class="panel panel-success">
                                    <div class="panel-body" style=" height:220px">
                                        <div>
                                            <div>
                                                <asp:HiddenField ID="HFID" runat="server" Value='<%# Bind("ProductId")%>' />
                                            </div>
                                            <div class="img-responsive">
                                                <img src='<%#Eval("txtImage1_Url")%>' height="120" width="140" alt="Product" id="imgproduct" />
                                            </div>
                                            <label id="productname" style="font-size: smaller; width: 85%;">
                                                <%# Eval("ProductName") %>(<%# Eval("txtVariant_Value")%><%# Eval("txtVariant_Unit")%>)</label>
                                            <label>
                                                Price(Rs.):
                                                <%# Eval("Price_MRP", "{0:0.00}")%></label>
                                        </div>
                                    </div>                                                            
                                    <div class=" panel-primary panel-footer"> 
                                               <div style=" text-align:center;"> 
                                               <%--<a class="delPQuantity"><i class="fa fa-minus"></i></a>--%>                           
                                                <a onclick="Animate(this)" class="add" id="A1" href="javascript:void", data-val="<%#Eval("ProductId") %>" 
                                                data-val1="<%#Eval("ProductName") %>" data-val2="<%#Eval("Price_MRP", "{0:0.00}").ToString() %>" >Add To Cart
                                                <i class="fa fa-plus"></i>
                                                </a>
                                              </div> 
                                     </div>                                                               
                                   </div>    
                              </div>                        
                              
                            </ItemTemplate>
                           
                            <EmptyDataTemplate>
                                No Products found.
                            </EmptyDataTemplate>
                           </asp:ListView>    
                                  
                </div>
                </div>
                </div>
                             
             </div>
            </div>
              <div id="dv1" class="alert alert-success" role="alert" style=" left:0;  font-weight:bold; color:Black; font-family:Verdana;
        width:100%; display:none; position:fixed; text-align:center; top:0; z-index:1098;">
        
     <p class="alertmsg1"/>
</div>
        </div>  
</asp:Content>

<%--<div class="center">
                                            <div class="input-group">
                                                <span class="input-group-btn">
                                                    <button type="button" class="btn btn-danger btn-number" data-type="minus" data-field="quant[1]">
                                                        <span class="glyphicon glyphicon-minus"></span>
                                                    </button>
                                                </span>
                                                <input type="text" name="quant[1]" class="form-control input-number" value="1" min="1"
                                                    max="20">
                                                <span class="input-group-btn">
                                                    <button type="button" class="btn btn-success btn-number" data-type="plus" data-field="quant[1]">
                                                        <span class="glyphicon glyphicon-plus"></span>
                                                    </button>
                                                </span>
                                            </div>
                                        </div>--%>
<%-- <div class="col-sm-2" style="padding:0 0 0 0;">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            Basket Offer
                        </div>
                        <div class="panel-body" style="padding: 0 0 0 0; height: 180px; overflow: auto;">
                            <ucBasket:Basket id="Basket1"  runat="server">
                                </ucBasket:Basket>
                        </div>
                    </div>
                </div>--%>  