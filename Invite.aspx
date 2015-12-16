<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invite.aspx.cs" Inherits="GroceryStore.Invite" %>
<%@ Register src="~/Cart/Login.ascx" tagname="Login" tagprefix="uc3" %>
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
        debugger;
        $(document).on('click', '.navbar-collapse.in', function (e) {
            if ($(e.target).is('a') && $(e.target).attr('class') != 'dropdown-toggle') {
                $(this).collapse('hide');
            }
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperConUs" style="">
        <div class="container" style="width: 100%;">
        <div class="row">
            <div class="col-sm-2">
                <div id="1firstdiv">
                    <a id="A1" class="navbar-brand" runat="server" href="~/" style="height: 63px;">
                        <img class="img-responsive" src="img/OrganiKong5.jpg" alt="OrganiKong">
                    </a>
                </div>
            </div>
           

            <div class="col-sm-10 pull-right">
                <div class="collapse navbar-collapse" id="wekirana_Navbar">
                    <ul class="list-inline" style="text-align: right; margin-top: 13px;">
                        <li><a href="Vendor/VendorLogin.aspx" class="fa fa-link" data-toggle="collapse" data-target=".nav-collapse.in">
                            Sell With Us</a></li>
                        <li class="active" id="login2" runat="server" role="presentation"><a class="fa fa-sign-in"
                            data-toggle="modal" role="button" href="#login-modal">Login</a> </li>
                        <li id="signup" runat="server"><a href="Customer/UserRegister.aspx"><i class="fa fa-user">
                        </i>SignUp</a> </li>
                        <li class="dropdown" id="logonHeader" runat="server" visible="false"><a href="#"
                            class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>
                            <label id="lblUserName" runat="server">
                            </label>
                            <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="Customer/MyProfile.aspx"><i class="fa fa-fw fa-user"></i>Profile</a></li>
                                <li><a href="Logout.aspx"><i class="fa fa-fw fa-power-off"></i>Log Out</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
            <hr style="margin-top: 5px; margin-bottom: 2px;" />
            </div>
            </div>

        <div class="row">
                <div class="col-md-12 col-md-offset-0">
                    <div class="panel panel-default">
                        <h3 style=" margin-left:4px;">
                            Tell A Friend</h3>
                     
                        <table id="tbl" style=" margin-left:5px; width:600px;">
                            <tr class="form-group">
                                <td >
                                    <asp:Label ID="lblname" runat="server" Text="Your Name :"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtname" runat="server" placeholder="Your Name" Width="250px"></asp:TextBox>
                                </td>
                                <td >
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ErrorMessage="Please enter Name"
                                        ControlToValidate="txtName" runat="server">
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr class="form-group">
                               <td style=" height:4px;"></td>
                            </tr>
                            <tr class="form-group">
                                <td>
                                    <asp:Label ID="lblEmail" runat="server" Text="Your Email Address :"></asp:Label>
                                </td>
                                <td>
                                   <asp:TextBox ID="txtemail" class="input-group" runat="server" placeholder="Your Email Address" Width="250px"></asp:TextBox>
                                </td>
                                <td>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ErrorMessage="Please Enter Email"
                                        ControlToValidate="txtemail" runat="server">
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr class="form-group">
                               <td style=" height:4px;"></td>
                            </tr>
                            <tr class="form-group">
                                <td>
                                    <asp:Label ID="lblFriendName" runat="server" Text="Your Friend's Name :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtFriendName" runat="server" placeholder="Your Friend's Name" Width="250px"></asp:TextBox>
                                </td>
                                <td>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ErrorMessage="Please Enter your Friend Name"
                                        ControlToValidate="txtFriendName" runat="server">
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr class="form-group">
                               <td style=" height:4px;"></td>
                            </tr>
                            <tr class="form-group">
                                <td>
                                    <asp:Label ID="lblFriendEmail" runat="server" Text="Friend's Email Address:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtFriendEmail" runat="server" placeholder="Friend's Email Address" Width="250px"></asp:TextBox>
                                </td>
                                <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ErrorMessage="Please Enter your Friend Email"
                                        ControlToValidate="txtFriendEmail" runat="server">
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr class="form-group">
                               <td style=" height:4px;"></td>
                            </tr>
                            <tr class="form-group">
                                <td>
                                    <asp:Label ID="lblPersnolMessage" runat="server" Text="Personal Message :"></asp:Label>
                                </td>
                                <td>
                                    <textarea id="txtarea" cols="25" rows="3" name="txtarea" class="form-control" runat="server"></textarea>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" ErrorMessage="Please enter your Message"
                                        ControlToValidate="txtarea" runat="server">
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr class="form-group">
                               <td style=" height:4px;"></td>
                            </tr>
                            <tr class="form-group">
                            <td></td>
                                <td>
                                    <asp:Button ID="btnContinue" runat="server" Text="Continue" class="btn btn-md btn-success"
                                       OnClick="btnContinue_Click"/>
                                    <asp:Button ID="btnCancle" runat="server" Text="Cancel" 
                                        class="btn btn-danger btn-md" CausesValidation="false" 
                                        onclick="btnCancle_Click"/>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </div>
                </div>
            </div>

        <div class="row">
               <uc3:Login ID="LoginModel" runat="server"></uc3:Login> 
            </div>
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
                                <li class="footli"><a target="_blank" class="foota" href="blog.organikong.com">Organikong Blog</a></li>
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
    </form>
</body>
</html>
