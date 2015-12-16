<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VendorMaster.Master" AutoEventWireup="true" CodeBehind="AddVendorProduct.aspx.cs" Inherits="GroceryStore.Vendor.AddVendorProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="V_Add_Pro_Wrap">
        <div id="V_Add_Pro_Page_Wrap">
            <div id="container">
                <div class="row">
                    <div class="col-lg-10 col-md-offset-0">
                        <div class="panel panel-primary">
                            <!-- Default panel contents -->
                            <div class="panel-heading">
                                Add Product</div>
                            <div class="panel-body">
                                <table class="table">
                                    <thead>
                                        <tr><th>Select Category</th><th>Select Sub Category</th><th>Select Child Category</th></tr>
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
                                                    class="form-group" onselectedindexchanged="ddlChildCategory_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr> <td colspan="3"></td></tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="gvAddVenPro" runat="server" AutoGenerateColumns="false" DataKeyNames="ProductId">
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                <asp:CheckBox ID="chkAll" runat="server" AutoPostBack="true" OnCheckedChanged="OnCheckedChanged" />
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox runat="server" AutoPostBack="true" OnCheckedChanged="OnCheckedChanged" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Product Name" ItemStyle-Width="150">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblProName" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Manufacturer" ItemStyle-Width="150">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblMaker" runat="server" Text='<%# Eval("Manufacturer") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Price" ItemStyle-Width="150">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblMRP" runat="server" Text='<%# Eval("Price_MRP","{0:0.00}") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Vendor Discount(Rs.)" ItemStyle-Width="150">
                                                            <ItemTemplate>
                                                               <%-- <asp:Label ID="lblVdiscount" runat="server" Text='Vendor Discount'></asp:Label>--%>
                                                                <asp:TextBox ID="txtVdiscount" runat="server" Visible="false"></asp:TextBox>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Selling Price(Rs.)" ItemStyle-Width="150">
                                                            <ItemTemplate>
                                                                <%--<asp:Label ID="lblVdiscount" runat="server" Text='Vendor Discount'></asp:Label>--%>
                                                                <asp:TextBox ID="txtsellingprice" runat="server" Visible="false"></asp:TextBox>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                      </Columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                                <div class="input-group">
                                    <asp:Button ID="btnaddVproduct" runat="server" class="btn btn-lg btn-success" Text="Submit" OnClick = "Update" Visible = "false"/>
                                   
                                    <%--<input id="cancel" type="reset" class="btn btn-danger btn-lg" value="Reset" Visible = "false">--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<%-- <div class="form-group">
                                    <label>
                                        Product Name</label>
                                    <br />
                                    <asp:DropDownList ID="ddlProductname" runat="server" Width="65%" class="form-group">
                                    </asp:DropDownList>
                                </div>

                                <div class="form-group">
                                    <label>
                                        Product M.R.P.</label>
                                    <input class="form-control" placeholder="&#x20B9;" name="mrp" type="text" autofocus="true"
                                        id="txtMRP" runat="server">
                                </div>

                                <div class="form-group">
                                    <label>
                                        Discount In Rs.</label>
                                    <input class="form-control" placeholder="&#x20B9;" name="discount" type="text" autofocus="true"
                                        id="txtdiscount" runat="server">
                                </div>

                                <div class="form-group">
                                    <label>
                                        Product Selliing Price</label>
                                    <input class="form-control" placeholder="&#x20B9;" name="sellingprice" type="text"
                                        autofocus="true" id="txtSellingprice" runat="server">
                                </div>
                              
                                <div class="form-group">
                                    <label>
                                        Comment for Product</label>
                                </div>
                                <div class="form-group">
                                    <textarea rows="5" class="form-control" cols="90" name="Commenttxt" runat="server"
                                        id="txtcomment"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>
                                        Select Product Variant</label>
                                    <select name="selectproVarient" class="form-control" id="ddlvarient1" runat="server"
                                        width="25%" required="required">
                                        <option value="" selected="selected" hidden="hidden"></option>
                                        <option value="Weight">Weight</option>
                                        <option value="Color">Color</option>
                                        <option value="Sizes">Sizes</option>
                                    </select>
                                </div>--%>
  <%--<div class="form-group">
                                    <label>
                                        Product Availability</label>
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:DropDownList ID="ddlCount1" runat="server" Width="95%" class="form-group">
                                                    <asp:ListItem Value="0">0</asp:ListItem>
                                                    <asp:ListItem Value="1">1</asp:ListItem>
                                                    <asp:ListItem Value="2">2</asp:ListItem>
                                                    <asp:ListItem Value="3">3</asp:ListItem>
                                                    <asp:ListItem Value="4">4</asp:ListItem>
                                                    <asp:ListItem Value="5">5</asp:ListItem>
                                                    <asp:ListItem Value="6">6</asp:ListItem>
                                                    <asp:ListItem Value="7">7</asp:ListItem>
                                                    <asp:ListItem Value="8">8</asp:ListItem>
                                                    <asp:ListItem Value="9">9</asp:ListItem>
                                                    <asp:ListItem Value="10">10</asp:ListItem>
                                                    <asp:ListItem Value="11">11</asp:ListItem>
                                                    <asp:ListItem Value="12">12</asp:ListItem>
                                                    <asp:ListItem Value="13">13</asp:ListItem>
                                                    <asp:ListItem Value="14">14</asp:ListItem>
                                                    <asp:ListItem Value="15">15</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlCount2" runat="server" Width="95%" class="form-group">
                                                    <asp:ListItem Value="0">0</asp:ListItem>
                                                    <asp:ListItem Value="1">1</asp:ListItem>
                                                    <asp:ListItem Value="2">2</asp:ListItem>
                                                    <asp:ListItem Value="3">3</asp:ListItem>
                                                    <asp:ListItem Value="4">4</asp:ListItem>
                                                    <asp:ListItem Value="5">5</asp:ListItem>
                                                    <asp:ListItem Value="6">6</asp:ListItem>
                                                    <asp:ListItem Value="7">7</asp:ListItem>
                                                    <asp:ListItem Value="8">8</asp:ListItem>
                                                    <asp:ListItem Value="9">9</asp:ListItem>
                                                    <asp:ListItem Value="10">10</asp:ListItem>
                                                    <asp:ListItem Value="11">11</asp:ListItem>
                                                    <asp:ListItem Value="12">12</asp:ListItem>
                                                    <asp:ListItem Value="13">13</asp:ListItem>
                                                    <asp:ListItem Value="14">14</asp:ListItem>
                                                    <asp:ListItem Value="15">15</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlDayWeeks" runat="server" Width="100%" class="form-group">
                                                    <asp:ListItem Value="days">days</asp:ListItem>
                                                    <asp:ListItem Value="weeks">weeks</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </div>--%>
                                <%--<div class="form-group">
                                    <label>
                                        Shipping Cost</label>
                                    <input class="form-control" placeholder="&#x20B9;" name="shippingcost" type="text" autofocus="true" id="txtShipCost" runat="server">
                                </div>--%>