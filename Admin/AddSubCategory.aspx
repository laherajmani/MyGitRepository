<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/myAdmin.Master" AutoEventWireup="true" CodeBehind="AddSubCategory.aspx.cs" Inherits="GroceryStore.Admin.AddSubCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<script type="text/javascript">
    //debugger;
    function myfunctionSubCat() {
        var r = confirm("Sub-Category Added Successfully. Click Ok to Add Sub-Sub-Category");
        if (r == true) {
            location.href = "AddChildCategory.aspx";
        }
        else {
            location.href = "AddSubCategory.aspx";
        }
    }
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
<div id="adSub_Wrapper">

    <div id="Breadcrumbs" style="margin-top: 60px;">
        <ol class="breadcrumb">
            <li><a href="HomeAdmin.aspx" class="fa fa-home">Admin Home</a></li>
            <li><a href="AddCategory.aspx" class="fa fa-file">Manage Category</a></li>
            <li class="active"><i class="fa fa-file"></i>Manage Child Category</li>
        </ol>
    </div>
    
<div id="adSub-PageWrapper">
<div class="container">
    <div class="row">
        <div class="col-lg-8 col-md-offset-2">
            <div class="panel panel-primary">
                <!-- Default panel contents -->
                <div class="panel-heading">
                    Add Sub-Category</div>
                <div class="panel-body">
                   <%-- <p>Add Sub-Category</p>--%>
                   <%-- <hr />--%>
                    <div class="form-group">
                        <label>Select Parent Category</label>
                       
                        <asp:DropDownList ID="ProCategry" runat="server" AutoPostBack="true" 
                            onselectedindexchanged="ProCategry_SelectedIndexChanged">
                        </asp:DropDownList>

                    </div>

                    <div class="form-group">
                        <input class="form-control" placeholder="Category Name" name="catname" type="text"
                            autofocus="true" required="required" >
                    </div>
                    <div class="form-group">                        
                        <asp:CheckBox ID="chkStatus" runat="server" Checked="true" />
                        <label for="checkbox">
                            Status(Active/Inactive)</label>
                    </div>
                    <hr style=" margin-bottom:1%;  margin-top:1%"/>
                    <div class="input-group">
                        <asp:Button ID="btnSubmit" runat="server" class="btn btn-md btn-success" Text="Add" OnClick="btnSubmit_Click" />
                        &nbsp;
                        <input id="cancel" type="reset" class="btn btn-danger btn-md" value="Reset">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-primary">
                <!-- Default panel contents -->
                <div class="panel-heading">
                    Edit Sub-Category</div>
                <div class="panel-body">
                    <div id="dvSubCatGrid">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="GVSubCategory" runat="server" Width="100%" AutoGenerateColumns="False"
                                    Font-Names="Arial" Font-Size="11pt" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="True"
                                    ShowFooter="True" OnPageIndexChanging="OnPaging" OnRowEditing="EditCategory"
                                    OnRowUpdating="UpdateCategory" OnRowCancelingEdit="CancelEdit" OnRowDeleted="DeleteCategory"
                                    CellPadding="4" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" PageSize="5">
                                    <Columns>
                                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="CatId">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCat_ID" runat="server" Text='<%# Eval("Pro_CatId")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="30px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField ItemStyle-Width="100px" HeaderText="CatName">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCatName" runat="server" Text='<%# Eval("Pro_CategorytName")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtCat_Name" runat="server" Text='<%# Eval("Pro_CategorytName")%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="100px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="SubCatId">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSubCat_ID" runat="server" Text='<%# Eval("Sub_Pro_CatId")%>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="30px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField ItemStyle-Width="100px" HeaderText="SubCatName">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSubCatName" runat="server" Text='<%# Eval("Sub_Pro_CategorytName")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtsubCat_Name" runat="server" Text='<%# Eval("Sub_Pro_CategorytName")%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="100px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField ItemStyle-Width="150px" HeaderText="Sub Category Type">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSubCat_Type" runat="server" Text='<%# Eval("Sub_Pro_CategoryType")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtSubCat_Type" runat="server" Text='<%# Eval("Sub_Pro_CategoryType")%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="150px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Is Active">
                                            <ItemTemplate>
                                                <asp:Label ID="lblProStatus" runat="server" Text='<%#Eval("Sub_Pro_Status") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:CheckBox ID="chkbox2" runat="server" Checked='<%# Convert.ToBoolean(Eval("Sub_Pro_Status"))%>' />
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkRemove" runat="server" CommandArgument='<%# Eval("Sub_Pro_CatId")%>'
                                                    OnClientClick="return confirm('Do you want to delete?')" Text="Delete" OnClick="DeleteCategory"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:CommandField ShowEditButton="True" />
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
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="GVSubCategory" />
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
