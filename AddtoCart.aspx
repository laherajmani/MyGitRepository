<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddtoCart.aspx.cs" Inherits="GroceryStore.AddtoCart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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

  <%--  <script src="Scripts/jquery-1.9.1.js" type="text/javascript"></script>--%>
    <script src="JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <%--<asp:ListView runat="server" ID="listViewCategory" GroupItemCount="5">
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
                        <div class="productItem">
                            <div>
                                <asp:HiddenField ID="HFID" runat="server" Value='<%# Bind("ProductId")%>' />
                            </div>
                            <div class="row img-responsive">
                                <img src='<%# (string) FormatImageUrl( (string) Eval("txtImage1_Url")) %>' height="120 !important"
                                    width="140 !important" alt="Product" id="imgproduct" />
                            </div>
                            <div class="row">
                                <b>
                                    <%# Eval("ProductName") %></b></div>
                            <div class="row">
                                Price: Rs.<%# Eval("Price_MRP", "{0:0.00}")%>
                                <div class="row">
                                    <a class="add" id="A1" href="javascript:void", data-val="<%#Eval("ProductId") %>" data-val1="<%#Eval("ProductName") %>" 
                data-val2="<%#Eval("Price_MRP", "{0:0.00}").ToString() %>" >
                                    Add To Cart</a>
                                    
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <div class="emptyTemplete">
                            Sorry - No products here
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
                        No Product Found in selected Pincode area.
                    </EmptyDataTemplate>
                </asp:ListView>--%>
    </div>
    </form>
</body>
</html>
