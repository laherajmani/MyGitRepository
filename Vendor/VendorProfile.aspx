<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VendorProfile.aspx.cs" Inherits="GroceryStore.Vendor.VendorProfile" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Vendor Profile</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <script src="../JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../JScript/bootstrap.min.js" type="text/javascript"></script>
    <script src="../jQValidation.js" type="text/javascript"></script>
    <link href="VendorCss.css" rel="stylesheet" type="text/css" />
</head>

<script type="text/javascript">
    $(document).ready(function () {
        //debugger;
        $('#VendorProfileForm').validate({
            rules: {
                txtFirstName: { required: true },
                txtLastName: { required: true },
                txtemail: { required: true, email: true },
                txtmobile1: { required: true, digits: true, minlength: 10,maxlength: 10 },
                txtmobile2: { required: true, digits: true, minlength: 10, maxlength: 10 },
                txtFax: { required: true },
                txtweburl: { required: false },
                vendorLogoUpload1: { required: false },
                txtAddress1: { required: true },
                txtAddress2: { required: true },
                txtAddress3: { required: true },
                txtcity: { required: true,maxlength:20},
                txtZip: { required: true, maxlength: 20 },
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
//            success: function (element) {
//                element.text('OK!').addClass('valid')
//                                                .closest('.control-group')
//                                                .removeClass('error').addClass('success');
//            }
        });
    });
    </script>

<%--<script type="text/javascript">
    //debugger;
    $(document).ready(function () {
        $(":reset").css("background-color", "red");
        $('#btnCancel').on('click', function () {
            $("#VendorProfileForm").validate().resetForm();
            //$("#VendorProfileForm").removeClass("error").addClass('success');
        });
    }); 
    </script>--%>

    <script type="text/javascript">
        function resetFeilds() {
            //debugger;
            var FirstName = document.getElementById('txtFirstName');
            var LastName = document.getElementById('txtLastName');
            var fax = document.getElementById('txtFax');
            var weburl = document.getElementById('txtweburl');
            var logourl = document.getElementById('txtlogo');
            var Email = document.getElementById('txtemail');
            var Mobile1 = document.getElementById('txtmobile1');
            var Mobile2 = document.getElementById('txtMobile2');
            var Add1 = document.getElementById('txtAddress11');
            var Add2 = document.getElementById('txtAddress22');
            var Add3 = document.getElementById('txtAddress33');
            var City = document.getElementById('txtcity');
            var State = document.getElementById('txtState');
            var Zip = document.getElementById('txtZip');
            var Country = document.getElementById('txtcountry');
            FirstName.value = "";
            FirstName.focus();
            LastName.value = "";
            fax.value = "";
            weburl.value = "";
            logourl.value = "";
            Email.value = "";
            Mobile1.value = "";
            Mobile2.value = "";
            Add1.value = "";
            Add2.value = "";
            Add3.value = "";
            City.value = "";
            State.value = "";
            Zip.value = "";
            Country.value = "";
        }
</script>
<body>

    <div id="VproWrapper">

    <nav class="navbar navbar-default" role="navigation" style="background-color:White;">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                    aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <a id="A1" class="navbar-brand" runat="server" href="Vendor.aspx" style="padding: 0;">
                    <img class="img-responsive" src="../img/OrganiKong.jpg"
                        alt="OrganiKong.Com" width="100px" height="47px"></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                 
                </ul>              
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Vendor.aspx"><i class="fa fa-fw fa-home"></i>Home</a> </li>
                    <li><a href="../ContactUs.aspx"><i class="fa fa-fw fa-envelope"></i>Contact Us</a></li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                        class="fa fa-user"></i>
                        <label id="lblUserName" runat="server">
                        </label>
                        <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                           <%-- <li><a href="VendorProfile.aspx"><i class="fa fa-fw fa-user"></i>Profile</a> </li>
                            <li class="divider"></li>--%>
                            <li><a href="../Logout.aspx"><i class="fa fa-fw fa-power-off"></i>Log Out</a> </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

        <div id="vProPagewrap">
       
            <form id="VendorProfileForm" runat="server">
            <div class="container">
                <div class="row">
                    <div id="Breadcrumbs" style="">
                        <ol class="breadcrumb">
                            <li><a href="Vendor.aspx" class="fa fa-home">OrganiKong Vendor Home</a></li>
                            <li class="active"><i class="fa fa-user">Vendor Profile</i></li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                    <div id="VregstrD" class="col-md-5 col-md-offset-4">
                        <div class="login-panel panel panel-primary">
                            <div class="panel-heading">
                                <h4>
                                    Update Vendor Profile</h4>
                            </div>
                            <div class="panel-body">
                             
                                    <div class="form-group">
                                        <label class="control-label" for="Firstname">
                                            First Name</label>
                                        <input class="form-control" placeholder="First Name" name="Firstname" type="text"
                                            autofocus="true" id="txtFirstName" runat="server">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="Lastname">
                                            Last Name</label>
                                        <input class="form-control" placeholder="Last Name" name="Lastname" type="text" required="required"
                                            autofocus="true" id="txtLastName" runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="email">
                                            Email</label>
                                        <input class="form-control" placeholder="jane.doe@example.com" name="email" autofocus="true"
                                            id="txtemail" runat="server">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="Mobile">
                                            Mobile</label>
                                        <input class="form-control" placeholder="10 Digit Mobile" name="Mobile" autofocus="true"
                                            runat="server" id="txtmobile1">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="AlterMobile">
                                            Alternate Mobile</label><%--type="tel"--%>
                                        <input id="txtmobile2" class="form-control" placeholder="Alternate 10 Digit Mobile"
                                            name="AlterMobile" autofocus="true" runat="server">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="Faxno">
                                            Fax-Number</label>
                                        <input class="form-control" placeholder="Fax-No" name="Faxno" type="text" autofocus="true"
                                            runat="server" id="txtFax">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="vendorLogoUpload1">
                                            Upload Your Image</label>
                                        <input class="form-control" placeholder="Vendor Image- Logo" name="logourl" type="text"
                                            autofocus="true" runat="server" id="txtlogo">
                                        <asp:FileUpload ID="vendorLogoUpload1" runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="txtAddress1">
                                            Address</label>
                                        <input type="text" class="form-control" placeholder="Address Line 1" name="txtAddress11"
                                            autofocus="true" id="txtAddress1" runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="txtAddress2">
                                            Address</label>
                                        <input type="text" class="form-control" placeholder="Address Line 2" name="txtAddress22"
                                            autofocus="true" id="txtAddress2" runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="txtAddress3">
                                            Address</label>
                                        <input type="text" class="form-control" placeholder="Address Line 3" name="txtAddress33"
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
                                        <asp:Button ID="btnSubmit" class="btn btn-md btn-success" runat="server" Text="Update Profile"
                                            OnClick="btnSubmit_Click" />
                                        <asp:Button ID="btnCancel" Class="btn btn-md btn-danger" runat="server" Text="Reset"
                                            value="Cancel" OnClientClick="resetFeilds();" />
                                    </div>
                                    <asp:HiddenField ID="img" runat="server" Value="" />
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </form>

        </div>

    </div>
</body>
</html>
