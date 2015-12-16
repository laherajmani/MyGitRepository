<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/myAdmin.Master" AutoEventWireup="true" CodeBehind="ManageProduct.aspx.cs" Inherits="GroceryStore.Admin.ManageProduct" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<%--<script src="../JScript/jquery.blockUI.js" type="text/javascript"></script>--%>
<script type = "text/javascript">
    function Hidepopup() {
        $find("popup").hide();
        return false;
    }
</script>


<%--<script type="text/javascript">
    debugger;
    function uploadError(sender, args) {
        document.getElementById('lblStatus').innerText = args.get_fileName(),
	"<span style='color:red;'>" + args.get_errorMessage() + "</span>";
    }

    function StartUpload(sender, args) {
        document.getElementById('lblStatus').innerText = 'Uploading Started.';
    }

    function UploadComplete(sender, args) {
        var filename = args.get_fileName();
        var contentType = args.get_contentType();
        var text = "Size of " + filename + " is " + args.get_length() + " bytes";
        if (contentType.length > 0) {
            text += " and content type is '" + contentType + "'.";
        }
        document.getElementById('lblStatus').innerText = text;
    }

</script>--%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="wrapper">
    <div id="Page-wrapper">
        <div id="container">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

         <div class="row">
             <div class="col-lg-8 col-md-offset-1">
                 <div class="panel panel-primary">
                     <!-- Default panel contents -->
                     <div class="panel-heading">
                         Add Product</div>
                     <div class="panel-body">
                        <table class="table">
                                        <thead>
                                            <tr>
                                                <th>
                                                    Select Category
                                                </th>
                                                <th>
                                                    Select Sub Category
                                                </th>
                                                <th>
                                                    Select Child Category
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <asp:DropDownList ID="ddlCategory" runat="server" Width="70%" class="form-group"
                                                            OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="True">
                                                        </asp:DropDownList>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <asp:DropDownList ID="ddlSubCategory" runat="server" Width="65%" class="form-group"
                                                            OnSelectedIndexChanged="ddlSubCategory_SelectedIndexChanged" AutoPostBack="True">
                                                        </asp:DropDownList>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <asp:DropDownList ID="ddlChildCategory" runat="server" Width="65%" class="form-group"
                                                            AutoPostBack="True" OnSelectedIndexChanged="ddlChildCategory_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                     </div>
                 </div>
             </div>
         </div>
            <div class="row" id="GVDiv" runat="server" visible="false">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                            <div class="col-md-12 col-md-offset-0">
                                <div class="panel panel-primary">
                                    <!-- Default panel contents -->
                                    <div class="panel-heading">
                                        Manage Product</div>
                                    <div class="panel-body">
                                        <asp:GridView ID="gvmanageProduct"  runat="server" Width="100%" AutoGenerateColumns="false">
                                        <EmptyDataTemplate><h3 style="text-align:center"><label>No Product found...<label></h3></EmptyDataTemplate>
                                            <Columns>
                                                <asp:TemplateField ItemStyle-Width="30px" HeaderText="Edit">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit" OnClick="Edit"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="P.Id">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblpid" runat="server" Text='<%#Eval("ProductId") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Product Name">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblpName" runat="server" Text='<%#Eval("ProductName") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Description">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbldes" runat="server" Text='<%#Eval("txt_ProductDesc") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Brand">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblBrand" runat="server" Text='<%#Eval("Brand") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Model No">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblModelNo" runat="server" Text='<%#Eval("ModelNo") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="M.R.P.">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblPrise" runat="server" Text='<%#Eval("Price_MRP") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Varient Name">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblVarientName" runat="server" Text='<%#Eval("txtVariant_Name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Unit">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblunit" runat="server" Text='<%#Eval("Unit") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Value">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblVarientValue" runat="server" Text='<%#Eval("txtVariant_Value") %>'></asp:Label>
                                                    </ItemTemplate>
                                                     </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Image">
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# (string) FormatImageUrl( (string) Eval("txtImage1_Url")) %>'
                                                            Height="50" Width="90" AlternateText="imz" />
                                                        <asp:Label ID="lblImgurl1" runat="server" Text='<%#Eval("txtImage1_Url") %>' Visible="false"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Image2" ItemStyle-Width="40px">
                                                    <ItemTemplate>
                                                        <asp:Image ID="img2" runat="server" ImageUrl='<%# (string) FormatImageUrl( (string) Eval("txtImage2_Url")) %>'
                                                            Height="50" Width="90"  AlternateText="imz" />
                                                        <asp:Label ID="lblImgurl2" runat="server" Text='<%#Eval("txtImage2_Url") %>' Visible="false"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Product Status">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblProductStatus" runat="server" Text='<%#Eval("Product_Status") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Features Title">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblFteaturesTitle" runat="server" Text='<%#Eval("txtKeyFeaturesTitle1") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Description">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbldesc" runat="server" Text='<%#Eval("txtDescription") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                            <asp:Panel ID="P1" runat="server" Style="display: none; margin-top:2%" CssClass="modalPopup">
                                <div id="showForm" class="container-fluid" runat="server" Style=" margin-top:2%; height:90%; overflow-y:scroll;">
                                <div class="row">                                
                                    <div class="col-sm-12">
                                        <div  class="form-group">
                                            <div class="col-sm-4"><label for="txtid" class="label-control">
                                                Product ID:</label></div>
                                            <div class="col-sm-8"><asp:TextBox ID="txtid" class="form-control" runat="server" ReadOnly="true" /></div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4"><label class="label-control">
                                                Product Name:</label></div>
                                            <div class="col-sm-8"><asp:TextBox ID="txtProductName" class="form-control" runat="server" /></div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4"><label>
                                                Description:</label></div>
                                           <div class="col-sm-8"><asp:TextBox ID="txtDescription" class="form-control" runat="server" /></div>
                                        </div>
                                        <div class="form-group">
                                           <div class="col-sm-4"><label>
                                                Brand Name:</label></div>
                                            <div class="col-sm-8"><asp:TextBox ID="txtbrand" class="form-control" runat="server" /></div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4"><label>
                                                Model No:</label></div>
                                            <div class="col-sm-8"><asp:TextBox ID="txtModelNo" class="form-control" runat="server" /></div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4"><label>
                                                Price MRP:</label></div>
                                            <div class="col-sm-8"><asp:TextBox ID="txtPriseMrp" class="form-control" runat="server" /></div>
                                        </div>
                                        <div class="form-group">
                                           <div class="col-sm-4"> <label>
                                                Varient Name:</label></div>
                                            <div class="col-sm-8"><asp:TextBox ID="txtVarientName" class="form-control" runat="server" /></div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4"><label>
                                                Varient Unit:</label></div>
                                            <div class="col-sm-8"><asp:TextBox ID="txtunit" class="form-control" runat="server" /></div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4"><label>
                                                Varient Value:</label></div>
                                            <div class="col-sm-8"><asp:TextBox ID="txtVarientValue" class="form-control" runat="server" /></div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4">
                                                <label>
                                                    First Image Url:</label></div>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtImage1" class="form-control" runat="server" />
                                                <asp:FileUpload ID="ImageUpload1" runat="server" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4"><label>
                                                Second Image Url:</label></div>
                                            <div class="col-sm-8"><asp:TextBox ID="txtImage2" class="form-control" runat="server" /></div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4"><label>
                                                Product Status:</label></div>
                                            <div class="col-sm-8"><asp:TextBox ID="txtProductStatus" class="form-control" runat="server" /></div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4"><label>
                                                Features Title:</label></div>
                                            <div class="col-sm-8"><asp:TextBox ID="txtFeaturesTitle1" class="form-control" runat="server" /></div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4"><label>
                                                Description:</label></div>
                                            <div class="col-sm-8"><asp:TextBox ID="txtdesc" class="form-control" runat="server" /></div>
                                        </div>
                                        <div class="form-group">
                                        <asp:HiddenField ID="img" runat="server" Value="" />
                                            <asp:Button ID="Sbumit" Text="submit" class="btn btn-md btn-success" runat="server" OnClick="Sbumit_Click" />
                                            <asp:Button ID="btnCancel" runat="server" class="btn btn-md btn-danger" Text="Cancel" OnClientClick="return Hidepopup()" />
                                        </div>
                                    </div>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:LinkButton ID="lnkFake" runat="server"></asp:LinkButton>
                            <asp:ModalPopupExtender ID="popup" runat="server" DropShadow="false" PopupControlID="P1"
                                TargetControlID="lnkFake" BackgroundCssClass="modalBackground">
                            </asp:ModalPopupExtender>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="gvmanageProduct" />
                       <%-- <asp:AsyncPostBackTrigger ControlID="Sbumit" />--%>
                       <asp:PostBackTrigger ControlID="Sbumit" />
                    </Triggers>
                </asp:UpdatePanel>
            </div>
            </div>
    </div>
</div>
</asp:Content>

<%--<asp:AsyncFileUpload ID="AsyncFileUpload1" runat="server" OnClientUploadError="uploadError"
                                                    OnClientUploadStarted="StartUpload" OnClientUploadComplete="UploadComplete" CompleteBackColor="Lime"
                                                    UploaderStyle="Modern" ErrorBackColor="Red" ThrobberID="Throbber" OnUploadedComplete="AsyncFileUpload1_UploadedComplete"
                                                    UploadingBackColor="#66CCFF" />
<asp:Label ID="Throbber" runat="server" Style="display: none">
                                                <img src="../Icons/loader.png" align="absmiddle" alt="loading" />
                                            </asp:Label>
<asp:Label ID="lblStatus" runat="server" Style="font-family: Arial; font-size: small;"></asp:Label>--%>
