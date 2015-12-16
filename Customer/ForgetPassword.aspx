<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="GroceryStore.Customer.ForgetPassword" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Recover Your Password</title>
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
</head>
<body>
    <form id="form1" runat="server">
   <div id="forget-w">

    <div id="forget-pw">
        <div class="container-fluid">

        <div class="row-fluid">
                <div class="col-sm-2">
                    <div class="row-fluid">
                        <div class="col-sm-12">
                            <div id="firstdiv">
                                <a id="A1" class="navbar-brand" runat="server" href="../Default.aspx" style="padding: 0;">OrganiKong
                                   <img class="img-responsive" src="../img/OrganiKong.jpg" width="120px" height="60px"
                                            alt="OrganiKong">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-10">
                <div style="float: right;">
                       <ul class="list-inline">
                            <li role="presentation"><a class="fa fa-envelope" href="../ContactUs.aspx">Contact Us</a></li>
                            <li role="presentation"><a class="fa fa-link" href="../Vendor/VendorLogin.aspx">Sell With
                                Us</a></li>
                            <li id="login2" runat="server" role="presentation"><a class="fa fa-user" data-toggle="modal"
                                role="button" href="../CustomerLogin.aspx">Login</a> </li>
                            <li id ="loggedinLI" runat ="server" class="dropdown" visible="false"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>
                                <label id="lblUserName1" runat="server">
                                </label>
                                <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="../Customer/MyProfile.aspx"><i class="fa fa-fw fa-user"></i>Profile</a>
                                    </li>
                                    <li><a href="../Logout.aspx"><i class="fa fa-fw fa-power-off"></i>Log Out</a> </li>
                                </ul>
                            </li>
                             <li role="presentation" id="lisignup" runat="server"><a class="fa fa-user" href="../Customer/UserRegister.aspx">SignUp</a></li>
                            <li role="presentation"><a class="fa fa-shopping-cart" href="#">Cart</a></li>
                        </ul>
                  </div>     
                 </div>
              
            </div>

        <div class="row-fluid">
            <div class="col-sm-12 offset-1">
            
            <div class="row-fluid">
            <div class="col-sm-6 offset-1">
            
            <div id="password-panel" style=" margin-top:10%; margin-bottom:10%;">
            
                <div class="panel panel-primary">
                <div class="panel-heading">Enter Email to Recover your Password.</div>
                    <div class="panel-body">
                        
                        <div class="form-group">
                            <asp:TextBox ID="txtemail" placeholder="OrganiKong@OrganiKong.com" runat="server" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ErrorMessage="Please enter your Email"
                                        ControlToValidate="txtemail" runat="server">
                                    </asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ForeColor="Red"
                                     Display="Dynamic" ErrorMessage="Please enter valid email" 
                                     ValidationExpression="^\s*(([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5}){1,25})+([;.](([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5}){1,25})+)*\s*$">
                                    </asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="btnSubmit" runat="server" class="btn btn-sm btn-success" Text="Submit"
                                OnClick="btnSubmit_Click" />
                        </div>
                    </div>
                </div>
            </div>

            </div>
            </div>
            </div>
            </div>     
        </div>
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
    </form>
</body>
</html>
