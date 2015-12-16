<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="VendorRegistration.aspx.cs" Inherits="GroceryStore.Vendor.VendorRegistration" %>

<html >

<head id="Head1" runat="server">
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, minimal-ui">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-barstyle" content="black-translucent">
    <%--
    <link rel="apple-touch-icon" href="icon-152.png">--%>
    <!-- for Chrome on Android, multi-resolution icon of 196x196 -->
    <meta name="mobile-web-app-capable" content="yes">
    <%--
    <link rel="shortcut icon" sizes="196x196" href="icon-196.png">--%>

    <meta name="keyword" content="OrganiKong,Online organic grocery shopping delhi,home delivery,online organic store,Organic stores,Shopping at home,Departmental store,Bazaar,gluten free products " />
    <meta name="description" content="OrganiKong,Online organic grocery shopping made easy. We provide daily grocery products such as dry fruits, personal care products, snacks, rice, organic dals and pulses with free home delivery option at the best price">
    <meta name="author" content="OrganiKong.com">
    <!--FACEBOOK-->
    <meta property="og:title" content="About OrganicKong">
    <meta property="og:site_name" content="OrganiKong">
    <meta property="og:url" content="http://www.OrganiKong.com">
    <meta property="og:description" content="OrganiKong,Online organic grocery shopping made easy. We provide daily grocery products such as dry fruits, personal care products, snacks, rice, organic dals and pulses with free home delivery option at the best price">
    <meta property="og:image" content="http://www.OrganiKong.com/Images/Wekirana_Customer.jpg">
    <meta property="og:type" content="website">
    <meta property="og:locale" content="en_US">
    <!--TWITTER-->
    <meta property="twitter:card" content="summary">
    <meta property="twitter:title" content="Organic is Health">
    <meta property="twitter:description" content="OrganiKong,Online organic grocery shopping made easy. We provide daily grocery products such as dry fruits, personal care products, snacks, rice, organic dals and pulses with free home delivery option at the best price">
    <meta property="twitter:creator" content="@organikong">
    <meta property="twitter:url" content="http://www.organikong.com">
    <meta property="twitter:image" content="Images/Wekirana_Twitter.jpg">
    <meta property="revisit-after" content="7 days" />
    <link rel="apple-touch-icon" sizes="57x57" href="../Icons/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="../Icons/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="../Icons/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="../Icons/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="../Icons/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="../Icons/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="../Icons/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="../Icons/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="../Icons/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="../Icons/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="../Icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="../Icons/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="../Icons/favicon-16x16.png">
    <link rel="manifest" href="../Icons/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="../Icons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <title>OrganiKong ,NCR's own online organic grocery shopping store</title>
    <meta name="google-site-verification" content="l165N2hIntV_IUrGDmKdwNxlWwVKh42BF0uffOdGnRw" />
    <meta name="msvalidate.01" content="39DDBAAB22834C4CB9558562721F8A43" />/

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
     <script src="../JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="../JScript/bootstrap.min.js" type="text/javascript"></script>
    <link href="../font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="../jQValidation.js" type="text/javascript"></script>
  
    <script type="text/javascript">
    $(document).ready(function () {
        //debugger;
        $('#VForm').validate({
            rules: {
                vendorname: {

                    required: true
                },
                password: {

                    required: true
                },
                Firstname: { required: true},
                Lastname: { required: true },
                Mobile: {

                    required: true,
                    digits: true,
                    minlength:10,
                    maxlength: 10
                },

                email: {
                    required: true,
                    email: true
                },
                  
                  city: {
                   required: true
               }, 

               State: {
                   required: true
               },

               BusType: {
                   required: true
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
    //debugger;
        $(document).ready(function () {
            $(":reset").css("background-color", "red");
            $('#cancel').on('click', function () {
                $("#VForm").validate().resetForm();
                $("#VForm").removeClass("has-error");
            });
        }); 
    </script>

    <script type="text/javascript">
         function VerifyVendorEmailID(obj) {
             //debugger;
             var email = document.getElementById('txtVEmail');
             var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
             if (!filter.test(email.value)) {
                 mymsg.style.color = "red";
                 mymsg.innerHTML = "Email Not Valid";
                 $("#txtVEmail")[0].value = "";
                 //email.focus();
                 return false;
             }
             mymsg.innerHTML = "";
             //debugger;
             $.ajax({
                 type: "POST",
                 url: "VendorRegistration.aspx/VerifyVendorEmailID",
                 contentType: "application/json; charset=utf-8",
                 data: '{emailid: "' + $("#txtVEmail")[0].value + '" }',
                 dataType: "json",
                 success: whenSuccess,
                 failure: function (response) {
                     alert(response.d);
                 }
             });
         }
         function whenSuccess(status) {
             //debugger;
             if (status.d == 0) {
                 mymsg.style.color = "green";
                 mymsg.innerHTML = "Email Available";
             }
             else {
                 mymsg.style.color = "red";
                 mymsg.innerHTML = "Email Already Registered";
                 $("#txtVEmail")[0].value = "";
                 //$("#txtemail").focus();
             }
         }
    </script>

  <%--  <script type="text/javascript">
        function myFunction2() {
            mymsg.innerHTML = "";
        }
    </script>--%>

    <script type="text/javascript">
        //debugger;
        function myfunction1() {
            var r = confirm("Account Created successfully. Account Activation link send on registered e-mail.");
            if (r == true) {
                location.href = "VendorLogin.aspx";
            }
            else {
                location.href = "VendorLogin.aspx";
            }
        }
    </script>
    <script type="text/javascript">
        function Check() {
                $('#btnSubmit').show();
                $('#cancel').show();
                $('#btnProceed').hide();

         
         
        
        }
    
    </script>
    
</head>

<body>
<div id="Vwrapper">

    <nav class="navbar navbar-default navbar-fixed-top" style="background-color:White;">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <a id="A1" class="navbar-brand" runat="server" href="../Default.aspx" style="padding: 0;">
                           <img class="img-responsive" src="../img/OrganiKong.jpg" width="120px" height="60px"
                            alt="OrganiKong">
                        </a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <%--<li><a href="#about">About</a></li>--%>
                    <li><a href="../ContactUs.aspx">Contact Us</a></li>                  
                </ul>   
                
                 <ul class="nav navbar-nav navbar-right">
                 <li><a href="VendorLogin.aspx" runat="server"><i class="fa fa-unlock fa-1x"></i>Login</a></li>
                 </ul>            
            </div>
            <!--/.nav-collapse -->
        </div>
    </nav>

    <div id="pagewrap" style="margin-top: 5%;">
        <div class="container">
            <div class="row">
                <div id="Breadcrumbs" style="">
                    <ol class="breadcrumb">
                       <%-- <li><a href="Vendor.aspx" class="fa fa-home">Wekirana Vendor Home</a></li>--%>
                        <li class="active"><i class="fa fa-file">Vendor Registration</i></li>
                    </ol>
                </div>
            </div>
            <div class="row">           
                <div class="clear">
                </div>
                <div id="VregstrD" class="col-md-4 col-md-offset-0">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading" style="height: 100px; padding: 0 0 0 0">
                            <img src="../Icons/vreg.jpg" width="100%" height="99px" alt="Vendor Registration" />
                        </div>
                        <div class="panel-body">
                            <form runat="server" id="VForm">                        
                                <div class="form-group">
                                    <input class="form-control" placeholder="jane.doe@example.com" name="email" type="text" autocomplete="false"
                                     onchange="VerifyVendorEmailID(this);" autofocus="true" id="txtVEmail" runat="server"><span id="mymsg" style=" margin-left:100px;"></span>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" type="password">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="First Name" name="Firstname" type="text"
                                        autofocus="true">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Last Name" name="Lastname" type="text" autofocus="true">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Mobile" name="Mobile" type="tel" autofocus="true">
                                </div>
                                <div class="form-group">
                                    <select name="State" class="form-control">
                                        <option value="" selected="selected">Select State</option>
                                        <option value="Delhi/Ncr">Delhi/Ncr</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="City" name="city" type="text" autofocus="true">
                                </div>
                                <div class="form-group">
                                    <select name="BusType" class="form-control">
                                        <option value="" selected="selected">Business Type</option>
                                        <option value="Grosery">Grocery</option>
                                        <option value="Dairy">Food</option>
                                        <option value="Personal Care">Personal Care</option>
                                         <option value="Health & Beauty">Health & Beauty</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <p></p>
                                
                                </div>
                                <asp:Button ID="btnSubmit" runat="server" class="btn btn-md btn-success" Text="Create"
                                    OnClick="btnSubmit_Click" style=" display:none;" />
                                <input id="cancel" type="reset" class="btn btn-danger btn-md" value="Reset" style=" display:none;">
                                <input type="button" id="btnProceed" class="btn btn-info" data-toggle="modal" data-target="#myModal" value="View Terms"/> 
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-2 col-md-offset-0">
                </div>
                <div id="Imgbanner" class="col-md-6 col-md-offset-0">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3>
                                Step To Sell Product With OrganiKong
                            </h3>
                            <hr style=" margin-bottom:1%; margin-top:1%;"/>
                            <h4>
                                Join Our Vendor's Community
                            </h4>
                        </div>
                        <div class="panel-body">
                            <%--<img class="img-responsive" src="../Images/WeKirana_vendor_steps.jpg" width="100%" alt="wekirana Vendor Registration"/>--%>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="alert alert-danger" role="alert">
                    Sell Within Four Easy Step</div>
                <hr />
            </div>
        </div>
    </div>
        
    </div>

 <div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog" style=" max-height:600px; overflow:scroll;">

   
    <div class="modal-content">
      <div class="modal-header">
      
        <h4 class="modal-title">Vendor Term's</h4>
      </div>
      <div class="modal-body">
      <div>
<div>
<div class="page-header"><h1>
Memorandum of Understanding</h1></div>
<p class="text-left" style="line-height:2;">
This memorandum of understanding (MoU) is made and entered into by<strong> OrganiKong (A unit of Collaborative Business Consulting Pvt. Ltd.) and _______________</strong>as a seller on the portal OrganiKong.com.<br />
<em class="text-info">
<strong>Note:</strong> “OrganiKong.com and OrganiKong” in this document refers to both the product/platform (app) and the venture. Each party refers to each individual signing the MoU.</em></p>
</div>
<div>
<h3>
Article 1- <small> UNDERSTANDING AND OBJECTIVES:</small></h3>
<p class=" text-left" style="line-height:2;">
OrganiKong and Seller have a mutual desire to serve the customer by delivering the groceries and products that the seller deals with (Organic grocery items, Organic household products).<br />
OrganiKong will execute and manage the online sales portal and would charge a nominal sales commission to the seller mentioned in Article 3 below. <br />
The Seller has to agree and oblige with the conditions set henceforth in Article 2 below.<br /> 
The continuous improvement effort by seller and OrganiKong will help the seller and the portal to compete with multi branded stores at a nominal charge and give a growth to the business of seller. <br />
The parties entering this MOU anticipate a continuing effort to enhance and scale the productivity of the online sales portal (OrganiKong). </p>
</div>
<div>
<h3>
Article 2 –<small> OBLIGATIONS OF THE SELLER</small></h3>

<ol class="list-group">
<li class="list-group-item">
	1-Seller will be charged a commission on every order that OrganiKong is able to secure through its online presence. </li>
<li class="list-group-item">
	2-In addition to the commission mentioned above a 2% fee/charge per order would be charged to the seller for the orders that are paid by the customer using online instruments of payment (Credit Card, Debit Card, NEFT, direct bank transfers) to OrganiKong for items purchased.</li>
<li class="list-group-item">3-Seller agrees to provide the utmost quality good to the customer and as per description shared with OrganiKong.</li>	
<li class="list-group-item">4-Seller shall ensure that the customer is satisfied with the products delivered and would accept and returns at the time of delivery.</li> 
<li class="list-group-item">5-Any disputed raised by the customer within 48 hrs of delivery would have to be resolved by the vendor to maintain a cordial relationship with the customer and to maintain the sellers rating on the portal OrganiKong.</li>
<li class="list-group-item">6-The seller shall notify the customer and OrganiKong if they are unable to deliver an article mentioned as available but could not be delivered as a part of the order.</li>
<li class="list-group-item">7-The seller shall deliver the products/order within 24 Hours from the time the order is placed by the customer (OrganiKong will ensure that the order is placed from the portal to the seller immediately). Failing to deliver the order in 24 Hours will levy a charge of 50 Rs per order.</li>
<li class="list-group-item">8-Delivery Cost per order if any incurred will be borne by the seller.</li> 
<li class="list-group-item">9-Seller Rating: if customer feedback on the orders delivered is negative for more than 20 orders in a month, OrganiKong shall downgrade the seller preference on the portal.</li>
<li class="list-group-item">10-Dispute raised by the customer will be thoroughly looked in by OrganiKong and decision on the same shall be communicated to the Seller.</li>
<li class="list-group-item">11-All the orders placed with the Seller will be email/SMS verified, in case the customer doesn’t accept delivery of the supplies, and seller can report the same and the customer would immediately be blacklisted from the portal. </li>	
<li class="list-group-item">12-Any revision to the terms will be communicated to the Seller 30 days in advance .</li> 
<li class="list-group-item">13-Settlement of the payment to the Seller (if any from online transaction on OrganiKong) shall be done within 5 working days.</li>

</ol>
</div>
<div>
<h3>
Article 3 –<small> Fees and Commission</small></h3>
<p style="line-height:2;" class=" text-left">
A standard fee of 5% will apply on all orders. The introductory rates will be applicable to the sellers for a lock in period of 1 Year from the date of signing the MoU. 
<br />
Commissions against the COD orders will be invoiced on the 1st working day of the subsequent month and shall be settled by the seller by the 7th day of the month via DD/cheque or NEFT transfers.<br />
<strong>
* Commission rates mentioned will remain same for orders that are paid by the customer in Cash on Delivery.<br /> 
  A 2% fee will be charged OVER AND ABOVE the mentioned Commission for the order that are paid Online through Credit Card, Debit Card, NEFT, Bank Transfers through OrganiKong Portal.<br />
 NEFT Charges levied by the bank shall be borne by the seller.</strong></p>
 </div>
 <div>
 <h3>
Article 4 –<small> DURATION AND TERMINATION OF MOU</small></h3>


<p  style="line-height:2;" class=" text-left">
The MoU shall remain in effect from the date of signing till any of the below are met.<br />
1. Seller notifies OrganiKong for any reason that they would not like to continue selling their listed items on the OrganiKong Portal .

</p>
</div>

<div>
<h3>
Article 5 –<small> ADVERTISMENT</small></h3>
<p  style="line-height:2;" class=" text-left">
The Seller shall be given a special recognition on the portal for Advertisement space on the portal under their preferred Service Area.<br />
 The Seller can list special in a month by notifying the OrganiKong Team and by getting in touch with OrganiKong at advertise@OrganiKong.com.<br />
 The rates shall be over and above the commission and charges mentioned above.<br />
 <b>
The Seller can advertise for Free for the first 3 months.
</b></p>
<table class="table">
<tr>
<th>Advertisement</th>
<th>Plan</th>
<th>Duration</th>
<th>Cost</th>
</tr>
<tr>
<td>Option </td>
<td>1</td>
<td>7 Day</td>
<td>Rs. 1250</td>
</tr>
<tr>
<td>Option </td>
<td>2</td>
<td>15 Day</td>
<td>Rs.2250</td>
</tr>
<tr>
<td>Option </td>
<td>3</td>
<td>30 Day</td>
<td>Rs. 4250</td>
</tr>
</table>
</div>
<div>
<p style="line-height:2;" class=" text-left">
** Cost Mentioned above is inclusive of service tax. Advance payment will be provided by the seller for the ad space and duration procured.
 As a preferred seller your advertisement shall be displayed on the landing page of the portal (“OrganiKong.Com”).</p>
 </div>
 <div>
 <h3>
Article 6 –<small> GENERAL</small></h3>
<p style="line-height:2;" class=" text-left">
This MOU constitutes the entire and only MOU between the parties, and all prior negotiations, representations, agreements, and understandings are hereby superseded. No agreements altering or supplementing the terms hereof may be made except by means of a written document signed by the duly authorized representatives of the parties.
This MOU shall be governed by, construed by, and enforced in accordance with the internal laws of Indian Constitution.
This MoU and Task Orders have been read, verified and agreed upon by the undersigned before going into the OrganiKong venture.</p>
</div>
<div>

<table class="table-bordered">
<tr>
<td>For OrganiKong
<br />


Varun Ajmani<br />

B3 Community Center, Second Floor, Bharat Nagar, Ashok Vihar Phase 4, <br />
New Delhi – 110052<br />
Ph: 01147505673<br />

<a>Info@organikong.com</a></td>
<td>Seller:</td>
</tr>
</table>

</div>
</div>
      </div>
      <div class="modal-footer">
       
         <a onclick="Check();" id="btnagree" data-dismiss="modal" style=" float:left; color:Green; cursor:pointer;">I Agree?</a>
         <input type="button" value="close" class="close"  data-dismiss="modal"  />
        
      </div>
    </div>

  </div>
</div>
</body>
</html>
<%--<div id="SignInD" class="col-md-4 col-md-offset-1">
                    <div class="login-panel panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                Please Sign In</h3>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <input class="form-control" placeholder="E-mail" name="email" type="email" autofocus="true">
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Password" name="password" type="password"
                                    value="">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                </label>
                            </div>
                            <div class="form-group">
                                <input type="button" id="btnlogin" runat="server" class="btn btn-lg btn-success"
                                    name="Login" />
                                <asp:Button ID="btnlogin" runat="server" Text="Login" class="btn btn-lg btn-success btn-block" />
                                <!-- Change this to a button or input when using this as a form -->
                                <a href="index.html" class="btn btn-lg btn-success btn-block">Login</a>
                            </div>
                        </div>
                    </div>
                </div>--%>
<%--<div class="row">
                <div id="Imgbanner" class="col-lg-6 col-md-offset-0">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h1>
                                Sell With Us
                            </h1>
                            <hr />
                            <h3>
                                Join Our Vendor's Community
                            </h3>
                        </div>
                        <div class="panel-body">
                            <fieldset>
                                <img src="../Icons/Extr.png" width="100%" alt="Vendor Registration" />
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>--%>
