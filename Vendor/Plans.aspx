<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/VendorMaster.Master" AutoEventWireup="true" CodeBehind="Plans.aspx.cs" Inherits="GroceryStore.Vendor.Plans" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<%--<script type="text/javascript">
    function CheckBoxCheck(rb) {
        //debugger;
        var gv = document.getElementById("<%=GVPlans.ClientID%>");
        var chk = gv.getElementsByTagName("input");
        var row = rb.parentNode.parentNode;
        for (var i = 0; i < chk.length; i++) 
        {
            if (chk[i].type == "checkbox") 
            {
                if (chk[i].checked && chk[i] != rb) 
                {
                    if (chk[i].checked) 
                    {
                        //If checked change color to Aqua
                        row.style.backgroundColor = "aqua";
                    }
                    else 
                    {
                        //If not checked change back to original color
                        if (row.rowIndex % 2 == 0) 
                        {
                            //Alternating Row Color
                            row.style.backgroundColor = "#C2D69B";
                        }
                        else 
                        {
                            row.style.backgroundColor = "white";
                        }
                    }
                    chk[i].checked = false;
                    break;
                }
            }
        }
       

    } 
</script>--%>

<script type="text/javascript">
    function CheckBoxCheck(rb) {
        //debugger;
        var gv = document.getElementById("<%=GVPlans.ClientID%>");
        var chk = gv.getElementsByTagName("input");
        var row = rb.parentNode.parentNode;
        for (var i = 0; i < chk.length; i++) 
        {
            if (chk[i].type == "checkbox") 
            {
                if (chk[i].checked && chk[i] != rb) 
                {
                    chk[i].checked = false;
                  
                }
            }
        }
    }

//    $('#<%=GVPlans.ClientID %> tr td input[id*="chkCtrl"][type=checkbox]').click(function () {
//        debugger;
//        var btn = $(this).closest('tr').find('td input[id*="btnSubmit"]');
//        if ($(this).prop("checked") === true) {
//            btn.attr("disabled", false);
//        } else {
//            btn.attr("disabled", true);
//        }
//    });
</script>

<%--<script type="text/javascript">
    $().ready(function () {
        debugger;
        var btnNext = $("#btnSubmit"); // get the ASP mangled id//$("#btnNext");
        btnNext.click(NextClicked);

        function NextClicked() {
            alert("NextClicked Fired!");
        }

        ToggleButtonEnable(IsEnabled)//IsEnabled is true or false
        {
            if (IsEnabled) {//was disabled, now enable
                btnNext.removeAttr("disabled"); //enable button
                btnNext.attr("class", "cssBtnNext_Enabled");
            }
            else {//was enabled, now disable
                btnNext.attr("disabled", "disabled"); //disable button
                btnNext.attr("class", "cssBtnNext_Disabled");
            }
        }
    });
</script>--%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="Plan-Wrapper">

    <div id="Plan-PageWrapper">
        <div id="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                Choose Plan to Activate Your Account</h3>
                        </div>
                        <div class="panel-body">
                            <div id="GridviewDiv" style="width: 100%">
                                <asp:GridView ID="GVPlans" runat="server" BackColor="White" BorderColor="#CC9966"
                                    BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False"
                                    Width="100%" DataKeyNames = "PId">
                                    <Columns>
                                        <asp:TemplateField ItemStyle-Width="50" HeaderText="Select">
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkCtrl" runat="server" onclick="CheckBoxCheck(this);" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="PId" HeaderText="Plan" Visible="False" />
                                        <asp:BoundField DataField="Name of Plan" HeaderText="Name of Plan" ItemStyle-Width="140" />
                                        <asp:BoundField DataField="Validity" HeaderText="Validity" ItemStyle-Width="60" />
                                        <asp:BoundField DataField="Price" HeaderText="Price" ItemStyle-Width="60" />
                                    </Columns>
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <RowStyle BackColor="White" ForeColor="#330099" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                                </asp:GridView>
                            </div>

                            <div id="btndiv" style=" margin-top:1px;">
                                <asp:Button ID="btnSubmit" class="btn btn-sm btn-success" runat="server"
                                    Text="Pay" onclick="btnSubmit_Click" ClientIdMode="Static"/>
                            </div>
                        </div>
                    </div>                
                </div>
            </div>
        </div>

    </div>

</div>
</asp:Content>
