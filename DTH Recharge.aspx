 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="DTH Recharge.aspx.cs" Inherits="DTH_Recharge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        #Entry {
            float: left;
            width:350px;
            height: 926px;
        }
        #plans {
            float: right;
            width:1000px;
            height:926px;
        }
        .auto-style1 {
            width: 141px;
        }
        #dthrecharge {
            height: 926px;
            background-color:aliceblue;
        }
        .auto-style2 {
            font-size: larger;
            background-color: ActiveBorder;
            padding-left: 70px;
        }
        
        #AirtelPlan {
            height: 362px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="webpage">
        <div id="menu">
            <div id="banner">
                <img src="Images/main-banner1.jpg" alt="Image Cannot Be Loaded" align="right" />
            </div>
            <div id="login">
                <table style="font-size:large;">
                    <tr>
                        <td style="width:171px;">
                            Hey<asp:Label ID="Label1" runat="server" Text="" ForeColor="Thistle"></asp:Label>
                        </td>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/logout_icon_cg9p9799835c_th.jpg" OnClick="ImageButton1_Click" />
                        </td>
                    </tr>
                </table>
                <%--<a href="Login.aspx"><img src="Images/login.jpg" alt="Image Cannot Be Loaded" style="height: 250px; width: 346px"/></a>--%>
                <%--<asp:HiddenField ID="HiddenField1" runat="server" />--%>
            </div>
        </div>
        <div id="brands">
            <ul>
                <li><a href="MobileRecharge.aspx" >Mobile Recharge</a></li>
                <li><a href="DTH Recharge.aspx">DTH Recharge</a></li>
                <li><a href="DataCard.aspx">Data Card</a></li>
                <li><a href="Electricity.aspx">Electricity</a></li>
                <li><a href="Gas.aspx">Gas</a></li>
                <li><a href="#">Train Ticket</a> </li>
                <li><a href="#">Metro</a></li>
                <li><a href="#">Bus Ticket</a></li>
                <%--<li><a href="#">Mobile Recharge</a></li>
                <li><a href="#">Mobile Recharge</a></li>--%>
            </ul>
        </div>
            <div id="dthrecharge">
    <div id="Entry">
        <table>
            <tr>
                <td class="auto-style2" colspan="3">
                    DTH Recharge
                </td>
            </tr>
            
            <tr>
                <td>
                    Operator
                </td>
                <td>
                    :-
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="ddoperator" runat="server">
                        <asp:ListItem>Choose</asp:ListItem>
                        <asp:ListItem>Reliance BigTv DTH</asp:ListItem>
                        <asp:ListItem>Airtel</asp:ListItem>
                        <asp:ListItem>Videocon D2H</asp:ListItem>
                        <asp:ListItem>Dish Tv</asp:ListItem>
                        <asp:ListItem>SunDirect</asp:ListItem>
                        <asp:ListItem>TataSky</asp:ListItem> 
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Subscriber ID
                </td>
                <td>
                    :-
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtsubscriberId" runat="server" style="width: 128px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Amount
                </td>
                <td>
                    :-</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtamount" runat="server"></asp:TextBox>
                </td>
            </tr>
           
            <tr>
                <td align="right" colspan="3">
                    <asp:Button ID="bttnrecharge" runat="server" Text="Recharge" Width="117px" Height="52px" OnClick="bttnrecharge_Click"/>
                </td>
            </tr>
        </table>
    </div>
            <div id="plans">
                 <table>
                     <tr>
                         <td colspan="3" style="width:1000px; font-size:xx-large; padding:0px 0px 0px 400px; background-color:ActiveBorder;">
                             Plans  Information
                         </td>
                     </tr>
                     <tr>
                         <td>
                             Operator
                         </td>
                         <td>
                             :-
                         </td>
                         <td>
                             <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                 <asp:ListItem Value="select" Text="--Select--"></asp:ListItem>
                                 <asp:ListItem Value="1" Text="Airtel"></asp:ListItem>
                                 <asp:ListItem Value="2" Text="Dish Tv"></asp:ListItem>
                                 <asp:ListItem Value="3" Text="Reliance BigTv"></asp:ListItem>
                                 <asp:ListItem Value="4" Text="SunDirect"></asp:ListItem>
                                 <asp:ListItem Value="5" Text="Tata Sky"></asp:ListItem>
                                 <asp:ListItem Value="6" Text="Videocon D2H"></asp:ListItem>
                             </asp:DropDownList>
                         </td>
                     </tr>
                 </table>
                <div id="AirtelPlan">
                    <asp:Image ID="Image1" runat="server"/>
                    
                    <%--<img src="dth recharge/AirtelDthRechargeplan.html" />--%>
                </div>
            </div>
        </div>

        <div id="Footer">
            @Copyright Ankush Sharma
        </div>
    </div>
    
    </form>
</body>
</html>
