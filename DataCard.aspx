 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataCard.aspx.cs" Inherits="DataCard" %>

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
        #datacard {
            height: 926px;
            background-color:aliceblue;
        }
        .auto-style2 {
            font-size: larger;
            background-color: ActiveBorder;
            padding-left: 70px;
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
        <div id="datacard">
        <div id="Entry">
            <table>
                <tr>
                    <td class="auto-style2" colspan="3">
                        Data Card Recharge
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
                        <asp:DropDownList ID="ddloperator" runat="server">
                            <asp:ListItem>Choose</asp:ListItem>
                            <asp:ListItem>Bsnl Datacard</asp:ListItem>
                            <asp:ListItem>Airtel DataCard</asp:ListItem>
                            <asp:ListItem>Videocon DataCard</asp:ListItem>
                            <asp:ListItem>Reliance NetConnect+</asp:ListItem>
                            <asp:ListItem>Tata Photon plus</asp:ListItem>
                            <asp:ListItem>MTS DataCard</asp:ListItem> 
                            <asp:ListItem>MTS Blaze</asp:ListItem> 
                            <asp:ListItem>MTNL DataCard</asp:ListItem> 
                        
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
            <asp:AdRotator ID="AdRotator1" AdvertisementFile="~/Ads.xml" runat="server" Height="200px" Width="250px"/>
            
        </div>
            <div id="plans">
                    <table>
                        <tr>
                            <td colspan="4" style=" font-size:xx-large; padding:0px 370px 0px 400px; background-color:ActiveBorder;">
                                Plans Information
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                Operator
                            </td>
                            <td>
                                :-
                            </td>
                            <td>
                                <asp:DropDownList ID="ddloperator2" runat="server">
                                    <asp:ListItem>Choose</asp:ListItem>
                                    <asp:ListItem>Bsnl Datacard</asp:ListItem>
                                    <asp:ListItem>Airtel DataCard</asp:ListItem>
                                    <asp:ListItem>Videocon DataCard</asp:ListItem>
                                    <asp:ListItem>Reliance NetConnect+</asp:ListItem>
                                    <asp:ListItem>Tata Photon plus</asp:ListItem>
                                    <asp:ListItem>MTS DataCard</asp:ListItem> 
                                    <asp:ListItem>MTS Blaze</asp:ListItem> 
                                    <asp:ListItem>MTNL DataCard</asp:ListItem>
                                </asp:DropDownList>
                            </td>  
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Show" />
                            </td>
                        </tr>
                        
                    </table>
            </div>
        </div>

        <div id="Footer">
            @Copyright Ankush Sharma
        </div>
    </div>
    </form>
</body>
</html>
