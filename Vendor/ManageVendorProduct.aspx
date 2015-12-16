<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VendorMaster.Master" AutoEventWireup="true" CodeBehind="ManageVendorProduct.aspx.cs" Inherits="GroceryStore.Vendor.ManageVendorProduct" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<script src="../JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    
<script type="text/javascript">
    function cal() {
        var dis = document.getElementById('<%=txtdiscount.ClientID%>').value;
        var price = document.getElementById('<%=txtSelling_price.ClientID%>').value;
        var mrp = document.getElementById('<%=txtMRP.ClientID %>').value;
        var total = parseFloat(mrp) - parseFloat(dis);
        document.getElementById('<%=txtSelling_price.ClientID%>').value = total;
        document.getElementById('<%=txtdiscount.ClientID%>').value = dis;
    }
</script>

<style type="text/css">
.myGridStyle
        {              
         }      
        .myGridStyle tr th
        {
            padding: 8px;
            color: white;
            border: 0px;
            margin-bottom:10px;
            background-color:#323232;
             font-size:medium;
             font-family:Arial, Helvetica, sans-serif;
        }        
        .myGridStyle tr:nth-child(even)
        {
            background-color: #E1FFEF;
        }       
        .myGridStyle tr:nth-child(odd)
        {
            background-color: #A1DCF2;
        }        
        .myGridStyle td
        {   
            padding: 8px;
             border: 0px ;
        }
</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="vwrapper">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <div id="vPage-wrapper">
            <div class="container">
                <div class="row">
                    <div id="col-sm-8 col-md-offset-0">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                Manage Vendor Products</div>
                            <div class="panel-body">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:GridView ID="Gv1" runat="server" AutoGenerateColumns="false" class="myGridStyle" 
                                        ShowFooter="True" OnPageIndexChanging="OnPaging" PageSize="6" AllowPaging="true">
                                            <Columns>
                                                <asp:TemplateField ItemStyle-Width="30px" HeaderText="Edit">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit" OnClick="Edit"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField = "ProductId" HeaderText = "Product ID" HtmlEncode = "true" />
                                                <asp:BoundField DataField = "Product_Name" HeaderText = "Product Name" HtmlEncode = "true" />
                                                <asp:BoundField DataField = "MRP" HeaderText = "Product MRP" HtmlEncode = "true" />
                                                <asp:BoundField DataField = "Product_Discount" HeaderText = "Discount" HtmlEncode = "true" />
                                                <asp:BoundField DataField = "selling_Price" HeaderText = "Selling Price" HtmlEncode = "true" />
                                                <asp:BoundField HeaderText="Comment" DataField="txtComment" />
                                                <asp:BoundField HeaderText="Product Status" DataField="Product_Status" />
                                                <asp:BoundField HeaderText="Last Updated" DataField="Last_Updated_Date" />
                                            </Columns>
                                        </asp:GridView>

                                        <asp:Panel ID="P1" runat="server" CssClass="modalPopup" Style="display: none;width:30%;height:51%">
                                            <div id="showForm" class="table">
                                                <div>
                                                    <table style="width: 100%;" class="table">
                                                        <tr>
                                                            <td>
                                                                <label>
                                                                    Product ID:</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtProductid" runat="server" ReadOnly="true" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <label>
                                                                    Product Name:</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtproductname" runat="server" ReadOnly="true" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <label>
                                                                    Product MRP:</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtMRP" runat="server" ReadOnly="true" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <label>
                                                                    Discount:</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtdiscount" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <label>
                                                                    Selling Price</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtSelling_price" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <label>
                                                                    Comments</label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtcomment" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                            <div style=" text-align:center;">
                                                                <asp:Button ID="Sbumit" Text="submit" runat="server" OnClientClick="cal()" OnClick="Submit" class="btn btn-success" />
                                                           
                                                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-danger"/>
                                                            </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <asp:LinkButton ID="lnkFake" runat="server"></asp:LinkButton>
                                        <asp:ModalPopupExtender ID="popup" runat="server" DropShadow="false" PopupControlID="P1"
                                            TargetControlID="lnkFake" BackgroundCssClass="modalPopupEditAddress">
                                        </asp:ModalPopupExtender>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="Gv1" />
                                        <asp:PostBackTrigger ControlID="Sbumit" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
