<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="MyOrder.aspx.cs" Inherits="GroceryStore.Customer.MyOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        .Grid td
        {
            background-color: #A1DCF2;
            color: black;
            font-size: 10pt;
            line-height:200%
        }
        .Grid th
        {
            background-color: #3AC0F2;
            color: White;
            font-size: 10pt;
            line-height:200%
        }
        .ChildGrid td
        {
            background-color: #eee !important;
            color: black;
            font-size: 10pt;
            line-height:200%
        }
        .ChildGrid th
        {
            background-color: #6C6C6C !important;
            color: White;
            font-size: 10pt;
            line-height:200%
        }
    </style>

   <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    //debugger;
    $("[src*=addplus]").live("click", function () {
        $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>")
        $(this).attr("src", "../Icons/minus.png");
    });
    $("[src*=minus]").live("click", function () {
        $(this).attr("src", "../Icons/addplus.jpg");
        $(this).closest("tr").next().remove();
    });
</script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="myorder-w">
    <hr style="color: black; height: 1px; margin-top:5%; margin-bottom:0%;" />
        <div id="Breadcrumbs">
            <ol class="breadcrumb">
                <li><a href="../Default.aspx" class="fa fa-home">OrganiKong-Home</a></li>
                <li><a href="MyProfile.aspx" class="fa fa-user">My Profile</a></li>
                <li class="active"><i class="fa fa-user"></i>My Order</li>
            </ol>
        </div>
        <div id="myorder-pw">
            <div class="row-fluid">
                <div class="col-lg-12">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                          All Order's
                        </div>
                        <div class="panel-body">
                            <asp:GridView ID="GVOrders" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                                Width="100%" AutoGenerateColumns="false" OnRowDataBound="OnRowDataBound" DataKeyNames="OrderId">
                                <Columns>
                                    <asp:TemplateField HeaderText="S No" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>
                                        <ItemStyle Width="60px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="View">
                                        <ItemTemplate>
                                            <img alt = "" style="cursor: pointer" src="../Icons/addplus.jpg"  width="20px" height="15px"/>
                                            <asp:Panel ID="pnlOrders" runat="server" Style="display: none">
                                                <asp:GridView ID="GVOrder_Details" runat="server" AutoGenerateColumns="true" CssClass="ChildGrid">
                                                    <Columns>
                                                        <%--<asp:BoundField ItemStyle-Width="150px" DataField="ProductId" HeaderText="Product Id" />
                                                        <asp:BoundField ItemStyle-Width="150px" DataField="ProductName" HeaderText="Name" />
                                                        <asp:BoundField ItemStyle-Width="150px" DataField="Quantity" HeaderText="Quantity" />
                                                        <asp:BoundField ItemStyle-Width="150px" DataField="Selling_Price" HeaderText="Selling Price" />
                                                        <asp:BoundField ItemStyle-Width="150px" DataField="Cust_Address_1" HeaderText="Address Line1" />
                                                        <asp:BoundField ItemStyle-Width="150px" DataField="Cust_Address_2" HeaderText="Address Line2" />
                                                        <asp:BoundField ItemStyle-Width="150px" DataField="Cust_Address_3" HeaderText="Address Line3" />
                                                        <asp:BoundField ItemStyle-Width="150px" DataField="Cust_City" HeaderText="City" />
                                                        <asp:BoundField ItemStyle-Width="150px" DataField="Cust_Zip" HeaderText="Pincode" />
                                                        <asp:BoundField ItemStyle-Width="150px" DataField="Cust_State" HeaderText="State" />
                                                        <asp:BoundField ItemStyle-Width="150px" DataField="Cust_Phone_Number" HeaderText="Contact No" />
                                                        <asp:BoundField ItemStyle-Width="150px" DataField="Cust_Alternate_Mobile" HeaderText="Contact No" />--%>

                                                    </Columns>
                                                </asp:GridView>
                                            </asp:Panel>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="OrderId" HeaderText="OrderId" ItemStyle-CssClass="hidden-phone"
                                        HeaderStyle-CssClass="hidden-phone" />
                                    <asp:BoundField DataField="Total(Rs.)" HeaderText="Cart Amount" ItemStyle-CssClass="hidden-phone"
                                        HeaderStyle-CssClass="hidden-phone" />
                                    <asp:BoundField DataField="CouponAmount" HeaderText="Coupon Amount" ItemStyle-CssClass="hidden-phone"
                                        HeaderStyle-CssClass="hidden-phone" />
                                    <asp:BoundField DataField="NetPay" HeaderText="Total(Rs.)" ItemStyle-CssClass="hidden-phone"
                                        HeaderStyle-CssClass="hidden-phone" />
                                    <asp:BoundField DataField="Status" HeaderText="Payment Status" ItemStyle-CssClass="hidden-phone"
                                        HeaderStyle-CssClass="hidden-phone" />
                                    <asp:BoundField DataField="Mode" HeaderText="Payment Mode" ItemStyle-CssClass="hidden-phone"
                                        HeaderStyle-CssClass="hidden-phone" />
                                    
                                    <asp:BoundField DataField="Order_On" HeaderText="Order On" ItemStyle-CssClass="hidden-phone"
                                        HeaderStyle-CssClass="hidden-phone" DataFormatString="{0:MM/dd/yy}" SortExpression="Order_Created_On"/>

                                      <asp:BoundField DataField="Basket_Product" HeaderText="Order For" ItemStyle-CssClass="hidden-phone"
                                        HeaderStyle-CssClass="hidden-phone" DataFormatString="{0:MM/dd/yy}" SortExpression="Basket_Product"/>
                                </Columns>
                                <AlternatingRowStyle BackColor="White" />
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" CssClass="dataTable"/>
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


<%--<asp:GridView ID="GridView2"
runat="server"
DataKeyNames="CustomerID" AutoGenerateColumns="false"
OnRowDataBound="gv_RowDataBound" Width="80%"
AllowPaging="True" PageSize="20" >
<HeaderStyle CssClass="dataTable" />
<RowStyle CssClass="dataTable" />
<AlternatingRowStyle CssClass="dataTableAlt" />
<Columns>
<asp:TemplateField>
<ItemTemplate>
<a href="javascript:switchViews('div<%# Eval("CustomerID") %>', 'one');">
<img id="imgdiv<%# Eval("CustomerID") %>" alt="Click to show/hide orders" border="0" src="Images/expand_button.png" />
</a>
</ItemTemplate>
<AlternatingItemTemplate>
<a href="javascript:switchViews('div<%# Eval("CustomerID") %>', 'alt');">
<img id="imgdiv<%# Eval("CustomerID") %>" alt="Click to show/hide orders" border="0" src="Images/expand_button.png" />
</a>
</AlternatingItemTemplate>
</asp:TemplateField>
 
<asp:BoundField DataField="CustomerID" HeaderText="CustomerID" HtmlEncode="False" />
<asp:BoundField DataField="Name" HeaderText="Name" HtmlEncode="False" />
<asp:BoundField DataField="Address" HeaderText="Address" HtmlEncode="False" />
<asp:TemplateField>
<ItemTemplate>
</td></tr>
<tr>
<td colspan="100%" >
<div id="div<%# Eval("CustomerID") %>" style="display:none;position:relative;left:25px;" >
<asp:GridView ID="GridView2" runat="server" Width="80%"
AutoGenerateColumns="false" DataKeyNames="ItemCode"
EmptyDataText="No orders for this customer." >
<HeaderStyle CssClass="dataTable" />
<AlternatingRowStyle CssClass="dataTableAlt" />
<RowStyle CssClass="dataTable" />
<Columns>
<asp:BoundField DataField="OrderDate" HeaderText="Order Date" HtmlEncode="False" />
<asp:BoundField DataField="ShippedDate" HeaderText="ShippedDate" HtmlEncode="False" />
<asp:BoundField DataField="ShipTO" HeaderText="Ship TO" />
 
</Columns>
</asp:GridView>
</div>
</td>
</tr>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>--%>
