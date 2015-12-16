<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerAddress.aspx.cs" Inherits="GroceryStore.Customer.CustomerAddress" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Customer Address</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content=""> 
    <meta name="author" content="">
    
    <!-- Bootstrap Core CSS -->
   
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="customer.css" rel="stylesheet" type="text/css" />
    <!-- Main JS -->
    <script src="../JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <!-- Bootstrap Core JS -->

    <script src="../JScript/bootstrap.min.js" type="text/javascript"></script>
    <script src="../jQValidation.js" type="text/javascript"></script>
    <link href="customer.css" rel="stylesheet" type="text/css" />
    <link href="../font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <style>
        .panel-heading span 
        {
             margin-top: -20px;
             font-size: 15px;
         }
        .row {
                 margin-top: 30px;
                padding: 0 10px;
                }
        .clickable {
            cursor: pointer;
        }    
  </style>

    <script type="text/javascript">
      //debugger;
      jQuery(function ($) {

          $('.panel-heading span.clickable').on("click", function (e) {
              if ($(this).hasClass('panel-collapsed')) {
                  // expand the panel
                  $(this).parents('.panel').find('.panel-body').slideDown();
                  $(this).removeClass('panel-collapsed');
                  $(this).find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
              }
              else {
                  // collapse the panel
                  $(this).parents('.panel').find('.panel-body').slideUp();
                  $(this).addClass('panel-collapsed');
                  $(this).find('i').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
              }
          });
      });
</script>

    <script type="text/javascript">
    $(document).ready(function () {
       //debugger;
        $('#btnaddnewadd').click(function () {
            $('#alladdress').validate({
                rules: {
                    AddType: { required: true },
                    txtAddress1: { required: true },
                    //txtAddress2: { required: true },
                    //txtAddress3: { required: true },
                    txtcity: { required: true, maxlength: 20 },
                    txtZip: { required: true, digits: true, minlength: 6, maxlength: 6 },
                    txtState: { required: true, maxlength: 20 },
                    txtCountry: { required: true, maxlength: 20 }
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
                    } else {
                        error.insertAfter(element);
                    }
                }
            }).form();
        });
    });
    </script>

    <script type="text/javascript">
       //debugger;
       $(document).ready(function () {
           $(":reset").css("background-color", "red");
           $('#cancel').on('click', function () {
               $("#alladdress").validate().resetForm();
               $("#alladdress").removeClass("has-error");
           });
       }); 
    </script>

    <script type="text/javascript">
        (function ($) {
            $(document).ready(function () {
                // hide .navbar first
                $(".navbar").hide();
                // fade in .navbar
                $(function () {
                    $(window).scroll(function () {
                        // set distance user needs to scroll before we fadeIn navbar
                        if ($(this).scrollTop() > 250) {
                            $('.navbar').fadeIn();
                        } else {
                            $('.navbar').fadeOut();
                        }
                    });


                });
            });
        } (jQuery));
    </script>

    <script type="text/javascript">
      // Confirmation before delete operation.
      function deleteConfirm(sender) {
          var c = confirm("Are you sure?");
          if (c) { return true; } else { return false; }
      }        
    </script>

</head>
<body>
    <div id="newAd-wrapper"> 
    <div class="top-Strip-wrapper">
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style=" background-color:White;">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display style="background-color: #222;" -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#wekirana_Navbar"
                            aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                                class="icon-bar"></span><span class="icon-bar"></span>
                        </button>
                        <a id="A1" class="navbar-brand" runat="server" href="~/" style="padding: 0;">
                           <img class="img-responsive" src="../img/OrganiKong.jpg" width="120px" height="60px"
                            alt="OrganiKong">
                        </a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="wekirana_Navbar">
                       
                        <ul class="nav navbar-nav navbar-right">
                            
                            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                                class="fa fa-user"></i>
                                <label id="lblUserName" runat="server">
                                </label>
                                <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                   <%-- <li><a href="Customer/MyProfile.aspx"><i class="fa fa-fw fa-user"></i>Profile</a>
                                    </li>--%>
                                    <li><a href="../Logout.aspx"><i class="fa fa-fw fa-power-off"></i>Log Out</a> </li>
                                </ul>
                            </li>
                           <%-- <li><a id="A2" href="#" runat="server"><i class="fa fa-shopping-cart fa-1x"></i>Cart</a></li>--%>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
            </nav>
    </div>
        
   
        <div id="newAd-Pagewrapper">
            <form id="alladdress" runat="server">
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </asp:ToolkitScriptManager>
            <div class="container">
                <div class="row">
                    <div class="col-sm-2">
                        <div id="firstdiv">
                            <a id="A3" class="navbar-brand" runat="server" href="../Default.aspx" style="padding: 0;">
                                <img class="img-responsive" src="../img/OrganiKong.jpg" width="120px" height="60px"
                                            alt="OrganiKong">
                            </a>
                        </div>
                    </div>                    
                   
                    <div class="col-sm-10">
                     <div style="float: right;">
                        <ul class="list-inline">
                            <li role="presentation"><a class="fa fa-envelope" href="../ContactUs.aspx">Contact Us</a></li>
                            <li role="presentation"><a class="fa fa-user" href="MyProfile.aspx">My Profile</a></li>
                            <li role="presentation"><a class="fa fa-share" href="MyOrder.aspx">My Order</a></li>
                            <li role="presentation"><a class="fa fa-globe" href="CustomerAddress.aspx">My Address</a></li>
                            <li class="dropdown" visible="false"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-user"></i>
                                <label id="lblUserName1" runat="server">
                                </label>
                                <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="../Logout.aspx"><i class="fa fa-fw fa-power-off"></i>Log Out</a> </li>
                                </ul>
                            </li>
                        </ul>
                        </div>
                    </div> 
            
                </div>
                                                   
                <div class="row">
                    <hr style="color: black; height:1px; margin-top: -1%; margin-bottom:0%;"/>
                    <div id="Breadcrumbs">
                        <ol class="breadcrumb">
                            <li><a href="../Default.aspx" class="fa fa-home">OrganiKong-Home</a></li>
                            <li><a href="MyProfile.aspx" class="fa fa-user">My Profile</a></li>
                            <li class="active"><i class="fa fa-globe"></i>All Address</li>
                        </ol>
                    </div>
                </div>
                <div class="row" style="margin-top: 5px;">
                     <div class="col-md-12">
                        <div class="panel">
                            <div class="panel-heading">
                               <h3> All Added Address</h3>
                            </div>
                            <div class="panel-body" style="padding: 0px; height: auto;">
                                <asp:ListView runat="server" ID="listViewAddress1" GroupItemCount="4" DataKeyNames="locNo" OnItemDataBound="dataBound"
                                   OnItemDeleting="listViewAddress1_ItemDeleting" OnItemCommand="SelectDeliveryAddress">
                                    <LayoutTemplate>
                                        <div>
                                            <asp:PlaceHolder runat="server" ID="groupPlaceHolder" />
                                        </div>
                                    </LayoutTemplate>
                                    <GroupTemplate>
                                        <div style="clear: both; width: auto;">
                                            <asp:PlaceHolder runat="server" ID="itemPlaceHolder" />
                                        </div>
                                    </GroupTemplate>
                                    <ItemTemplate>
                                        <div class="AddressItem" style=" margin-left:50px;">
                                            <%--<div>
                                                <asp:HiddenField ID="HFCID" runat="server" Value='<%# Bind("Sno")%>' />
                                                <asp:HiddenField ID="HFAddID" runat="server" Value='<%# Bind("locNo")%>' />
                                            </div>--%>
                                            <div class="table-responsive">
                                                <table class="table" border="2">
                                                    <tr>
                                                        <td>
                                                            <label>
                                                                Nick Name* :</label>
                                                                <asp:HiddenField ID="hdnCustAddId" runat="server" Value='<%#Eval("locNo") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblNickname" Text='<%# Eval("Address Nick Name")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>
                                                                Address Line 1:</label>
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblAddress10" Text='<%# Eval("Address Line1")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>
                                                                Address Line 2:</label>
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblAddress11" Text='<%# Eval("Street")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>
                                                                Address Line 3:</label>
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblAddress12" Text='<%# Eval("LandMark")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>
                                                                City:</label>
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblCity13" Text='<%# Eval("City")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>
                                                                State:</label>
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblState14" Text='<%# Eval("State")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>
                                                                Pincode:</label>
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblPincode15" Text='<%# Eval("Pincode")%>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label>
                                                                Country:</label>
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblCountry16" Text='<%# Eval("Country")%>'></asp:Label>
                                                        </td>

                                                    </tr>
                                                    <tr><td colspan="2">
                                                    <asp:Button ID="DelivertoThis" runat="server" class="btn btn-info btn-block"  CommandName="SelectAddress"  CommandArgument='<%#Eval("locNo") %>' Text="Deliver To This" /> 
                                                    </td></tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <div style="margin-left: 62px;">
                                                                <asp:LinkButton ID="lnkUpdateAddress" Class="btn btn-sm btn-success" runat="server"
                                                                    Text="Edit" OnClick="EditAdress"></asp:LinkButton>
                                                                &nbsp;
                                                               
                                                                <asp:Button ID="btnDelete" runat="server" Text="Delete" Class="btn btn-sm btn-danger" CommandName="Delete" OnClientClick="return deleteConfirm();" />
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                    <EmptyDataTemplate>
                                        <div class="emptyTemplete">
                                            Sorry - No Address Founnd.
                                        </div>
                                    </EmptyDataTemplate>
                                    <ItemSeparatorTemplate>
                                        <div class="itemSeparator">
                                        </div>
                                    </ItemSeparatorTemplate>
                                    <GroupSeparatorTemplate>
                                        <div class="groupSeparator">
                                        </div>
                                    </GroupSeparatorTemplate>
                                    <EmptyDataTemplate>
                                    No Address Found. Go to Profile and Add a Address.
                                    </EmptyDataTemplate>
                                </asp:ListView>
                                <div id="DivSecondryAdd" style="float: left;">
                                    <asp:LinkButton Text="" ID="lnkFake" runat="server" />
                                    <asp:ModalPopupExtender ID="MPEUpdate" PopupControlID="pnlPopupaddress" TargetControlID="lnkFake"
                                        runat="server" CancelControlID="btnClose" BackgroundCssClass="modaladdBackground">
                                    </asp:ModalPopupExtender>
                                    <asp:Panel ID="pnlPopupaddress" runat="server" CssClass="modalPopupEditAddress" Style="display: none">
                                        <div id="editForm" class="header">
                                            Update Address</div>
                                        <div class="body">
                                            <table>
                                                <tr>
                                                    <td>
                                                        Nick Name*
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtnickname" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Address Line 1:
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtaddress01" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Address Line 2:
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtaddress02" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Address Line 3:
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtaddress03" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        City:
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtcityedit" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        State:
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtStateEdit" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        PinCode:
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtPincodeEdit" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Country:
                                                    </td>
                                                    <td>
                                                        <input type="text" id="txtCountryEdit" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <asp:Button ID="btnSave" class="btn btn-xs btn-success" runat="server" Text="Update"
                                                            OnClick="Update" />
                                                        <div class="footer" align="right">
                                                            <asp:Button ID="btnClose" runat="server" Text="Close" CssClass="button" />
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </asp:Panel>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
             

                <div class="row-fluid" runat="server" id="add_Address_Panel">
                    <div class="col-md-6">
                        <div class="panel-group" id="accordion" role="tablist">
                            <div class="panel panel-primary">

                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h3 class="panel-title">
                                        <a class="accordion-toggle" role="button" data-toggle="collapse" data-parent="#accordion"
                                            href="#collapseOne">Add New Address Here</a>
                                    </h3>
                                </div>

                                <div id="collapseOne" class="panel-collapse" role="tabpanel">
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <label class="control-label" for="AddType">
                                                Nick Name</label>
                                            <input type="text" class="form-control" placeholder="e.g. Home/ Office/ Shipping"
                                                name="AddType" autofocus="true" id="AddType" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="txtAddress1">
                                                House No.</label>
                                            <input type="text" class="form-control" placeholder="House no./ Flat No." name="txtAddress1"
                                                autofocus="true" id="txtAddress1" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="txtAddress2">
                                                Street</label>
                                            <input type="text" class="form-control" placeholder="Street Name/No." name="txtAddress2"
                                                autofocus="true" id="txtAddress2" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="txtAddress3">
                                                Locality/ Landmark</label>
                                            <input type="text" class="form-control" placeholder="Near By Landmark" name="txtAddress3"
                                                autofocus="true" id="txtAddress3" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="txtcity">
                                                City</label>
                                            <input type="text" class="form-control" placeholder="City Name" name="txtcity" id="txtcity"
                                                runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="txtZip">
                                                City Pin Code</label>
                                            <input type="text" class="form-control" placeholder="6 Digit Pin Code" name="txtZip"
                                                id="txtZip" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="txtState">
                                                State</label>
                                            <input type="text" class="form-control" placeholder="State Name" name="txtState"
                                                id="txtState" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="txtCountry">
                                                Country</label>
                                            <input type="text" class="form-control" placeholder="Country Name" name="txtCountry"
                                                id="txtCountry" runat="server" />
                                        </div>
                                        <div style="margin-left: 70px;">
                                            <asp:Button ID="btnaddnewadd" Class="btn btn-md btn-success" runat="server" Text="Save"
                                                OnClick="btnaddnewadd_Click" />
                                          <input id="cancel" type="reset" class="btn btn-danger btn-md" value="Reset">
                                        </div>
                                    </div>
                                </div>

                                <div class="panel-footer">
                                    You Can Add 5 Addresses with your Account.
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                

            </div>
            </form>
        </div>

        <footer id="footer">
         <div class="container" style="clear: both; display: table;">
             <div class="col-md-12">
                 <div class="row footer">
                     <div class="first col-md-3">
                          <h4 class="footh4">
                            About OrganiKong</h4>
                        <ul class="footul">
                             <li class="footli"><a class="foota" href="../About-Us">What is OrganiKong ?</a></li>
                             <li class="footli"><a class="foota" href="../Where-We-Deliver">Where We Deliver ?</a></li>
                             <li class="footli"><a class="foota" href="../Contact-Us">Contact Us</a></li>
                             <li class="footli"><a class="foota" href="../Invite-A-Friend">Refer A Friend</a></li>
                         </ul>
                     </div>
                     <div class="latest col-md-3">
                          <h4 class="footh4">
                          Organic</h4>
                        <ul class="footul">
                            <li class="footli"><a class="foota" href="../OrganicFarming.htm">Organic Farming</a></li>
                            <li class="footli"><a class="foota" href="../Eat Organic.htm">Eat Organic</a></li>
                            <li class="footli"><a class="foota" href="../LegalDisclaimer.htm">Legal Disclaimer</a></li>
                        </ul>
                     </div>
                     <div class=" links col-md-3">
                         <h4 class="footh4">
                             Information</h4>
                         <ul class="footul">
                             <li class="footli"><a class="foota" href="../FAQ.htm">FAQ's</a></li>
                             <li class="footli"><a class="foota" href="../TermsCondition.htm">Term & Conditions</a></li>
                             <li class="footli"><a class="foota" href="../Policy.htm">Return/Refund Policy</a></li>
                             <li class="footli"><a class="foota" href="../OurPartners.aspx">Our Partners</a></li>
                         </ul>
                     </div>
                     <div class="social col-md-3">
                         <h4 class="footh4">
                             Connect with Us</h4>
                         <div>
                            <a href="https://twitter.com/OrganiKong" target="_blank">
                                <img title="Twitter" alt="Twitter" src="../img/twitter.png" width="35" height="35" />
                            </a><a href="https://www.facebook.com/wekirana?fref=ts" target="_blank">
                                <img title="Facebook" alt="Facebook" src="../img/facebook.png" width="35" height="35" />
                            </a><a href="https://oragnikong@gmail.com " target="_blank">
                                <img src="../img/g.png" title="google+" alt="Google plus" width="35" height="35" />
                            </a>
                         </div>
                     </div>
                 </div>
                 <div class="row copywrite">
                     <div class="row copywrite">
                Copyright <a href="http://www.OrganiKong.com">OrganiKong Company</a>,Collaborative Business Consulting 2015
                </div>
                 </div>
             </div>
         </div>
   </footer>

    </div>
</body>
</html>

<%--<script type="text/javascript">
        function resetFeilds() {
            //debugger;
            var NickName = document.getElementById('AddType');
            var Add1 = document.getElementById('txtAddress1');
            var Add2 = document.getElementById('txtAddress2');
            var Add3 = document.getElementById('txtAddress3');
            var City = document.getElementById('txtcity');
            var State = document.getElementById('txtState');
            var Zip = document.getElementById('txtZip');
            var Country = document.getElementById('txtcountry');
            Add1.value = "";
            Add2.value = "";
            Add3.value = "";
            City.value = "";
            State.value = "";
            Zip.value = "";
            Country.value = "";
             unhighlight:function (element) {
                 $(element).closest('.form-group').removeClass('has-error');
             }
        }
</script>--%>
