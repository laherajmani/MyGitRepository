<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerOrder.aspx.cs" Inherits="GroceryStore.Cart.CustomerOrder" %>

<!DOCTYPE html>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<html>
<head runat="server">
    <title>Place Order</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="../JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../JScript/bootstrap.min.js" type="text/javascript"></script>
    <link href="../font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="cartstyle.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">
        //debugger;
        function SelectSingleCheckbox(Chkid) {
            var chkbid = document.getElementById(Chkid);
            var chkList = document.getElementsByTagName("input");
            for (i = 0; i < chkList.length; i++) {
                if (chkList[i].type == "checkbox" && chkList[i].id != chkbid.id) {
                    chkList[i].checked = false;
                }
            }
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

    <style>
   .navbar-brand
   {
       
   }
   .list-inline
   {
       margin-top:10px;
       text-align:center;
   }
   
   .lblStyle
   {
       font-family:Verdana;
       font-weight:bold;
       font-size:large;
       }
   </style>

    <script type="text/javascript">

        function myfunction() {
          
            var r = confirm("Are you Sure?");
            if (r == true) {

                $.ajax(
            {
                type: "POST",
                url: "CustomerOrder.aspx/CancelOrder",
                data: "",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    alert('Your Order Canceled successfully!!');
                    window.location.href = "../Default.aspx";
                },
                error: function () {
                    alert('Somethng Went Wrong!');
                }
            });
            }
            else {
            
            }
        }
      
        </script>

        <script type="text/javascript">

            function Redirect() {
                window.location.href = "Order_Summery.aspx";
            }
        </script>
    <script type="text/javascript">
            // Confirmation before delete operation.
            function deleteConfirm(sender) {
                var c = confirm("Are you sure?");
                if (c) { return true; } else { return false; }
            }        
    </script>

    <script type="text/javaScript">
        $(document).ready(function () {
            $('#btnUse').click(function () {
                $('#head1').show();
                $('#head2').show();
                $('#btnUse').hide();
            })
        })
   </script>

</head>
<body>
    <div id="Order-Wrapper">
        
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
            <div id="TopHeaderDiv">
                <div class="row">
                    <div class="col-sm-2">
                        <div id="firstdiv">
                            <a id="A3" class="navbar-brand" runat="server" href="~/" style="height: 63px;">
                                 <img class="img-responsive" src="../img/OrganiKong.jpg" alt="OrganiKong">
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-10">
                    <div style="float: right;margin-top:3%;">
                        <ul class="list-inline">
                            <li>
                            </li>
                            <%--<li role="presentation"><a class="fa fa-envelope" href="../ContactUs.aspx">Contact Us</a></li>--%>
                            <li role="presentation"><a class="fa fa-link" href="../Vendor/VendorLogin.aspx">Sell
                                With Us</a></li>
                            <li role="presentation"><a class="fa fa-globe" href="../Customer/CustomerAddress.aspx">My Address</a></li>
                            <li id="loggedinLI" runat="server" class="dropdown"><a href="#" class="dropdown-toggle"
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
                        </ul>
                        </div>
                    </div>
                
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <hr style="margin-top: 5px; margin-bottom: 2px;" />
                    </div>
                </div>
                <div id="Order-PageWrapper">
                    <form id="form1" runat="server">
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>

                    
                        <div class="row">
                        <div class="col-sm-6">
                            <div class="panel panel-danger">
                                <div class="panel-heading">
                                    

                                      <h4>Your Cart Details</h4>
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

                                    <asp:GridView ID="GVBasket" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                                        AutoGenerateColumns="False" DataKeyNames="BasketId" OnRowDataBound="GVBasket_RowDataBound"
                                        ShowFooter="True" Width="90%">
                                        <Columns>
                                            <%--<asp:TemplateField HeaderText="VId" ShowHeader="false" HeaderStyle-CssClass="visible-desktop"
                                                ItemStyle-CssClass="visible-desktop" Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblVendorId" runat="server" Text='<%# Eval("VendorId") %>' />
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="visible-desktop"></HeaderStyle>
                                                <ItemStyle CssClass="visible-desktop"></ItemStyle>
                                            </asp:TemplateField>--%>
                                            <%--<asp:BoundField DataField="VendorId" HeaderText="VId" Visible="false" />   OnRowDataBound="GVBasket_RowDataBound" --%>
                                            <asp:TemplateField HeaderText="Id" HeaderStyle-CssClass="visible-desktop" ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblpro" runat="server" Text='<%# Eval("BasketId") %>' />
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="visible-desktop"></HeaderStyle>
                                                <ItemStyle CssClass="visible-desktop"></ItemStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Basket Name" HeaderStyle-CssClass="visible-desktop"
                                                ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblproname" runat="server" Text='<%# Eval("BasketName") %>' />
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="visible-desktop"></HeaderStyle>
                                                <ItemStyle CssClass="visible-desktop"></ItemStyle>
                                            </asp:TemplateField>
                                            <%--<asp:BoundField DataField="Quantity" HeaderText="Quantity" ItemStyle-CssClass="hidden-phone"
                                                HeaderStyle-CssClass="hidden-phone">
                                                <HeaderStyle CssClass="hidden-phone"></HeaderStyle>
                                                <ItemStyle CssClass="hidden-phone"></ItemStyle>
                                            </asp:BoundField>--%>
                                            <asp:TemplateField HeaderText="Unit Price" HeaderStyle-CssClass="visible-desktop" ItemStyle-CssClass="visible-desktop" Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblMRP" runat="server" Text='<%# Eval("UnitPrice") %>' />
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="lblTotalMRP" runat="server" />
                                                </FooterTemplate>
                                                <HeaderStyle CssClass="visible-desktop"></HeaderStyle>
                                                <ItemStyle CssClass="visible-desktop"></ItemStyle>
                                            </asp:TemplateField>
                                            <%--<asp:TemplateField HeaderText="Discount" HeaderStyle-CssClass="visible-desktop" ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lbldiscount" runat="server" Text='<%# Eval("Basketdiscount") %>' />
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="lbltotalDiscount" runat="server" />
                                                </FooterTemplate>
                                                <HeaderStyle CssClass="visible-desktop"></HeaderStyle>
                                                <ItemStyle CssClass="visible-desktop"></ItemStyle>
                                            </asp:TemplateField>--%>

                                            <asp:TemplateField HeaderText="Total Item" HeaderStyle-CssClass="visible-desktop" ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("Quantity") %>' />
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="lbltotalquantity" runat="server" />
                                                </FooterTemplate>
                                                <HeaderStyle CssClass="visible-desktop"></HeaderStyle>
                                                <ItemStyle CssClass="visible-desktop"></ItemStyle>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Selling Price" HeaderStyle-CssClass="visible-desktop"
                                                ItemStyle-CssClass="visible-desktop">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSellingPrice" runat="server" Text='<%# Eval("NetPrice") %>' />
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="lblTotalPrice" runat="server" />
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
                        <div class="col-sm-6">
                        <div class="panel panel-danger">
                     <div class="panel-heading"><h4>Order Summery</h4></div>
                     <div class="panel-body">
                                               
                      
                      
                           <table class="table" style=" text-align:right;">
                            <tr>
                            <td>  <span class="lblStyle">Your Cart Total(Rs.) :</span></td>
                            <td>   <asp:Label ID="lblCartTotal" class="lblStyle" runat="server" Visible="false"></asp:Label> </td>
                            </tr>
                              

                                                            
                            
                         <%--   <tr><td>  <span class="lblStyle" >Do You Have Any Coupon ?:</span>
                            </td>
                            <td> <input type="button" id="btnUse" value="Use Coupon" class="btn btn-info" /></td>
                            </tr>    --%>                   
                     <tr>
                     <td><span class="lblStyle" >Payment Option</span></td>
                     <td><asp:Button ID="btnCOD" runat="server" class="btn btn-primary" Text="C.O.D."
                                    OnClick="btnCOD_Click" CausesValidation="false" UseSubmitBehavior="false"/>
                                <asp:Button ID="btnOnline" runat="server" class="btn btn-primary" Text="Pay Online"
                                    OnClick="btnOnline_Click" CausesValidation="false" UseSubmitBehavior="false" /></td>
                     </tr>
                                
                                
                       <tr>
                       <td colspan="2">
                        <input type="button" id="btnCencleOrder" onclick="myfunction();" runat="server" style=" float:right" value="I want to cancel my Order?" class="btn btn-danger" />
                        </td>
                        </tr>
                          
                           </table>
                         
                     
                        
                        

                       
                        <div class="col-md-6">
                        <div id="couponDiv" runat="server" visible="false">
                                <h4>
                                    <span class="label label-default">Coupon Value(Rs.) :</span>
                                    <label id="lblCouponValue" runat="server"></label>
                                </h4>
                                <h4>
                                    <span class="label label-default">Net Amount Pay(Rs.) :</span>
                                    <label id="lblNetPay" runat="server">
                                    </label>
                                </h4>
                            </div>
                            <div id="ErrorDiv" runat="server" visible="false">
                                <h4>
                                    <span class="label label-default">Error:</span>
                                    <asp:Label ID="lblmessage" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                                </h4>
                            </div></div>
                        <div class="col-md-6">
                            <h4  id="head1">
                                <span class="label label-info">Use Coupon</span>
                                <br />
                                <input class="form-control" placeholder="Enter Coupon Code"  name="CouponCode" type="text" autofocus="true" runat="server"
                                    id="txtCode" required />
                            </h4>
                      <div class="col-md-2">
                           
                            </div>
                           
                            <div  id="head2">
                                <asp:Button ID="btnOk" runat="server" Text="Ok" class="btn btn-sm btn-success" OnClick="UseCoupon_Click"
                                    align="right" />
                            </div>
                            
                        </div>
                       
                           </div>
                           
                     </div>
                        </div>
                      
                     </div>

           
                     </form>
                    </div>
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
                            </a><a href="https://www.facebook.com/Organikong?fref=ts" target="_blank">
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
      
      </div>
</body>
</html>

<%--<div class="row" runat="server" id="add_Address_row">
                    <div class="col-md-6">
                        <div class="panel-group" id="accordion" role="tablist">
                            <div class="panel panel-primary">
                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h3 class="panel-title">
                                        <a class="accordion-toggle" role="button" data-toggle="collapse" data-parent="#accordion"
                                            href="#collapseOne">Add New Address Here</a>
                                    </h3>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse" role="tabpanel">
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <label class="control-label" for="AddType">
                                                Nick Name</label>
                                            <input type="text" class="form-control" placeholder="e.g. Home/ Office/ Shipping"
                                                name="AddType" autofocus="true" id="AddType" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="txtAddress1">
                                                House No.</label>
                                            <input type="text" class="form-control" placeholder="House no./ Flat No." name="txtAddress1"
                                                autofocus="true" id="Text1" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="txtAddress2">
                                                Street</label>
                                            <input type="text" class="form-control" placeholder="Street Name/No." name="txtAddress2"
                                                autofocus="true" id="Text2" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="txtAddress3">
                                                Locality/ Landmark</label>
                                            <input type="text" class="form-control" placeholder="Near By Landmark" name="txtAddress3"
                                                autofocus="true" id="Text3" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="txtcity">
                                                City</label>
                                            <input type="text" class="form-control" placeholder="City Name" name="txtcity" id="txtcity"
                                                runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="txtZip">
                                                City Pin Code</label>
                                            <input type="text" class="form-control" placeholder="6 Digit Pin Code" name="txtZip"
                                                id="txtZip" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="txtState">
                                                State</label>
                                            <input type="text" class="form-control" placeholder="State Name" name="txtState"
                                                id="txtState" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="txtCountry">
                                                Country</label>
                                            <input type="text" class="form-control" placeholder="Country Name" name="txtCountry"
                                                id="txtCountry" runat="server" />
                                        </div>
                                        <div style="margin-left: 70px;">
                                            <asp:Button ID="btnupdate" Class="btn btn-lg btn-success" runat="server" Text="Save"
                                                OnClick="btnupdate_Click" />
                                            <asp:Button ID="btnCancel" Class="btn btn-lg btn-danger" runat="server" Text="Reset"
                                                value="Cancel" />
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-footer">
                                    You Can Add 5 Addresses with your Account.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>

<%--<div class="row">
                        <%--<div class="col-md-4">
                            <div class="panel panel-danger">
                                <div class="panel-heading">
                                    <h3 class="panel-title">
                                         Select One as Shipping Address</h3>
                                </div>
                                <div class="panel-body">

                               <asp:ListView runat="server" ID="listViewAddress" DataKeyNames="locNo"
                                    OnItemDeleting="listViewAddress_ItemDeleting" OnPagePropertiesChanging="OnPagePropertiesChanging">
                                    <LayoutTemplate>
                                        <div>
                                            <table id="addresstable"style="width:100%;">
                                                <asp:PlaceHolder runat="server" ID="groupPlaceHolder"></asp:PlaceHolder>
                                                <tr>
                                                    <td>
                                                        <asp:DataPager ID="DataPager1" runat="server" PagedControlID="listViewAddress" PageSize="1">
                                                            <Fields>
                                                                <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="true"
                                                                    ShowNextPageButton="false" />
                                                                <asp:NumericPagerField ButtonType="Link" />
                                                                <asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="true" ShowLastPageButton="false"
                                                                    ShowPreviousPageButton="false" />
                                                            </Fields>
                                                        </asp:DataPager>
                                                    </td>
                                                </tr>
                                            </table>
                                          <%--  <asp:PlaceHolder runat="server" ID="groupPlaceHolder" />--%>
<%-- </div>
                                    </LayoutTemplate>

                                    <GroupTemplate>
                                     <tr>
                                        <div>
                                            <asp:PlaceHolder runat="server" ID="itemPlaceHolder" />
                                        </div>
                                        </tr>
                                    </GroupTemplate>
                                    
                                    <ItemSeparatorTemplate>
                                        <div class="itemSeparator">
                                        </div>
                                    </ItemSeparatorTemplate>

                                    <GroupSeparatorTemplate>
                                        <div class="groupSeparator">
                                        </div>
                                    </GroupSeparatorTemplate>

                                    <EmptyDataTemplate>
                                        No Address Found. Go to Profile and Add a Address.
                                    </EmptyDataTemplate>

                                    <ItemTemplate>
                                        <td>
                                            <div class="AddressItem" style="width: 100%; height:60%; font-size:small; font-weight:lighter;">
                                                <table class="table" data-height="20" style="">
                                                    <tr>
                                                        <td>
                                                            <label>
                                                                Nick Name* :</label>
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblNickname" Text='<%# Eval("Address Nick Name")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>
                                                                Address Line 1:</label>
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblAddress10" Text='<%# Eval("Address Line1")%>'></asp:Label>
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
                                                    <tr>
                                                        <td colspan="2">
                                                            <div style="margin-left: 62px;">
                                                                <asp:LinkButton ID="lnkUpdateAddress" Class="btn btn-xs btn-success" runat="server"
                                                                    Text="Edit" OnClick="EditAdress"></asp:LinkButton>
                                                                &nbsp;
                                                                <%-- <asp:Button ID="btnCancel" Class="btn btn-sm btn-danger" runat="server" Text="Delete"
                                                                value="Cancel" />
                                                                <asp:Button ID="btnDelete" runat="server" Text="Delete" Class="btn btn-xs btn-danger"
                                                                    CommandName="Delete" OnClientClick="return deleteConfirm();" />
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <div class="form-group has-success" style="margin-top: 4px;">
                                                                <asp:CheckBox ID="Chkid" class="form has-success" runat="server" onclick="javascript:SelectSingleCheckbox(this.id)"
                                                                    Text="Delivered To this address" />
                                                                <%--<input type="checkbox" id="CheckBox1" runat="server" Value='<%# Bind("locNo")%>' onclick="javascript:SelectSingleCheckbox(this.id)"/>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </ItemTemplate>

                                </asp:ListView>

                                <div id="DivSecondryAdd" style="float: left;">
                                    <asp:LinkButton Text="" ID="lnkFake" runat="server" />
                                    <asp:ModalPopupExtender ID="MPEUpdate" PopupControlID="pnlPopupaddress" TargetControlID="lnkFake"
                                        runat="server" CancelControlID="btnClose" BackgroundCssClass="modaladdBackground">
                                    </asp:ModalPopupExtender>
                                    <asp:Panel ID="pnlPopupaddress" runat="server" CssClass="modalPopupEditAddress" Style="display: none">
                                        <div id="editForm" class="header">
                                            Update Address</div>
                                        <div class="body">
                                            <table class="table" data-height="15">
                                                <tr>
                                                    <td>
                                                        Nick Name*
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtnickname" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Address Line 1:
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtaddress01" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Address Line 2:
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtaddress02" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Address Line 3:
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtaddress03" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        City:
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtcityedit" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        State:
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtStateEdit" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        PinCode:
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtPincodeEdit" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Country:
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtCountryEdit" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <asp:Button ID="btnSave" class="btn btn-xs btn-success" runat="server" Text="Update"
                                                            OnClick="Update" />
                                                        <asp:Button ID="btnClose" runat="server" Text="Close" CssClass="button" class="btn btn-xs btn-danger" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </asp:Panel>
                                </div>  

                                </div>
                            </div>
                        </div>--%>


