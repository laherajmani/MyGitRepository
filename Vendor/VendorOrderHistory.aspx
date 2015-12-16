<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VendorMaster.Master" AutoEventWireup="true" CodeBehind="VendorOrderHistory.aspx.cs" Inherits="GroceryStore.Vendor.VendorOrderHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="vwrapper">
    <div id="vPage-wrapper">
        <div class="container">
            <div class="row">
                <div id="col-sm-8 col-md-offset-0">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            All Served Order's</div>
                        <div class="panel-body">
                            <%--<asp:GridView ID="Grid1" runat="server" Width="100%" AutoGenerateColumns="false"
                                ForeColor="#333333" Height="150px">
                                <Columns>
                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="Order ID">
                                        <ItemTemplate>
                                            <asp:Label ID="lblOrderId" Enabled="false" runat="server" Text='<%# Eval("OrderId")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="Session ID">
                                        <ItemTemplate>
                                            <asp:Label ID="lblSessionId" runat="server" Text='<%# Eval("txtSesssionId")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="Product ID">
                                        <ItemTemplate>
                                            <asp:Label ID="lblProductId" runat="server" Text='<%# Eval("ProductId")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="Vendor ID">
                                        <ItemTemplate>
                                            <asp:Label ID="lblVendorId" runat="server" Text='<%# Eval("VendorId")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="50px" HeaderText="Product Image">
                                        <ItemTemplate>
                                            <asp:Image ID="Imz" runat="server" AlternateText="imz" ImageUrl='<%#Eval("ProductImageUrl") %>' />
                                        </ItemTemplate>
                                        <ItemStyle Width="50px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="Total Items">
                                        <ItemTemplate>
                                            <asp:Label ID="lblTotalItems" runat="server" Text='<%# Eval("txt_Total_Item_Count")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="Total Cost">
                                        <ItemTemplate>
                                            <asp:Label ID="lblOrderCost" runat="server" Text='<%# Eval("txt_Total_Order_Cost")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="Payment Status">
                                        <ItemTemplate>
                                            <asp:Label ID="lblPaymentStatus" runat="server" Text='<%# Eval("txtPaymentStatus")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="Updated On">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCreatedOn" runat="server" Text='<%# Eval("Updated_On")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>--%>

                            <asp:GridView ID="GVOrderHistory" runat="server" Width="100%" AutoGenerateColumns="false"
                                ForeColor="#333333" Height="150px">
                                <EmptyDataTemplate><h3 style="text-align:center;"><label>No Served Order found...<label></h3></EmptyDataTemplate>
                                <Columns>
                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="Order ID">
                                        <ItemTemplate>
                                            <asp:Label ID="lblOrderId" Enabled="false" runat="server" Text='<%# Eval("OrderId")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="Session ID">
                                        <ItemTemplate>
                                            <asp:Label ID="lblSessionId" runat="server" Text='<%# Eval("Customer_SessionID")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="Product ID">
                                        <ItemTemplate>
                                            <asp:Label ID="lblProductId" runat="server" Text='<%# Eval("ProductId")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="Vendor ID">
                                        <ItemTemplate>
                                            <asp:Label ID="lblVendorId" runat="server" Text='<%# Eval("VendorId")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                    </asp:TemplateField>
                                    <%--<asp:TemplateField ItemStyle-Width="50px" HeaderText="Product Image">
                                        <ItemTemplate>
                                            <asp:Image ID="Imz" runat="server" AlternateText="imz" ImageUrl='<%#Eval("ProductImageUrl") %>' />
                                        </ItemTemplate>
                                        <ItemStyle Width="50px" />
                                    </asp:TemplateField>--%>
                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="Total Items">
                                        <ItemTemplate>
                                            <asp:Label ID="lblTotalItems" runat="server" Text='<%# Eval("Item_inCart")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="Total Cost">
                                        <ItemTemplate>
                                            <asp:Label ID="lblOrderCost" runat="server" Text='<%# Eval("NetPay")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="Payment Status">
                                        <ItemTemplate>
                                            <asp:Label ID="lblPaymentStatus" runat="server" Text='<%# Eval("txtPaymentStatus")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="Updated On">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCreatedOn" runat="server" Text='<%# Eval("Updated_On")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                    </asp:TemplateField>

                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="Payment Status">
                                        <ItemTemplate>
                                            <asp:Label ID="lblorderStatus" runat="server" Text='<%# Eval("Status")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                    </asp:TemplateField>

                                </Columns>
                            </asp:GridView>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </div>
</asp:Content>
