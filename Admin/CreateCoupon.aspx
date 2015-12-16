<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/myAdmin.Master" AutoEventWireup="true" CodeBehind="CreateCoupon.aspx.cs" Inherits="GroceryStore.Admin.CreateCoupon" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <div id="admin-couponWrapper">
        <div id="admin-couponPageWrap">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-offset-1">
                        <div class="panel panel-danger">
                            <!-- Default panel contents -->
                            <div class="panel-heading">
                                Create Coupons</div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label>
                                        Coupon Code</label>
                                    <input class="form-control" name="productname" type="text" autofocus="true" runat="server"
                                        id="txtcouponcode" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        Coupon Title</label>
                                    <textarea rows="2" class="form-control" cols="50" name="Commenttxt" runat="server"
                                        id="txtcomment"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>
                                        Coupon Amount(Rs.)</label>
                                    <input class="form-control" name="productname" type="text" autofocus="true" runat="server"
                                        id="txtamount" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        Is Can be Combined?</label>
                                    <asp:RadioButtonList ID="rdl1" runat="server" class="form-group" Width="100%">
                                        <asp:ListItem Text="Yes"></asp:ListItem>
                                        <asp:ListItem Text="No"></asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                                <div class="form-group">
                                    <label>
                                        Start Date</label>
                                    <asp:TextBox class="form-control" autofocus="true" runat="server" ID="txtSrtDate"></asp:TextBox>
                                    <asp:CalendarExtender ID="Cal1" runat="server" targetcontrolid="txtSrtDate" Format="MM'/'dd'/'yyyy HH':'mm':'ss" >
                                    </asp:CalendarExtender>
                                </div>
                                <div class="form-group">
                                    <label>
                                        Expiration Date</label>
                                    <asp:TextBox class="form-control" autofocus="true" runat="server" ID="txtEnddate"></asp:TextBox>
                                    <asp:CalendarExtender ID="cal2" runat="server" targetcontrolid="txtEnddate" Format="MM'/'dd'/'yyyy HH':'mm':'ss">
                                    </asp:CalendarExtender>
                                </div>

                                <div class="form-group">
                                    <label>
                                        No. of Customer can use Coupon</label>
                                    <input class="form-control" name="usecount" type="text" autofocus="true" runat="server"
                                        id="txtuseCount" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        Is Active?</label>
                                    <asp:RadioButtonList ID="Rbl2" runat="server" class="form-group" Width="100%">
                                        <asp:ListItem Text="True"></asp:ListItem>
                                        <asp:ListItem Text="False"></asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                                <div class="input-group">
                                    <asp:Button ID="btnSubmit" runat="server" class="btn btn-sm btn-success" Text="Submit"
                                        OnClick="btnSubmit_Click" />
                                    <input id="cancel" type="reset" class="btn btn-danger btn-sm" value="Reset">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
