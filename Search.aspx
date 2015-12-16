<%@ Page Title="" Language="C#" MasterPageFile="ProductMasterPage.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="GroceryStore.Product.Search" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="../JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
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
            var ShoppingBody = "<table id='CartTable' class='table table-bordered'><thead><tr><th>Product Name</th> <th> Quantity </th> <th>Unit Price</th><th>Total Price</th> <th>Remove</th></tr></thead>";
            $.each(response.d._shoppingCartItem, function (index, data) {
                ShoppingBody += "<tr> <td> " + data.ProductName + "</td> <td>" + data.Quantity + " </td> <td>" + data.UnitPrice + " </td> <td> " + data.TotalPrice + "</td><td> <a id=" + data.ProductId + " class='del' href='javascript:void' data-val=" + data.ProductId + ">X</a> </td></tr>";

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
    function AnimateCart() {
        $('#dv4').fadeIn('slow').delay("slow").hide("slow");
    }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="search-Wrapper">
    <div id="dv4" class="alert alert-danger" role="alert" style=" width:60%; display:none; position:fixed; top:60px; z-index:999;">
               <strong>Successfully!</strong> Item Added in your Cart
    </div>
    <div id="search-PageWrapper">        
        <div id="container">
        <div class="row">
         <div class="col-sm-12">
          <div id="Breadcrumbs" style="">
                    <ol class="breadcrumb">
                        <li><a href="Default.aspx" class="fa fa-home">OrganiKong Home</a></li>
                        <li class="active"><i class="fa fa-search">Search Result</i></li>
                    </ol>
          </div>
         </div>
        </div>
            <div class="row">
                <div class="col-sm-12">
                    <asp:ListView runat="server" ID="listViewSearch">
                        <ItemTemplate>
                            <div class="col-sm-3">
                                    <div class="panel panel-success">
                                        <div class="panel-body" style=" height:220px">
                                            <div>
                                                <asp:HiddenField ID="HFID" runat="server" Value='<%# Bind("ProductId")%>' />
                                            </div>
                                            <div class="img-responsive">
                                                <img src='<%# Eval("ImagePath")%>' height="120" width="140" alt="Product" id="imgproduct" />
                                            </div>
                                            <label id="productname" style="font-size: smaller; width: 85%;">
                                                <%# Eval("ProductName") %>(<%# Eval("txtVariant_Value")%><%# Eval("txtVariant_Unit")%>)</label>
                                            <label>
                                                Price(Rs.):
                                                <%# Eval("Price_MRP", "{0:0.00}")%></label>
                                        </div>
                                <div class=" panel-primary panel-footer"> 
                                        <div style=" text-align:center;">
                                       <a onclick="AnimateCart()" class="add" id="A1" href="javascript:void", data-val="<%#Eval("ProductId") %>" data-val1="<%#Eval("ProductName") %>" 
                                       data-val2="<%#Eval("Price_MRP", "{0:0.00}").ToString() %>">Add To Cart</a>
                                </div>
                               </div>
                                
                              </div>
                            </div>
                        </ItemTemplate>
                        <EmptyDataTemplate>
                            <div class="emptyTemplete">
                                Sorry - No products in this Pincode.
                            </div>
                        </EmptyDataTemplate>
                                
                    </asp:ListView>
                </div>           
            </div>
        </div>
    </div>
</div>
</asp:Content>