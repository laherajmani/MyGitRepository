<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VendorMaster.Master" AutoEventWireup="true" CodeBehind="CreateBasketOffer.aspx.cs" Inherits="GroceryStore.Vendor.CreateBasketOffer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $.ajax({
                type: "POST",
                url: "CreateBasket.aspx/loadProducts",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (response) {
                    alert(response.d);
                }
            });
            function OnSuccess(response) {
                var BasketBody = "<table id='BasketTable' class='table table-bordered'><thead><tr><th>Product Name</th> <th> Quantity </th> <th>Unit Price</th><th>Selling price</th><th>Total Price</th> <th>Remove</th></tr></thead>";
                $.each(response.d._BasketItem, function (index, data) {
                    BasketBody += "<tr> <td> " + data.ProductName + "</td> <td>" + data.Quantity + " </td> <td>" + data.UnitPrice + " </td> <td>" + data.SellingPrice + "</td> <td> " + data.NetPrice + "</td><td> <a id=" + data.ProductId + " class='del' href='javascript:void' data-val=" + data.ProductId + ">X</a> </td></tr>";
                })
                BasketBody += "</table>";
                $("#Items").html("");
                $("#Items").html(BasketBody);
                $("#totalPrice").html("");
                $("#GrandTotal").html("");
                $("#totalPrice").html(response.d.AllTotal);
                $("#GrandTotal").html(response.d.AllTotalWithVat);
                $('#ItemsNo').text(counter);
            }
        });
</script>
 <script type="text/javascript">
     $(function () {
         //debugger;
         $(".add").click(function () {
             var ProductId = $(this).attr("data-val");
             var ProductName = $(this).attr("data-val1");
             var UnitPrice = $(this).attr("data-val2");
             var Discount = $(this).attr("data-val3");
             var SellingPrice = $(this).attr("data-val4");
             $.ajax({
                 type: "POST",
                 url: "CreateBasket.aspx/AddProduct",
                 data: '{ProductId: "' + ProductId + '",ProductName:"' + ProductName + '", UnitPrice:"' + UnitPrice + '",Discount:"' + Discount + '",SellingPrice:"' + SellingPrice + '"}',
                 contentType: "application/json; charset=utf-8",
                 dataType: "json",
                 success: OnSuccess,
                 failure: function (response) {
                     alert(response.d);
                 }
             });
         });

         //Remove item in cart
         $(document).on('click', '.del', $(this).attr("data-val"), function () {
             if (counter > 0) {
                 counter = counter - 1;
             }
             else {
                 count = 0;
             }
             var ProductId = $(this).attr("data-val");
             //alert("ashish");
             $.ajax({
                 type: "POST",
                 url: "CreateBasket.aspx/DelProduct",
                 data: '{ProductId: "' + ProductId + '"}',
                 contentType: "application/json; charset=utf-8",
                 dataType: "json",
                 success: OnSuccess,
                 failure: function (response) {
                     alert(response.d);
                 }
             });
         });
     });
     var counter = 0;
     function OnSuccess(response) {
         var BasketBody = "<table id='BasketTable' class='table table-bordered'><thead><tr><th>Product Name</th> <th> Quantity </th> <th>Unit Price</th><th>Selling price</th><th>Total Price</th> <th>Remove</th></tr></thead>";
         $.each(response.d._BasketItem, function (index, data) {
             BasketBody += "<tr> <td> " + data.ProductName + "</td> <td>" + data.Quantity + " </td> <td>" + data.UnitPrice + " </td> <td>"+ data.SellingPrice+"</td> <td> " + data.NetPrice + "</td><td> <a id=" + data.ProductId + " class='del' href='javascript:void' data-val=" + data.ProductId + ">X</a> </td></tr>";
         })
         BasketBody += "</table>";
         $("#Items").html("");
         $("#Items").html(BasketBody);
         $("#totalPrice").html("");
         $("#GrandTotal").html("");
         $("#totalPrice").html(response.d.AllTotal);
         $('#<%= HFTotal.ClientID %>').val(response.d.AllTotal);
         //$("#totalPrice").val(response.d.AllTotal);
         $("#GrandTotal").html(response.d.AllTotalWithVat);
         $('#ItemsNo').text(counter);
     }
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%=txtdiscout.ClientID%>").change(function () {
                debugger;
                var totPrice = parseFloat($('#totalPrice').html());
                var TotalVar = parseFloat($("input[name*='txtdiscout']").val());
                var discountValue = parseFloat((totPrice / 100) * TotalVar);
                var net = parseFloat(totPrice - discountValue);
                $('#<%= lblnetBasketAmount.ClientID%>').html(net);
                $('#<%= HFDiscount.ClientID %>').val(net);
            });

            $(function () {
                $(':text').bind('keydown', function (e) {
                    //on keydown for all textboxes
                    if (e.target.className != "searchtextbox") {
                        if (e.keyCode == 13) { //if this is enter key
                            e.preventDefault();
                            return false;
                        }
                        else
                            return true;
                    }
                    else
                        return true;
                });
            });
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="BP-wrapper">
<div id="BP-page-wrapper">
    <div class="panel panel-default">
        <div class="panel-heading">
            Create Basket</div>
     <div class="panel-body">
            <table class="table">
                <thead>
                    <tr>
                        <th>
                            Select Category
                        </th>
                        <th>
                            Select Sub Category
                        </th>
                        <th>
                            Select Child Category
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div class="form-group">
                                <asp:DropDownList ID="ddlCategory" runat="server" Width="150px" class="form-group"
                                    OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="True">
                                </asp:DropDownList>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <asp:DropDownList ID="ddlSubCategory" runat="server" Width="150px" class="form-group"
                                    OnSelectedIndexChanged="ddlSubCategory_SelectedIndexChanged" AutoPostBack="True">
                                </asp:DropDownList>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <asp:DropDownList ID="ddlChildCategory" runat="server" Width="150px" AutoPostBack="true"
                                    class="form-group" OnSelectedIndexChanged="ddlChildCategory_SelectedIndexChanged">
                                </asp:DropDownList>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
     </div>

    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            Select Product for Basket</div>
        <div class="panel-body">
            <asp:ListView runat="server" ID="ListViewBasketOffer" GroupItemCount="5" >
                <LayoutTemplate>
                    <div>
                        <asp:PlaceHolder runat="server" ID="groupPlaceHolder" />
                    </div>
                </LayoutTemplate>
                <GroupTemplate>
                    <div style="clear: both; width: auto;">
                        <asp:PlaceHolder runat="server" ID="itemPlaceHolder" />
                    </div>
                </GroupTemplate>
                <ItemSeparatorTemplate>
                    <div class="itemSeparator">
                    </div>
                </ItemSeparatorTemplate>
                <GroupSeparatorTemplate>
                    <div class="groupSeparator">
                    </div>
                </GroupSeparatorTemplate>

                <ItemTemplate>
                    <div class="productItem">
                        <div>
                            <asp:HiddenField ID="HFID" runat="server" Value='<%# Eval("ProductId")%>' />
                        </div>
                        <div class="row img-responsive">
                            <img src='<%# "../" + Eval("txtImage1_Url") %>' height="80 !important" width="120 !important"
                                alt="Product" id="imgproduct" />
                        </div>
                        <div class="row">
                           <h5> <b>
                                <%# Eval("ProductName") %></b></h5>
                        </div>
                        <div class="row">
                            <%# Eval("txtVariant_Name")%>
                            <%# Eval("txtVariant_Value")%>
                            <%# Eval("txtVariant_Unit")%>
                        </div>
                        <div class="row">
                            Price(Rs.)<%# Eval("Price_MRP", "{0:0.00}")%></div>
                        <div class="row">
                            Discount(Rs.)<%# Eval("Product_Discount", "{0:0.00}")%><%--<asp:Label runat="server" ID="lblAddress12" Text=''></asp:Label>--%></div>
                        <div class="row">
                            Selling Price(Rs.)<%# Eval("selling_Price", "{0:0.00}")%><%--<asp:Label runat="server" ID="Label1" Text=''></asp:Label>--%></div>
                        <div class="row">
                            <div class="form-group has-success" style="margin-top: 4px;">
                                <%--<asp:CheckBox ID="Chkid" class="form has-success" runat="server" onclick="javascript:SelectSingleCheckbox(this.id)"
                                  Text="Add to Basket" />--%>
              <a class="add" id="A1" href="javascript:void", data-val="<%#Eval("ProductId") %>" data-val1="<%#Eval("ProductName") %>" data-val2="<%#Eval("Price_MRP", "{0:0.00}").ToString() %>"
               data-val3="<%# Eval("Product_Discount", "{0:0.00}")%>" data-val4="<%# Eval("selling_Price", "{0:0.00}")%>">Add To Basket</a>
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

    <div class="panel panel-default">
        <div class="panel-heading">
            Create Basket</div>
        <div class="panel-body">
          <div class="row">
            <div class="col-xs-9">
                                <div id="shopping Cart" style="height: auto;">
                                    <div id="Items" class="table-responsive" height: 20%;">

                                    </div>
                                </div>
                            </div>
              <div class="col-xs-3">
                  <div>
                      <span style="color: Green; font-weight: bold;">Total Basket Price: </span><span id="totalPrice">
                      </span>
                      <%--<div id="totalPrice">
                      </div>--%>
                      <div>
                          <span class="input-group" style="color: Green; font-weight: bold;">Discount(%): </span>
                          <asp:TextBox ID="txtdiscout" class="input-group" runat="server"></asp:TextBox>
                          <br />
                          <span class="input-group" style="color: Green; font-weight: bold;">Basket Value:</span>
                          <label id="lblnetBasketAmount" runat="server">
                          </label>
                      </div>
                      <div>
                          <span class="input-group" style="color: Green; font-weight: bold;">Basket Name:</span><asp:TextBox
                              ID="txtBasketName" class="input-group" runat="server" ToolTip="Name of Basket"></asp:TextBox>
                      </div>
                      <br />
                      <asp:Button ID="btncreatebasket" runat="server" Text="Create Basket" class="btn btn-success"
                          USeSubmitBehaviour="false" CausesValidation="false" OnClick="btncreatebasket_Click" />
                      <asp:HiddenField ID="HFDiscount" runat="server" />
                      <asp:HiddenField ID="HFTotal" runat="server" />
                  </div>
              </div>
          </div>
        </div>
    </div>
 
</div>
</div>
</asp:Content>


  <%--<tr>
                                                        <td colspan="2">
                                                            <div style="margin-left: 62px;">
                                                                <asp:LinkButton ID="lnkUpdateAddress" Class="btn btn-xs btn-success" runat="server"
                                                                    Text="Edit" OnClick="EditAdress"></asp:LinkButton>
                                                                &nbsp;
                                                                <asp:Button ID="btnDelete" runat="server" Text="Delete" Class="btn btn-xs btn-danger"
                                                                    CommandName="Delete" OnClientClick="return deleteConfirm();" />
                                                            </div>
                                                        </td>
                                                    </tr>--%>
  <%--  <asp:PlaceHolder runat="server" ID="groupPlaceHolder" />--%>
  <%--<asp:DataPager ID="DataPager1" runat="server" PagedControlID="VendorId" PageSize="1">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="true"
                                                ShowNextPageButton="false" />
                                            <asp:NumericPagerField ButtonType="Link" />
                                            <asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="true" ShowLastPageButton="false"
                                                ShowPreviousPageButton="false" />
                                        </Fields>
                                    </asp:DataPager>--%>

  <%--<td>
                        <div class="AddressItem" style="width: 100%; height: 60%; font-size: small; font-weight: lighter;">
                            <table class="table" data-height="20" style="">
                                <tr hidden="hidden">
                                    <td>
                                        <asp:Label runat="server" ID="Label1" Text='<%# Eval("ProductId")%>' Visible="false"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblNickname" Text='<%# Eval("ProductName")%>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src='<%# "../" + Eval("txtImage1_Url") %>' height="120 !important" width="140 !important"
                                            alt="Product" id="imgproduct" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblAddress11" Text='<%# Eval("Price_MRP")%>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblAddress12" Text='<%# Eval("Product_Discount")%>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblCity13" Text='<%# Eval("selling_Price")%>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <div class="form-group has-success" style="margin-top: 4px;">
                                            <asp:CheckBox ID="Chkid" class="form has-success" runat="server" onclick="javascript:SelectSingleCheckbox(this.id)"
                                                Text="Add to Basket List" />
                                        </div>
                                    </td>
                                </tr>
                            </table>
                             </div>
                    </td>--%>