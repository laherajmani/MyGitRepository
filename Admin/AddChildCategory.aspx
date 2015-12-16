<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/myAdmin.Master" AutoEventWireup="true" CodeBehind="AddChildCategory.aspx.cs" Inherits="GroceryStore.Admin.AddChildCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<title>Add Sub Child Category</title>

<script type="text/javascript">
    //debugger;
    function myfunctionSubSubCat() {
        var r = confirm("SubSub-Category Added Successfully.");
        if (r == true) {
            location.href = "AddChildCategory.aspx";
        }
        else {
            location.href = "AddChildCategory.aspx";
        }
    }
    </script>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<div id="SubSubWrapper">

    <div id="Breadcrumbs" style="margin-top: 60px;">
        <ol class="breadcrumb">
            <li><a href=HomeAdmin.aspx class="fa fa-home">Admin Home</a></li>
            <li><a href="AddCategory.aspx" class="fa fa-file">Manage Category</a></li>
            <li><a href="AddSubCategory.aspx" class="fa fa-file">Manage Sub-Category</a></li>
            <li class="active"><i class="fa fa-file"></i>Manage Sub-Child Category</li>
        </ol>
    </div>

    <div id="SubSubPagewrap">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-offset-1">
                    <div class="panel panel-primary">
                        <!-- Default panel contents -->
                        <div class="panel-heading">
                            Add Sub-Child Category</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>
                                    Select Category</label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <%--<select runat="server" id="ProCategry" name="ParentCategory" >
                            <option value="0" selected="selected">Select Parent Category</option>
                        </select>--%>
                                <asp:DropDownList ID="ddlPCat" runat="server" Width="170px" AutoPostBack="True" OnSelectedIndexChanged="ddlPCat_SelectedIndexChanged">
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label>
                                    Select Child Category</label>
                                &nbsp;
                                <%-- <select runat="server" id="Select1" name="ParentCategory" >
                            <option value="0" selected="selected">Select Child Category</option>
                        </select>--%>
                                <asp:DropDownList ID="ddlChildCat" runat="server" Width="170px" AutoPostBack="True" 
                                    onselectedindexchanged="ddlChildCat_SelectedIndexChanged" class="form-group">
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Sub Child Category Name" name="catname"
                                    type="text" autofocus="true" required="required">
                            </div>
                            <div class="form-group">
                                <asp:CheckBox ID="chkStatus" runat="server" Checked="true" />
                                <label for="checkbox">
                                    Status(Active/Inactive)</label>
                            </div>
                            <br />
                            <div class="input-group">
                                <asp:Button ID="btnSubmit" runat="server" class="btn btn-lg btn-success" Text="Add"
                                    OnClick="btnSubmit_Click" />
                                &nbsp;
                                <input id="cancel" type="reset" class="btn btn-danger btn-lg" value="Reset">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-10 col-md-offset-0">
                    <div class="panel panel-primary">
                        <!-- Default panel contents -->
                        <div class="panel-heading">
                            Edit Child Category</div>


                        <div class="panel-body">
                        

                            <div id="dvChildCatGrid">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <div id="SubSubDiv" class="form-group">
                                            <label>
                                                Select Sub Child Category</label>
                                            <asp:DropDownList ID="ddlChildCategory" runat="server" class="form-group" AutoPostBack="True" 
                                            OnSelectedIndexChanged="ddlChildCategory_SelectedIndexChanged" Width="150px">
                                            </asp:DropDownList>
                                        </div>


                                        <asp:GridView ID="GVChildCategory" runat="server" AutoGenerateColumns="False"
                                            Font-Names="Arial" Font-Size="11pt" AlternatingRowStyle-BackColor="#C2D69B" AllowPaging="True"
                                            ShowFooter="false" OnPageIndexChanging="OnPaging" OnRowEditing="EditCategory"
                                            OnRowUpdating="UpdateCategory" OnRowCancelingEdit="CancelEdit" OnRowDeleted="DeleteCategory"
                                            CellPadding="4" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px"
                                             PagerSettings-PageButtonCount="10" PageSize="5">
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
                                                    <ItemStyle Width="100px" />
                                                </asp:TemplateField>

                                                <asp:TemplateField ItemStyle-Width="30px" HeaderText="ChildCatId">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblChildCat_ID" runat="server" Text='<%# Eval("SubSub_Pro_CatId")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ItemStyle Width="30px" />
                                                </asp:TemplateField>

                                                <asp:TemplateField ItemStyle-Width="100px" HeaderText="ChildCatName">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblChildCatName" runat="server" Text='<%# Eval("SubSub_Pro_CategorytName")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtchildCat_Name" runat="server" Text='<%# Eval("SubSub_Pro_CategorytName")%>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemStyle Width="100px"/>
                                                </asp:TemplateField>

                                                <asp:TemplateField ItemStyle-Width="150px" HeaderText="Sub Category Type">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblChildCat_Type" runat="server" Text='<%# Eval("SubSub_Pro_CategoryType")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtChildCat_Type" runat="server" Text='<%# Eval("SubSub_Pro_CategoryType")%>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemStyle Width="150px" />
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Is Active">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblchildProStatus" runat="server" Text='<%#Eval("SubSub_Pro_Status") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:CheckBox ID="chkbox3" runat="server" Checked='<%# Convert.ToBoolean(Eval("SubSub_Pro_Status"))%>' />
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
                                        <asp:AsyncPostBackTrigger ControlID="GVChildCategory" />
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
