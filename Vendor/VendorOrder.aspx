<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VendorMaster.Master" AutoEventWireup="true" CodeBehind="VendorOrder.aspx.cs" Inherits="GroceryStore.Vendor.VendorOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    <div id="VWrapper">
        <div id="VPageWrapper">
            <div class="Container">
                <div class="row">
                    <div id="col-sm-8 col-md-offset-0">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                Your Order's</div>
                            <div class="panel-body">
                                <asp:GridView ID="GVOrder" runat="server" Width="100%" AutoGenerateColumns="false"
                                    ForeColor="#333333" Height="50px" OnRowDataBound="OnRowDataBound" DataKeyNames="OrderId">
                                    <EmptyDataTemplate><h3 align="center"><label>No Order found...<label></h3></EmptyDataTemplate>

                                    <Columns>

                                    <asp:TemplateField HeaderText="S No" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>
                                        <ItemStyle Width="60px" />
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="OrderId" HeaderText="OrderId" ItemStyle-CssClass="hidden-phone"
                                        HeaderStyle-CssClass="hidden-phone" />

                                        <asp:TemplateField HeaderText="View">
                                            <ItemTemplate>
                                                <img alt="" style="cursor: pointer" src="../Icons/addplus.jpg" width="20px" height="15px" />
                                                <asp:Panel ID="pnlOrders" runat="server" Style="display: none">
                                                    <asp:GridView ID="GVOrder_Details" runat="server" AutoGenerateColumns="true" CssClass="ChildGrid">
                                                        <Columns>
                                                            <%--<asp:BoundField ItemStyle-Width="150px" DataField="ProductId" HeaderText="Product Id" />
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

                                        <asp:BoundField DataField="Order_Status" HeaderText="Order Status" ItemStyle-CssClass="hidden-phone"
                                        HeaderStyle-CssClass="hidden-phone" />

                                        <asp:BoundField DataField="Order_On" HeaderText="Order On" ItemStyle-CssClass="hidden-phone"
                                        HeaderStyle-CssClass="hidden-phone" DataFormatString="{0:MM/dd/yy}" SortExpression="Order_Created_On"/>

                                        <asp:BoundField DataField="Updated_On" HeaderText="Updated On" ItemStyle-CssClass="hidden-phone"
                                        HeaderStyle-CssClass="hidden-phone" DataFormatString="{0:MM/dd/yy}" SortExpression="Updated_On"/>

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


                 <div class="row">
                    <div id="Div1">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                Your Basket's Order</div>
                            <div class="panel-body">
                                <asp:GridView ID="GVBasket" runat="server" Width="100%" AutoGenerateColumns="false"
                                    ForeColor="#333333" Height="50px" DataKeyNames="OrderId">
                                    <EmptyDataTemplate><h3 align="center"><label>No Basket Order found...<label></h3></EmptyDataTemplate>

                                    <Columns>

                                    <asp:TemplateField HeaderText="S No" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>
                                        <ItemStyle Width="60px" />
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="OrderId" HeaderText="OrderId" ItemStyle-CssClass="hidden-phone"
                                        HeaderStyle-CssClass="hidden-phone" />

                                    <asp:BoundField DataField="BasketName" HeaderText="Basket Name" ItemStyle-CssClass="hidden-phone"
                                        HeaderStyle-CssClass="hidden-phone" />

                                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" ItemStyle-CssClass="hidden-phone"
                                        HeaderStyle-CssClass="hidden-phone" />

                                        <asp:BoundField DataField="Selling_Price" HeaderText="Selling Price" ItemStyle-CssClass="hidden-phone"
                                        HeaderStyle-CssClass="hidden-phone" />
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Cust_Address_1" HeaderText="Address Line1" />
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Cust_Address_2" HeaderText="Address Line2" />
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Cust_Address_3" HeaderText="Address Line3" />
                                         <asp:BoundField ItemStyle-Width="150px" DataField="Cust_City" HeaderText="City" />
                                          <asp:BoundField ItemStyle-Width="150px" DataField="Cust_Zip" HeaderText="Pincode" />
                                            <asp:BoundField ItemStyle-Width="150px" DataField="Cust_State" HeaderText="State" />
                                          <asp:BoundField ItemStyle-Width="150px" DataField="Cust_Phone_Number" HeaderText="Contact No" />
                                          <asp:BoundField ItemStyle-Width="150px" DataField="Cust_Alternate_Mobile" HeaderText="Contact No" />
                                        <asp:BoundField DataField="Cust_First_Name" HeaderText="Customer Name" ItemStyle-CssClass="hidden-phone"
                                        HeaderStyle-CssClass="hidden-phone" />
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
</asp:Content>

