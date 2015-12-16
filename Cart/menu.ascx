<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="menu.ascx.cs" Inherits="GroceryStore.menu" %>

<script src="../JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="../JScript/bootstrap.min.js" type="text/javascript"></script>
<%--<link href="../css/bootstrap.min.css" rel="stylesheet" />--%>

<script src="../JScript/amazonmenu.js" type="text/javascript"></script>
<link href="../css/amazonmenu.css" rel="stylesheet" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
 <script type="text/javascript">
     $(document).ready(function () {
         //debugger;
         $('div.dropdown').click(function () {
             //alert("hi");
             $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
         }, function () {
             $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
         });
         jQuery(function () {
             amazonmenu.init({
                 menuid: 'mysidebarmenu'
             })
         })
     });
</script>
<%-- <script type="text/javascript">
    jQuery(function () {
        amazonmenu.init({
            animateduration: 100,
            showhidedelay: [100, 100],
            hidemenuonclick: true
        })
    })
</script>--%>
 <style>
    #dropdownMenu1 {
        border-radius: 0;
        background-color: #8fb242;
        box-shadow: 0 4px 5px #ccc;
        padding: 11px 0 12px 20px; 
        color: white;
        height: 10%;
        width:100%;
        font-weight: 600;
        font-size:large;
        text-transform: uppercase;
        /*line-height:20px;*/
    }
</style>

<div class="dropdown" id="drpdwnMenu">
    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" >

    <span style=" float:left">Shop</span>
                <b class="caret" style=" float:right; font-size:100px;"></b>
    </button>
    <div id="MyDropdownMenu" class="dropdown-menu">
        <nav id="mysidebarmenu" class="amazonmenu">
            <asp:Repeater ID="rptCategories" runat="server" OnItemDataBound="Categories_ItemDataBound">
                <HeaderTemplate>
                    <ul style=" z-index:0 !important">
                </HeaderTemplate>
                <ItemTemplate>
                    <li style=" z-index:0 !important">
                        <a href='<%# (string) FormatPageUrl((string)Eval("Pro_Image")) %>?id=<%#Eval("Pro_CatId").ToString() %> '><%# Eval("Pro_CategorytName") %></a>
                        <ul style=" z-index:0 !important">
                            <asp:Literal ID="ltrlSubMenu" runat="server"></asp:Literal>
                        </ul>
                    </li>
                </ItemTemplate>
                <FooterTemplate>
                    </ul>
                </FooterTemplate>
            </asp:Repeater>
            <div class="MenuImage" style="margin-bottom:0px; position:absolute;  box-shadow: 0 6px 12px rgba(0,0,0,.175);">
          <img src="../Images/Organicimages.jpg" alt="" class="img-responsive" width="100% !important" height=""/>
        </div>
        </nav>       
    </div>
</div>
