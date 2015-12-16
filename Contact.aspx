<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="GroceryStore.Contact" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Organikong</title>
    <script src="JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
   <%-- <script src="Organic_Js/mysite.js" type="text/javascript"></script>--%>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="JScript/bootstrap.min.js" type="text/javascript"></script>
    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="jQValidation.js" type="text/javascript"></script>
        <script type="text/javascript">
    $(document).ready(function () {
        //debugger;
        $('#Form1').validate({
            rules: {
               custname: { required: true },
                email: { required: true, email: true },
                PhoneNO: {
                    required: true,
                    digits: true,
                    minlength: 10,
                    maxlength: 10
                },
                txtarea: {
                required: true,
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
                } else {
                    error.insertAfter(element);
                }
            }
        });

    });
     </script>
        <script type="text/javascript">

            $(document).ready(function () {
                //$("#btnContinue").css("background-color", "red");
                $('#btnCancle').on('click', function () {
                    $("#VForm").validate().resetForm();
                    $("#VForm").removeClass("has-error");
                });
            }); 
    </script>
</head>
<body>
<div id="ContactWrap" style=" margin-top:1%">
<div class="container">
    <form id="form1" runat="server">
    <div id="wrapperConUs">

        <div class="row">
            <div class="col-sm-2">
                <div id="1firstdiv">
                    <a id="A1" class="navbar-brand" runat="server" href="~/" style="height: 63px;">
                        <img class="img-responsive" src="img/OrganiKong5.jpg" alt="OrganiKong">
                    </a>
                </div>
            </div>
           

            <div class="col-sm-10 pull-right">
                <ul class="list-inline" style=" text-align:right; margin-top:13px;">
                <li><a href="Vendor/VendorLogin.aspx" class="fa fa-link" data-toggle="collapse" data-target=".nav-collapse.in">
                                Sell With Us</a></li>
                <li><a href="CustomerLogin.aspx"><i class="fa fa-link"></i>Login</a> </li>
                <li><a href="Customer/UserRegister.aspx"><i class="fa fa-user"></i>SignUp</a> </li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
            <hr style="margin-top: 5px; margin-bottom: 2px;" />
            </div>
            </div>
        <div class="row">
            <div class="col-lg-12 col-md-offset-0">
                <div class="panel panel-default">
                    <h3 style="margin-left: 4px;">
                        Contact Us</h3>
                    <div class="panel-body">
                        <table id="tbl" class="table">
                            <tr class="form-group">
                                <td>
                                    <asp:Label ID="lblName" runat="server" Text="Name :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtName" class="form-control" name="YourName" runat="server" placeholder="Your Name.."></asp:TextBox>
                                </td>
                                <td style="margin-left: 200px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ErrorMessage="Please enter your name"
                                        ControlToValidate="txtName" runat="server">
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <%--<tr class="form-group">
                               <td style=" height:4px;"></td>
                            </tr>--%>
                            <tr class="form-group">
                                <td>
                                    <asp:Label ID="lblEmail" runat="server" Text="E-Mail :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtEmail" class="form-control" runat="server" name="Email" placeholder="Your Email.."></asp:TextBox>
                                </td>
                                <td style="margin-left: 200px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtEmail"
                                        Display="Dynamic" runat="server" ErrorMessage="Please enter email" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                                        ForeColor="Red" Display="Dynamic" ErrorMessage="Please enter valid email address. Eg. Something@domain.com"
                                        ValidationExpression="^\s*(([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5}){1,25})+([;.](([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5}){1,25})+)*\s*$">
                                    </asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <%--<tr class="form-group">
                               <td style=" height:4px;"></td>
                            </tr>--%>
                            <tr class="form-group">
                                <td>
                                    <asp:Label ID="lblPhone" runat="server" Text="Mobile :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPhone" class="form-control" runat="server" name="PhoneNO" placeholder="Your Phone No.."
                                        MaxLength="10"></asp:TextBox>
                                </td>
                                <td style="margin-left: 200px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ErrorMessage="Please enter Mobile"
                                        ControlToValidate="txtPhone" runat="server">
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <%-- <tr class="form-group">
                               <td style=" height:4px;"></td>
                            </tr>--%>
                            <tr class="form-group">
                                <td style="">
                                    <asp:Label ID="lblFeedback" runat="server" Text="Your Feedback :"></asp:Label>
                                </td>
                                <td>
                                    <textarea id="area" cols="20" rows="2" name="txtarea" class="form-control" runat="server"></textarea>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ErrorMessage="Please enter your Feedback"
                                        ControlToValidate="area" runat="server">
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <%-- <tr class="form-group">
                               <td style=" height:4px;"></td>
                            </tr>--%>
                            <tr class="form-group">
                                <td colspan="3">
                                    <div style="text-align: center;">
                                        <asp:Button ID="btnContinue" runat="server" class="btn btn-md btn-success" 
                                            Text="Submit" onclick="btnContinue_Click1"
                                             />
                                        <asp:Button ID="btnCancle" runat="server" class="btn btn-danger btn-md" Text="Cancel"
                                            CausesValidation="False"  onClick="document.location.reload(true)"/>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <div id="Description">
                                        <h4>
                                            Phone:
                                        </h4>
                                        <p style="text-align: justify;">
                                            011-45646544</p>
                                        <h4 style="margin-left: 1px;">
                                            Email:
                                        </h4>
                                        <p style="text-align: justify;">
                                            Info@cbcinfotech.com</p>
                                        <h4 style="margin-left: 1px;">
                                            Address:</h4>
                                        <p style="text-align: justify;">
                                            CBC Infotech Pvt. Ltd. B-3,Community Center,Bharat Nagar, Ashok Vihar Phase-IV,
                                            New Delhi-110052
                                        </p>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
    </div>

    <footer id="footer">
            <div class="container">          
                    <div class="row footer" style=" margin-left:5%; margin-right:0px;">
                        <div class="first col-md-3">
                            <h4 class="footh4">
                                About OrganiKong</h4>
                            <ul class="footul">
                                <li class="footli"><a class="foota" href="About-Us">What is OrganiKong ?</a></li>
                                <li class="footli"><a class="foota" href="Where-We-Deliver">Where We Deliver ?</a></li>
                                <li class="footli"><a class="foota" href="Contact-Us">Contact Us</a></li>
                                <li class="footli"><a class="foota" href="Invite-A-Friend">Refer A Friend</a></li>
                            </ul>
                        </div>
                        <div class="latest col-md-3">
                            <h4 class="footh4">
                                Organic</h4>
                            <ul class="footul">
                                <li class="footli"><a class="foota" href="OrganicFarming.htm">Organic Farming</a></li>
                                <li class="footli"><a class="foota" href="Eat Organic.htm">Eat Organic</a></li>
                                <li class="footli"><a class="foota" href="LegalDisclaimer.htm">Legal Disclaimer</a></li>
                                <li class="footli">
                                <a href="http://blog.organikong.com" onclick="window.open(this.href); return false;" onkeypress="window.open(this.href); return false;">Organikong Blog</a>
                                </li>
                            </ul>
                        </div>
                        <div class="links col-md-3">
                            <h4 class="footh4">
                                Information</h4>
                            <ul class="footul">
                                <li class="footli"><a class="foota" href="FAQ.htm">FAQ's</a></li>
                                <li class="footli"><a class="foota" href="TermsCondition.htm">Term & Conditions</a></li>
                                <li class="footli"><a class="foota" href="Policy.htm">Return/Refund Policy</a></li>
                                <li class="footli"><a class="foota" href="OurPartners.aspx">Our Partners</a></li>
                            </ul>
                        </div>
                        <div class="social col-md-3">
                            <h4 class="footh4">
                                Connect with Us</h4>
                            <div>
                                <a href="https://twitter.com/OrganiKong" target="_blank">
                                    <img title="Twitter" alt="Twitter" src="../img/twitter.png" width="35" height="35" />
                                </a><a href="https://www.facebook.com/Organikong?fref=ts" target="_blank">
                                    <img title="Facebook" alt="Facebook" src="../img/facebook.png" width="35" height="35" />
                                </a><a href="https://oragnikong@gmail.com " target="_blank">
                                    <img src="../img/g.png" title="google+" alt="Google plus" width="35" height="35" />
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="row copywrite">
                        Copyright <a href="http://www.OrganiKong.com">OrganiKong Company</a>,Collaborative
                        Business Consulting 2015
                    </div>             
            </div>
        </footer>
        </div>
</body>
</html>
