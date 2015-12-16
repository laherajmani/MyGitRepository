<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BasketOffer.ascx.cs" Inherits="GroceryStore.Cart.BasketOffer" %>
 <script src="../JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../JScript/bootstrap.min.js" type="text/javascript"></script>
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />     
    <link href="../font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" /> 
<style type="text/css">
    .lblBasketName
    {
      top:0;
      left:0;
      font-family:Verdana;
      font-size:larger;
      font-weight:bold;
    
    } 
        #BasketImg
        {
           margin: 5px;
           padding: 5px;
            height:140px ; 
            width:230px;
           background-color: #cccccc;
        }
        #BasketImg:hover
        {
            border:1px solid;
            /*background-color:bl;*/
        }
</style>
<script type="text/javascript">
    function Animate() {
        $('#dvB1').fadeIn('slow').delay("slow").hide("slow");
    }
    </script>
<div class="row">
         <div id="dvB1" class="alert alert-danger" role="alert" style=" width:60%; display:none; position:fixed; top:60px; z-index:999;">
           <strong>Successfully!</strong> Basket Added
 </div>
        <asp:DataList ID="DataListBasketoffer" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
            <ItemTemplate>
                <ul style="list-style-type: none;">
                    <li>
                        <asp:Label ID="Label3" CssClass="lblBasketName" runat="server" Text='<%#Eval("BasketName") %>' Font-Size="Small"></asp:Label>
                    </li>
                    <li><a href='ShowBasketDetails.aspx?OrganiKong=<%# Eval("BasketID") %>'>
                        <img id="BasketImg" alt="Organikong Basket" src='<%# Eval("Basket_ImgUrl") %>' />
                    </a></li>
                    <li id="listAddtoCart" class="basketlink" runat="server" style="text-align:center; ">
                      <a onclick="Animate()" class="add" id="A1" href="javascript:void", data-val="<%#Eval("BasketId") %>" data-val1="<%#Eval("BasketName") %>" 
                                               data-val2="<%#Eval("Basketamount", "{0:0.00}").ToString() %>" >Add To Basket <i class="fa fa-plus"></i>
                      </a>
                    </li>
                </ul>
            </ItemTemplate>
        </asp:DataList>
</div>

 <%--<div class="col-sm-12">
                  <div class="panel panel-success">
                    <div class="panel-heading">
                    <a class="img-responsive" href='ShowBasketDetails.aspx?OrganiKong=<%# Eval("BasketID") %>'>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("BasketName") %>'></asp:Label>
                        </a>
                    </div>
                    <div class="panel-body" style=" padding:0 0 0 0;">
                        
                            <a class="img-responsive" href='ShowBasketDetails.aspx?OrganiKong=<%# Eval("BasketID") %>'>
                                <img id="BasketImg" alt="" src='<%# Eval("Basket_ImgUrl") %>'/>
                            </a>
                      
                    
                     <div class="basketlink">
                      <a class="add" id="A1" href="javascript:void", data-val="<%#Eval("BasketId") %>" data-val1="<%#Eval("BasketName") %>" 
                                               data-val2="<%#Eval("Basketamount", "{0:0.00}").ToString() %>" >Add To Basket                    
                      </a>
                      </div>
                    
                  </div>
                </div>
               </div>--%>