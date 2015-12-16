<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmOrder.aspx.cs" Inherits="GroceryStore.Cart.ConfirmOrder" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Order Confirmation</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="cartstyle.css" rel="stylesheet" type="text/css" />
    <script src="../JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../JScript/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Literal ID="Literal1" runat="server" Visible="false"></asp:Literal>
    </div>

    <div id="ConfirmOrder-wrapper">
    
    <div class="container">

        <div class="row">
            <div id="firstdiv">
                <a id="A3" runat="server" href="~/" style="padding: 0;">
                    <img class="img-responsive" src="../img/OrganiKong.jpg" alt="OrganiKong">
                </a>
            </div>
        </div>
 
    <div id="confirmDiv" runat="server">

        <div class="clearfix">
        <hr />
        </div>

        <div class="row">
            <div class="alert alert-success">
                <h4>
                    Order Status</h4>
                <asp:Label ID="lblstatus" runat="server"></asp:Label>
            </div>
            <div class=" panel panel-info">
                <div class="panel-heading">
                    <h4>
                        Order Summery</h4>
                </div>
                <div class="panel-body">
                    <table class="table">
                        <tr class="form-group">
                            <td>
                                Order Date
                            </td>
                            <td>
                                <asp:Label ID="lblOrderDate" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr class="form-group">
                            <td>
                                Amount
                            </td>
                            <td>
                                <asp:Label ID="Amount" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr class="form-group">
                            <td>
                                Contact No
                            </td>
                            <td>
                                <asp:Label ID="lblContact" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr class="form-group">
                            <td>
                                Bank Name
                            </td>
                            <td>
                                <asp:Label ID="lblbank" runat="server"></asp:Label>
                            </td>
                        </tr>

                        <tr class="form-group">
                            <td>
                                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

   </div>

    <div class="row">
   <div id="AfterHideConfirm" runat="server" visible="false">
       <img alt="organikong" src="../Images/LiveOrganic.jpg" height="300px" width="100%"/>
   </div>
</div>

     <div class="row">
            <div id="Subscriptonalert" class="alert alert-info alert-dismissible" role="alert"
                runat="server" visible="false">
                <%--<strong>Warning!</strong>--%> Go to Organikong Home<a href="../Default.aspx" class="alert-link">Click Here!!
                  </a>
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
                             <li class="footli"><a class="foota" href="../AboutUs.aspx">What is OrganiKong ?</a></li>
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

   </div>
    </form>
</body>
</html>

<%--<asp:GridView ID="GvFinal" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:TemplateField HeaderText="VId" ShowHeader="false" HeaderStyle-CssClass="visible-desktop"
                ItemStyle-CssClass="visible-desktop">
                <ItemTemplate>
                    <asp:Label ID="lblVendorId" runat="server" Text='<%# Eval("VendorId") %>' />
                </ItemTemplate>
            </asp:TemplateField>
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
                <FooterTemplate>
                    <asp:Label ID="lblTotalMRP" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Discount" HeaderStyle-CssClass="visible-desktop" ItemStyle-CssClass="visible-desktop">
                <ItemTemplate>
                    <asp:Label ID="lbldiscount" runat="server" Text='<%# Eval("Discount") %>' />
                </ItemTemplate>
                <FooterTemplate>
                    <asp:Label ID="lbltotalDiscount" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Selling Price" HeaderStyle-CssClass="visible-desktop"
                ItemStyle-CssClass="visible-desktop">
                <ItemTemplate>
                    <asp:Label ID="lblSellingPrice" runat="server" Text='<%# Eval("Selling Price") %>' />
                </ItemTemplate>
                <FooterTemplate>
                    <asp:Label ID="lblTotalPrice" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Product Available" HeaderText="Is Available" ItemStyle-CssClass="hidden-phone"
                HeaderStyle-CssClass="hidden-phone" />
            <asp:TemplateField HeaderText="Quantity" HeaderStyle-CssClass="visible-desktop" ItemStyle-CssClass="visible-desktop">
                <ItemTemplate>
                    <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("Quantity") %>' />
                </ItemTemplate>
                <FooterTemplate>
                    <asp:Label ID="lbltotalquantity" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>--%>