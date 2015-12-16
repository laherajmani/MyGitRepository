<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/myAdmin.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="GroceryStore.Admin.AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
 <script src="../jQValidation.js" type="text/javascript"></script>
 <script type="text/javascript">
     //debugger;
     function myfunctioncat() {
         var r = confirm("Category Added Successfully. Click Ok to Add Sub-Category");
         if (r == true) {
             location.href = "AddSubCategory.aspx";
         }
         else {
             location.href = "AddCategory.aspx";
         }
     }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<div id="adcat-Wrapper">

    <div id="Breadcrumbs" style=" margin-top:60px;">
        <ol class="breadcrumb">
           <li><a href="HomeAdmin.aspx" class="fa fa-home">Admin Home</a></li>
            <li class="active"><i class="fa fa-file"></i>Manage Category</li>
        </ol>
    </div>
    
    <div id="adcat-PageWrapper">
    
        <div class="container">
            <div class="row">
                <div class="col-sm-4 col-sm-offset-0">
                    <div class="panel panel-primary">
                        <!-- Default panel contents -->
                        <div class="panel-heading">
                            Add Category</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label class="control-label" for="catname">
                                    Category Name</label>
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Ex. Personal Care, Fruits & Vegetables"
                                    name="catname" type="text" autofocus="true" required="required" title="Only Characters">
                                <%--pattern="[a-zA-Z\s]+"--%>
                            </div>
                            <div class="form-group">
                                <asp:CheckBox ID="chkStatus" runat="server" Checked="true" />
                                <label for="checkbox">
                                    Status(Active/Inactive)</label>
                            </div>
                            <hr />
                            <div class="input-group">
                                <asp:Button ID="btnSubmit" runat="server" class="btn btn-sm btn-success" Text="Add"
                                    OnClick="btnSubmit_Click" />
                                &nbsp;
                                <input id="cancel" type="reset" class="btn btn-danger btn-sm" value="Reset">
                            </div>
                        </div>
                    </div>
                </div>
           
                <div class="col-sm-8 col-sm-offset-0">
                    <div class="panel panel-primary">
                        <!-- Default panel contents -->
                        <div class="panel-heading">
                            Edit Category</div>
                        <div class="panel-body">
                            <div id="dvGrid">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:GridView ID="GVMainCategory" runat="server" Width="100%" AutoGenerateColumns="False"
                                            Font-Names="Arial" Font-Size="11pt" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="True"
                                            ShowFooter="True" OnPageIndexChanging="OnPaging" OnRowEditing="EditCategory"
                                            OnRowUpdating="UpdateCategory" OnRowCancelingEdit="CancelEdit" OnRowDeleted="DeleteCategory"
                                            CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="6">
                                            <Columns>
                                                <asp:TemplateField ItemStyle-Width="30px" HeaderText="ID">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblCat_ID" runat="server" Text='<%# Eval("Pro_CatId")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ItemStyle Width="30px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField ItemStyle-Width="100px" HeaderText="Name">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblCatName" runat="server" Text='<%# Eval("Pro_CategorytName")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtCatName" runat="server" Text='<%# Eval("Pro_CategorytName")%>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemStyle Width="100px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField ItemStyle-Width="150px" HeaderText="Category Type">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblCat_Type" runat="server" Text='<%# Eval("Pro_CategoryType")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtCat_Type" runat="server" Text='<%# Eval("Pro_CategoryType")%>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemStyle Width="150px" />
                                                </asp:TemplateField>
                                                <%--<asp:TemplateField ItemStyle-Width="150px" HeaderText="Is Active">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblProStatus" runat="server" Text='<%# Eval("Pro_Status")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <%--<asp:TextBox ID="txtProStatus" runat="server" Text='<%# Eval("Pro_Status")%>'></asp:TextBox>
                                                        <asp:CheckBox />
                                                        <asp:CheckBoxField DataField="Pro_Status" HeaderText="Status" SortExpression="txt_Status">
                                                            <itemstyle cssclass="itemStyleChkBox textCenter" width="50px" />
                                                        </asp:CheckBoxField>
                                                    </EditItemTemplate>
                                                    <ItemStyle Width="150px" />
                                                </asp:TemplateField>--%>
                                                <asp:TemplateField HeaderText="Is Active">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblProStatus" runat="server" Text='<%#Eval("Pro_Status") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Convert.ToBoolean(Eval("Pro_Status")) %>' />
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lnkRemove" runat="server" CommandArgument='<%# Eval("Pro_CatId")%>'
                                                            OnClientClick="return confirm('Do you want to delete?')" Text="Delete" OnClick="DeleteCategory"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:CommandField ShowEditButton="True" />
                                            </Columns>
                                            <AlternatingRowStyle BackColor="White" />
                                            <EditRowStyle BackColor="#2461BF" />
                                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#EFF3FB" />
                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                        </asp:GridView>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="GVMainCategory" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
