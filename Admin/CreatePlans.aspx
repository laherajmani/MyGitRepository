<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/myAdmin.Master" AutoEventWireup="true" CodeBehind="CreatePlans.aspx.cs" Inherits="GroceryStore.Admin.CreatePlans" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="admin-planWrap">

    <div id="admin-planPageWrap">
        <div class="container">
            <div class="row">
                <div id="CrPlan" class="col-md-6 col-md-offset-1">
                    <div class="login-panel panel panel-primary">
                        <div class="panel-heading">
                            <%--<img src="../Icons/vreg.jpg" width="100%" height="99px" alt="Vendor Registration" />--%>
                            Create Plans
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label class="control-label" for="Firstname">
                                    Plan Name</label>
                                <input class="form-control" placeholder="Name of Plan" name="Firstname" type="text"
                                    autofocus="true" id="txtplan" runat="server">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="Lastname">
                                    Plan Amount</label>
                                <input class="form-control" placeholder="&#x20B9;" name="amount" type="text" required="required"
                                    autofocus="true" id="txtplanRs" runat="server" />
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="email">
                                    Total Commission
                                </label>
                                <input class="form-control" placeholder="%" name="amount" type="text" required="required"
                                    autofocus="true" id="txtcommission" runat="server" />
                            </div>
                            <div class="input-group">
                                <asp:Button ID="btnSubmit" runat="server" class="btn btn-lg btn-success" 
                                    Text="Create" onclick="btnSubmit_Click" />
                                &nbsp;
                                <input id="cancel" type="reset" class="btn btn-danger btn-lg" value="Reset">
                            </div>
                        </div>
                    </div>
                </div>
             </div>

             <div class="row">
                <div id="allPlan" class="col-md-12 col-md-offset-0">
                    <div class="login-panel panel panel-primary">
                        <div class="panel-heading">
                           Update Existing Plans
                        </div>
                        <div class="panel-body">
                            <div>
                                <asp:GridView ID="GVPlans" runat="server" BackColor="White" BorderColor="#CC9966"
                                    BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False"
                                    Width="90%" DataKeyNames = "PId" OnRowEditing="EditPlan" AllowPaging="True" ShowFooter="True" OnPageIndexChanging="OnPaging"
                                    OnRowUpdating="UpdatePlan" OnRowCancelingEdit="CancelEdit" OnRowDeleted="DeletePlan">
                                    <Columns>

                                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="ID">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPlan_ID" runat="server" Text='<%# Eval("PId")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="30px" />
                                        </asp:TemplateField>

                                        <asp:TemplateField ItemStyle-Width="100px" HeaderText="Plan Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblplanName" runat="server" Text='<%# Eval("Name of Plan")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtplanName" runat="server" Text='<%# Eval("Name of Plan")%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="100px" />
                                        </asp:TemplateField> 

                                        <asp:TemplateField ItemStyle-Width="100px" HeaderText="Commission on Plan">
                                            <ItemTemplate>
                                                <asp:Label ID="lblplcomm" runat="server" Text='<%# Eval("Commission")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtplcomm" runat="server" Text='<%# Eval("Commission")%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="100px" />
                                        </asp:TemplateField>


                                        <asp:TemplateField ItemStyle-Width="90px" HeaderText="Plan Validity">
                                            <ItemTemplate>
                                                <asp:Label ID="lblplanvalid" runat="server" Text='<%# Eval("Validity")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtPlanvalid" runat="server" Text='<%# Eval("Validity")%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="90px" />
                                        </asp:TemplateField>

                                        <asp:TemplateField ItemStyle-Width="100px" HeaderText="Amount">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtPrice" runat="server" Text='<%# Eval("Price")%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="100px" />
                                        </asp:TemplateField>

                                        <%--<asp:TemplateField ItemStyle-Width="50" HeaderText="Select">
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="chkActivate" runat="server" onclick="CheckBoxCheck(this);" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>--%>

                                        <asp:TemplateField HeaderText="Is Plan Active">
                                            <ItemTemplate>
                                                <asp:Label ID="lblProStatus" runat="server" Text='<%#Eval("Plan Status") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                            <asp:DropDownList ID="ddl1" runat="server">
                                            <asp:ListItem Text="Activated"></asp:ListItem>
                                            <asp:ListItem Text="Deactivated"></asp:ListItem>
                                            </asp:DropDownList>
                                                <%--<asp:CheckBox ID="chkStatus" runat="server" Checked='<%#(Eval("Plan Status")) %>' />--%>
                                            </EditItemTemplate>
                                            <ItemStyle Width="120px" />
                                        </asp:TemplateField>


                                        <asp:CommandField ShowEditButton="True"  ItemStyle-Width="110px"/>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkRemove" runat="server" CommandArgument='<%# Eval("PId")%>'
                                                    OnClientClick="return confirm('Do you want to delete?')" Text="Delete" OnClick="DeletePlan"></asp:LinkButton>
                                            </ItemTemplate>
                                            <ItemStyle Width="100px" />
                                        </asp:TemplateField>

                                    </Columns>
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <RowStyle BackColor="White" ForeColor="#330099" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

</asp:Content>



                                       <%--<asp:TemplateField ItemStyle-Width="50" HeaderText="Select">
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkCtrl" runat="server" onclick="CheckBoxCheck(this);" />
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>

                                       <%-- <asp:BoundField DataField="PId" HeaderText="Plan" Visible="False" />
                                        <asp:BoundField DataField="Name of Plan" HeaderText="Name of Plan" ItemStyle-Width="140" />
                                        <asp:BoundField DataField="Validity" HeaderText="Validity" ItemStyle-Width="60" />
                                        <asp:BoundField DataField="Price" HeaderText="Price" ItemStyle-Width="60" />--%>
