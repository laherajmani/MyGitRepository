<%@ Page Title="" Language="C#" MasterPageFile="~/BasketMaster.Master" AutoEventWireup="true" CodeBehind="ShowBasketDetails.aspx.cs" Inherits="GroceryStore.ShowBasketDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="JScript/jquery-1.9.1.min.js" type="text/javascript"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<style>
#basketOffer-wrapper
{
    margin-top:20px;
}
</style>

<script type="text/javascript">
    $(document).ready(function () {
        //debugger;
        $.ajax({
            type: "POST",
            url: "AddBasketOrder.aspx/loadProducts",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: OnSuccess,
            failure: function (response) {
                alert(response.d);
            }
        });
        function OnSuccess(response) {
            var ShoppingBody = "<table id='CartTable' class='table table-bordered'><thead><tr><th>Product Name</th> <th> Quantity </th> <th>Unit Price</th><th>Remove</th><th>Remove Quantity</th></tr></thead>";
            $.each(response.d._BasketOrderItem, function (index, data) {
                ShoppingBody += "<tr> <td> " + data.BasketName + "</td> <td>" + data.Quantity + " </td> <td>" + data.UnitPrice + " </td> <td> <a id=" + data.BasketId + " class='del' href='javascript:void' data-val=" + data.BasketId + ">X</a> </td><td><a id=" + data.BasketId + " class='delQuantity' href='javascript:void' data-val4=" + data.BasketId + ">-</a></td></tr>";
            })
            ShoppingBody += "</table>";
            $("#Items").html("");
            $("#Items").html(ShoppingBody);
            $("#totalPrice").html("");
            $("#GrandTotal").html("");
            $("#totalPrice").html(response.d.AllTotal);
            $("#GrandTotal").html(response.d.AllTotalWithVat);
            $('#ItemsNo').text(counter);
            var x = document.getElementById("CartTable").rows.length;
            document.getElementById("ItemsNo").innerHTML = x - 1;
        }
    });
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="basketOffer-wrapper">
 <div class="container">
        <div class="row">
            <div class="col-sm-12 col-sm-offset-0">
                <div class="panel panel-primary">
                    <div class="panel-heading" style="padding: 5px 10px;">
                        Basket Details
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-12">
                                <%----%>
                                <asp:ListView ID="ListView1" runat="server" ItemPlaceholderID="addressPlaceHolder">
                                    <LayoutTemplate>
                                        <div style="padding-left: 30px;">
                                            <table class="table">
                                            <tr><th>Product Name</th><th>Selling Price</th><th>Variants</th></tr>
                                                <asp:PlaceHolder runat="server" ID="addressPlaceHolder" />
                                            </table>
                                        </div>
                                        <hr />
                                    </LayoutTemplate>
                                    <ItemTemplate>
                                    <div class="row">
                                    
                                    
                                    </div>

                                    <asp:HiddenField ID="HFPID" runat="server" Value='<%# Eval("ProductId")%>' />
                                    
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label4" Text='<%# Eval("ProductName")%>' runat="server" />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label3" Text='<%# Eval("Selling_Price", "{0:0.00}")%>' runat="server" />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label5" Text='<%# Eval("txtVariant_Name") %>' runat="server" />
                                                <asp:Label ID="Label2" Text='<%# Eval("txtVariant_Value") %>' runat="server" />
                                                <asp:Label ID="Label6" Text='<%# Eval("txtVariant_Unit") %>' runat="server" />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:ListView>
                                <asp:ListView runat="server" ID="ListViewBasketDetails">
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
                                    <ItemSeparatorTemplate>
                                        <div class="itemSeparator">
                                        </div>
                                    </ItemSeparatorTemplate>
                                    <GroupSeparatorTemplate>
                                        <div class="groupSeparator">
                                        </div>
                                    </GroupSeparatorTemplate>
                                    <ItemTemplate>
                                        <div class="productItem">
                                            <div>
                                                <asp:HiddenField ID="HFBID" runat="server" Value='<%# Eval("BasketId")%>' />
                                                <%--<asp:HiddenField ID="HFPID" runat="server" Value='<%# Eval("ProductId")%>' />--%>
                                            </div>
                                            <div class="container">
                                                <div class="row">
                                                        <%--<hr style="width: 40% !important; margin-top: 5px; margin-bottom: 5px; color: Green;
                                                        line-height: 1px;" />--%>
                                                    <div class="col-md-3">
                                                        <span class="label label-md label-info">Basket Name:<%# Eval("BasketName")%></span>
                                                        <br />
                                                    </div>
                                                    <div class="col-sm-3">
                                                        <img class="img-responsive" src='<%# "../" + Eval("Basket_ImgUrl") %>' height="80 !important"
                                                            width="120 !important" alt="Product" id="imgproduct" />
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="row">
                                                            <div class="col-sm-6">
                                                                Basket Discount(%):
                                                                <%# Eval("Basketdiscount","")%>
                                                                <hr style="width: 100% !important; margin-top: 5px; margin-bottom: 5px" />
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-sm-6">
                                                                Basket Amount(Rs.):
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Basketamount", "{0:0.00}")%>'></asp:Label>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                        <div class="col-sm-6">
                                                          <a class="add" id="A1" href="javascript:void", data-val="<%#Eval("BasketId") %>" data-val1="<%#Eval("BasketName") %>" 
                                                                data-val2="<%#Eval("Basketamount", "{0:0.00}").ToString() %>" >Add To Basket
                                                         </a>
                                                         </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                    <EmptyDataTemplate>
                                        No Product Found.
                                    </EmptyDataTemplate>
                                </asp:ListView>
                            </div>
                        </div>
                        <div class="row">
                           <%-- <div class="col-sm-8">
                                <hr />
                                <h4>
                                    To Purchase Basket
                                    <asp:Button ID="btnPay" class="btn btn-sm btn-danger" runat="server" Text="Click Here" /></h4>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   </div>
</asp:Content>
<%--<div ng-app="myApp" ng-controller="myCntrl">
        <table>
            <tr>
                <td>
                    Basket Name :
                </td>
                <td>
                    <input type="text" id="txtStudentName" ng-model="studetnName" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="button" value="Save" ng-click="Save()" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table>
            <thead>
                <tr>
                    <th>
                        StudentID
                    </th>
                    <th>
                        StudentName
                    </th>
                    <th>
                    </th>
                </tr>
            </thead>
            <tr ng-repeat="student in StudentList | orderBy : studentorder ">
                <td ng-bind="student.StudentID">
                </td>
                <td ng-bind="student.StudentName">
                </td>
                <td>
                    <a href="#" ng-click="Delete(student.StudentID)">Delete</a>
                </td>
            </tr>
        </table>
    </div>--%>
<%--<script type="text/javascript">
        var app = angular.module("myApp", []);
        app.controller("myCntrl", function ($scope, $http) {
            $scope.studentorder = "StudetnID";
            $scope.studetnName = "";
//            $scope.Save = function () {
//                var httpreq = {
//                    method: 'POST',
//                    url: 'Default.aspx/Save',
//                    headers: {
//                        'Content-Type': 'application/json; charset=utf-8',
//                        'dataType': 'json'
//                    },
//                    data: { StudentName: $scope.studetnName }
//                }
//                $http(httpreq).success(function (response) {
//                    $scope.fillList();
//                    alert("Saved successfully.");
//                })
//            };
//            $scope.Delete = function (SID) {
//                if (confirm("Are you sure want to delete?")) {
//                    var httpreq = {
//                        method: 'POST',
//                        url: 'Default.aspx/Delete',
//                        headers: {
//                            'Content-Type': 'application/json; charset=utf-8',
//                            'dataType': 'json'
//                        },
//                        data: { StudentID: SID }
//                    }
//                    $http(httpreq).success(function (response) {
//                        $scope.fillList();
//                        alert("Deleted successfully.");
//                    })
//                }
//            };
            $scope.fillList = function () {
                $scope.studetnName = "";
                var httpreq = {
                    method: 'POST',
                    url: 'ShowBasketDetails.aspx/GetList',
                    headers: {
                        'Content-Type': 'application/json; charset=utf-8',
                        'dataType': 'json'
                    },
                    data: {}
                }
                $http(httpreq).success(function (response) {
                    $scope.StudentList = response.d;
                })
            };
            $scope.fillList();
        });
    </script>--%>