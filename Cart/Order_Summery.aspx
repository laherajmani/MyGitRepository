<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order_Summery.aspx.cs" Inherits="GroceryStore.Cart.Order_Summery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Summery</title>
     <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="../JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../JScript/bootstrap.min.js" type="text/javascript"></script>
    <link href="../font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

      <script type="text/javascript">
          //debugger;
          function myfunction() {
              var r = alert("Order Place successfully.");
                  location.href = "../Default.aspx";
          }
        </script>
</head>
<body>
    <form id="form1" runat="server">
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

        <div class="container">
          
            <div class="row"  style=" margin-top:150px;">

 <div class="col-md-8">
            <div class="panel panel-danger" >
                                <div class="panel-heading">
                                    <h2 class="panel-title">
                                        Your Order Final Summery</h2>
                                </div>
                                <div class="panel-body">
                                    <asp:GridView ID="GVfinal" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                                        AutoGenerateColumns="False" DataKeyNames="ProductId" OnRowDataBound="GVfinal_RowDataBound"
                                        ShowFooter="True" Width="90%" CssClass="table">
                                        <Columns>
                                            <asp:TemplateField HeaderText="VId" ShowHeader="false" HeaderStyle-CssClass="visible-desktop"
                                                ItemStyle-CssClass="visible-desktop" Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblVendorId" runat="server" Text='<%# Eval("VendorId") %>' />
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="visible-desktop"></HeaderStyle>
                                                <ItemStyle CssClass="visible-desktop"></ItemStyle>
                                            </asp:TemplateField>
                                            <%--<asp:BoundField DataField="VendorId" HeaderText="VId" Visible="false" />--%>
                                            <asp:TemplateField HeaderText="Id" HeaderStyle-CssClass="visible-desktop" ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblpro" runat="server" Text='<%# Eval("ProductId") %>' />
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="visible-desktop"></HeaderStyle>
                                                <ItemStyle CssClass="visible-desktop"></ItemStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Product Name" HeaderStyle-CssClass="visible-desktop"
                                                ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblproname" runat="server" Text='<%# Eval("ProductName") %>' />
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="visible-desktop"></HeaderStyle>
                                                <ItemStyle CssClass="visible-desktop"></ItemStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="MRP" HeaderStyle-CssClass="visible-desktop" ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblMRP" runat="server" Text='<%# Eval("MRP") %>' />
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="lblTotalMRP" runat="server" />
                                                </FooterTemplate>
                                                <HeaderStyle CssClass="visible-desktop"></HeaderStyle>
                                                <ItemStyle CssClass="visible-desktop"></ItemStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Discount" HeaderStyle-CssClass="visible-desktop" ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lbldiscount" runat="server" Text='<%# Eval("Discount") %>' />
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="lbltotalDiscount" runat="server" />
                                                </FooterTemplate>
                                                <HeaderStyle CssClass="visible-desktop"></HeaderStyle>
                                                <ItemStyle CssClass="visible-desktop"></ItemStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Selling Price" HeaderStyle-CssClass="visible-desktop"
                                                ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSellingPrice" runat="server" Text='<%# Eval("Selling Price") %>' />
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="lblTotalPrice" runat="server" />
                                                </FooterTemplate>
                                                <HeaderStyle CssClass="visible-desktop"></HeaderStyle>
                                                <ItemStyle CssClass="visible-desktop"></ItemStyle>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Product Available" HeaderText="Is Available" ItemStyle-CssClass="hidden-phone"
                                                HeaderStyle-CssClass="hidden-phone">
                                                <HeaderStyle CssClass="hidden-phone"></HeaderStyle>
                                                <ItemStyle CssClass="hidden-phone"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Quantity" HeaderStyle-CssClass="visible-desktop" ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("Quantity") %>' />
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="lbltotalquantity" runat="server" />
                                                </FooterTemplate>
                                                <HeaderStyle CssClass="visible-desktop"></HeaderStyle>
                                                <ItemStyle CssClass="visible-desktop"></ItemStyle>
                                            </asp:TemplateField>
                                        </Columns>
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                    </asp:GridView>

                                    
                                </div>
                            </div>
</div>
<div class="col-md-4">
<div class="panel panel-primary">
<div class="panel-heading">
<h2>Your Shipping Address</h2>
</div>
<div class="panel-body">
<asp:Repeater ID="AddressRpt" runat="server">
    <ItemTemplate>
                                  
  <div class="AddressItem" style="width: 100%; height:60%; font-size:small; font-weight:lighter;">
                                                <table class="table" data-height="20" style="">
                                                   
                                                    <tr>
                                                        <td>
                                                            <label>
                                                                Address Line 1:</label>
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblAddress10" Text='<%# Eval("Cust_Address_1")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>
                                                                Address Line 2:</label>
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblAddress11" Text='<%# Eval("Street")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>
                                                                Address Line 3:</label>
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblAddress12" Text='<%# Eval("LandMark")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>
                                                                City:</label>
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblCity13" Text='<%# Eval("City")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>
                                                                State:</label>
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblState14" Text='<%# Eval("State")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>
                                                                Pincode:</label>
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblPincode15" Text='<%# Eval("Pincode")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>
                                                                Country:</label>
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblCountry16" Text='<%# Eval("Country")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    </table>
                                                    </div>
                                                    </ItemTemplate>
                                                    
                                                   
</asp:Repeater>

</div>
</div>


</div>

    
            
            </div>
            <div class="row">
          
            <div class="col-sm-12" style="float:right;"><asp:Button ID="btnConfirmOrder" runat="server" Text="Confirm Order" class="btn btn-success btn-lg" OnClick="ConfirmOrder" /></div>
            </div>

          
            </div>

    </div>
    
    </form>
</body>
</html>
