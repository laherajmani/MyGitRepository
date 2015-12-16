<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/myAdmin.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="GroceryStore.Admin.AddProduct" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<%--<script src="../jQValidation.js" type="text/javascript"></script>--%>
    <%--<script type="text/javascript">
        $(document).ready(function () {
            debugger;
            $.validator.addMethod("Select", function(value, element, arg){
             return arg != value;
                }, "Value must not equal arg.");

            $("#form1").validate({
                rules: {
                    <%=txtproductname.UniqueID%>: {
                        required: true
                    },
                    <%=ImageUpload1.UniqueID%>: {
                        required: false,
                        accept: "*/jpeg"
                    },
                    <%=txtmanufacturer.UniqueID%>: {
                        required: true
                    },
                  
                    <%=txtmodelno.UniqueID%>: {
                        required: true
                    },
                    <%=txtMRP.UniqueID%>: {
                        required: false
                    },
                   
                    <%=txtcomment.UniqueID%>: {
                        required: false
                    },
                 
                    <%=ddlunit.UniqueID%>: {
                        required: true
                    },
                    <%=txtcolor.UniqueID%>: {
                        required: true
                    },
                     <%=txtfeatitle.UniqueID%>: {
                        required: false
                    },
                    <%=txtarea.UniqueID%>: {
                        required: false
                    }                                    
                },

                highlight: function (element) {
                    $(element).closest('.form-group').addClass('has-error');
                },
                unhighlight: function (element) {
                    $(element).closest('.form-group').removeClass('has-error');
                },
                errorElement: 'span',
                errorClass: 'help-block',
                errorPlacement: function (error, element) {
                    if (element.parent('.input-group').length) {
                        error.insertAfter(element.parent());
                    } 
                    else {
                        error.insertAfter(element);
                    }
                }
              });           
                $('#btnSubmit').click(function() {
                $("#form1").valid();
                });                             
        });
    </script>--%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="ad-addpro-Wrapper">

    <div id="ad-addpro-PageWarpper">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-offset-1">
                    <div class="panel panel-primary">
                        <!-- Default panel contents -->
                        <div class="panel-heading">
                            Add Product</div>
                        <div class="panel-body">
                            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                            </asp:ToolkitScriptManager>

                            
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
                                                        <%--<select id="ddlChildCategory" runat="server" class="form-group">
                                                    <option value=''>Select ...</option>
                                                </select>--%>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                            
                         <div id="showForm"  visible="true">
                            <div class="form-group">
                                <label>
                                    Product Name</label>
                                <%--<input class="form-control" placeholder="Product Name" name="productname" type="text"
                                    autofocus="true" runat="server" id="txtproductname">--%>
                                    <asp:TextBox ID="txtproductname" class="form-control" MaxLength="30" runat="server" ClientIDMode="Static"/>
                                <asp:RequiredFieldValidator ID="rfvname" runat="server" ControlToValidate="txtproductname"
                                    ErrorMessage="Product Name" InitialValue="Product Name" ValidationGroup="val">
                                </asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label>
                                    Product Description</label>
                                <div id="summernote">
                                    <cc1:Editor ID="Editor1" runat="server" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label>
                                    Upload Product Image
                                </label>
                                <asp:FileUpload ID="ImageUpload1" runat="server" />
                            </div>
                            <div class="form-group">
                                <label>
                                    Manufacturer/ Seller</label>
                                <input class="form-control" placeholder="Manufacturer's Name" name="manufName" type="text"
                                    autofocus="true" id="txtmanufacturer" runat="server">
                                    <asp:RequiredFieldValidator ID="rfvMaker" runat="server" ControlToValidate="txtmanufacturer"
                                    ErrorMessage="Manufacturer's Name" InitialValue="Manufacturer's Name">
                                </asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>
                                    Model Number/ Serial No</label>
                                <input class="form-control" placeholder="Product Model Number" name="modelnumber"
                                    type="text" autofocus="true" id="txtmodelno" runat="server">

                            </div>
                            <div class="form-group">
                                <label>
                                    Product M.R.P.</label>
                                <input class="form-control" placeholder="&#x20B9;" name="mrp" type="text" autofocus="true"
                                    id="txtMRP" runat="server">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMRP"
                                 ErrorMessage="Product Price ?" InitialValue="Product Price ?">
                                </asp:RequiredFieldValidator>
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

                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <table>
                                            <tr>
                                                <td>
                                                    <label>
                                                        Select Product Variant</label>
                                                    <br />
                                                    <asp:DropDownList ID="ddlvarientname" runat="server" Width="140px" class="form-group"
                                                        AutoPostBack="true" OnSelectedIndexChanged="ddlvarientname_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                </td>
                                                <td style=" width:5px;">
                                                </td>
                                                <td>
                                                    <label>
                                                        Select Unit</label>
                                                    <br />
                                                    <asp:DropDownList ID="ddlunit" runat="server" Width="100px" class="form-group">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                
                            
                             <br />
                                <input class="form-control" placeholder="Give Product Variant Value" name="colorname"
                                    type="text" autofocus="true" runat="server" id="txtcolor">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcolor"
                                 ErrorMessage="Variant Value?" InitialValue="Variant Value ?">
                                </asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group">
                                <asp:CheckBox ID="chkStatus" runat="server" Checked="true" />
                                <label for="checkbox">
                                    Show On HomePage(Status)</label>
                            </div>
                            <div class="form-group">
                                <label>
                                    Feature Title</label>
                                <input class="form-control" placeholder="Title" name="featitle" type="text" autofocus="true"
                                    runat="server" id="txtfeatitle">
                            </div>
                            <div class="form-group">
                                <label>
                                    Feature Description</label>
                                <textarea rows="5" cols="90" class="form-control" name="FeaturDesc" runat="server"
                                    id="txtarea"></textarea>
                            </div>
                            <asp:HiddenField ID="img" runat="server" Value="" />
                            <div class="input-group">
                                <asp:Button ID="btnSubmit" runat="server" class="btn btn-lg btn-success" Text="Add"
                                    OnClick="btnSubmit_Click" ValidationGroup="val"/>
                                &nbsp;
                                <input id="cancel" type="reset" class="btn btn-danger btn-lg" value="Reset">
                            </div>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>

 <%-- <select name="selectproVarient" class="form-control" id="ddlvarient1" runat="server"
                                    width="25%" required="required">
                                    <option value="" selected="selected" hidden="hidden"></option>
                                    <option value="Weight">Weight</option>
                                    <option value="Color">Volume</option>
                                    <option value="Sizes">No of Units</option>
                                </select>--%>


                            <%--<div class="form-group">
                                <label>
                                    Product Title/ Quality</label>
                                <input class="form-control" placeholder="Text" type="text" autofocus="true" id="txttitle"
                                    runat="server">
                            </div>--%>

                                   <%--<div class="form-group">
                                <label>
                                    Product Payment Mode</label>
                                <select name="ddlpaymenttype" class="form-control" runat="server" width="25%" required="required"
                                    id="slctpaymenttype">
                                    <option value="" selected="selected" hidden="hidden"></option>
                                    <option value="COD">COD</option>
                                    <option value="OnlinePayment">OnlinePayment</option>
                                </select>
                            </div>--%>

  <%--<div class="form-group">
                                <label>
                                    Shipping Cost</label>
                                <input class="form-control" placeholder="&#x20B9;" name="shippingcost" type="text"
                                    autofocus="true" id="txtShipCost" runat="server">
                            </div>--%>

                           <%-- <div class="form-group">
                                <label>
                                    Replacement Guarantee</label>
                                <select name="ddlreplcment" class="form-control" runat="server" width="25%" required="required"
                                    id="slctreplcment">
                                    <option value="" selected="selected" hidden="hidden"></option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>--%>


                            <%-- <div class="form-group">
                                <label>
                                    Manufacturing Date/ Packing Date</label>
                                <input class="form-control" placeholder="mm/dd/yyyy" name="makingDate" autofocus="true"
                                    id="txtmftdate" runat="server">
                            </div>
                            <div class="form-group">
                                <label>
                                    Expiry Date/ Use Before</label>
                                <input class="form-control" placeholder="mm/dd/yyyy" name="expiryDate" autofocus="true"
                                    id="txtExprydate" runat="server">
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


<%--                            //                success : function(element) {
//                                        element.text('OK!').addClass('valid')
//                                                .closest('.control-group')
//                                                .removeClass('error').addClass('success');
//                                    }
                                              --%>


