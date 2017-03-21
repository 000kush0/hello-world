<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MobileRecharge.aspx.cs" Inherits="MobileRecharge" %>

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
        .auto-style2 {
                    font-size: larger;
                    background-color: ActiveBorder;
                    padding-left: 70px;
                }
        #mobilerecharge {
            height: 926px;
            background-color: aliceblue;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="webpage">
        <div id="menu">
            <div id="banner">
                <img src="Images/main-banner1.jpg" alt="Image Cannot Be Loaded" align="right"/>
                
            </div>
            <div id="login" style="font-size:large;">
                <table>
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
            <div id="mobilerecharge">
                <div id="Entry">
                    <table style="height: 254px; width: 298px">
            <tr>
                <td class="auto-style2" colspan="3">
                    Mobile Recharge
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rb1" runat="server" Text="Prepaid" AutoPostBack="true" GroupName="Services" OnCheckedChanged="rb1_CheckedChanged" />
                </td>
                <td colspan="2">
                    <asp:RadioButton ID="rb2" runat="server" Text="Postpaid" AutoPostBack="true" GroupName="Services" OnCheckedChanged="rb2_CheckedChanged" />
                </td>
            </tr>
            <tr>
                <td>
                    MobileNumber
                </td>
                <td>
                    :-
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtmbno" runat="server"></asp:TextBox>
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
                        <asp:ListItem>Vodafone</asp:ListItem>
                        <asp:ListItem>Airtel</asp:ListItem>
                        <asp:ListItem>Aircel</asp:ListItem>
                        <asp:ListItem>Idea</asp:ListItem>
                        <asp:ListItem>Bsnl</asp:ListItem>
                        <asp:ListItem>Reliance GSM</asp:ListItem>
                        <asp:ListItem>Reliance CDMA</asp:ListItem>
                        <asp:ListItem>TataDocomo GSM</asp:ListItem>
                        <asp:ListItem>TataDocomo CDMA</asp:ListItem>
                        <asp:ListItem>T24</asp:ListItem>
                        <asp:ListItem>Telenor</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Circle</td>
                <td>
                    :-
                </td>
                <td>
                    <asp:DropDownList ID="ddlcountry" runat="server">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>Andhra Pardesh</asp:ListItem>
                        <asp:ListItem>Assam</asp:ListItem>
                        <asp:ListItem>Bihar</asp:ListItem>
                        <asp:ListItem>Chandigarh</asp:ListItem>
                        <asp:ListItem>Delhi </asp:ListItem>
                        <asp:ListItem>Gujarat</asp:ListItem>
                        <asp:ListItem>Haryana</asp:ListItem>
                        <asp:ListItem>Himachal Pardesh</asp:ListItem>
                        <asp:ListItem>Jammu Kashmir</asp:ListItem>
                        <asp:ListItem>Karnataka</asp:ListItem>
                        <asp:ListItem>Kolkata</asp:ListItem>
                        <asp:ListItem>Madhya Pardesh</asp:ListItem>
                        <asp:ListItem>Maharastra</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Punjab</asp:ListItem>
                        <asp:ListItem>Rajasthan</asp:ListItem>
                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                        <asp:ListItem>West Bengal</asp:ListItem>
                        <asp:ListItem>UP East</asp:ListItem>
                        <asp:ListItem>UP West</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Amount
                </td>
                <td>
                    :-
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtamount" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rb3" runat="server" Text="Topup Recharge" GroupName="RechargeType" OnCheckedChanged="rb3_CheckedChanged"/>
                </td>
                <td colspan="2">
                    <asp:RadioButton ID="rb4" runat="server" Text="Special Recharge" GroupName="RechargeType" OnCheckedChanged="rb4_CheckedChanged" />
                </td>
            </tr>
            <tr>
                <td align="right" colspan="3">
                    <asp:Button ID="bttnrecharge" runat="server" Text="Recharge" Width="110px" Height="52px" OnClick="bttnrecharge_Click"/>
                </td>
            </tr>             
        </table>
                    <asp:AdRotator ID="AdRotator1" AdvertisementFile="~/Ads.xml" runat="server" Height="200px" Width="250px" />
                </div>
                <div id="plans">
                    <table>
                        <tr>
                            <td colspan="7" style="width:1000px; font-size:xx-large; padding:0px 0px 0px 400px; background-color:ActiveBorder;">
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
                                    <asp:ListItem Selected="True">Choose</asp:ListItem>
                                    <asp:ListItem>Vodafone</asp:ListItem>
                                    <asp:ListItem>Airtel</asp:ListItem>
                                    <asp:ListItem>Aircel</asp:ListItem>
                                    <asp:ListItem>Idea</asp:ListItem>
                                    <asp:ListItem>Bsnl</asp:ListItem>
                                    <asp:ListItem>Reliance GSM</asp:ListItem>
                                    <asp:ListItem>Reliance CDMA</asp:ListItem>
                                    <asp:ListItem>TataDocomo GSM</asp:ListItem>
                                    <asp:ListItem>TataDocomo CDMA</asp:ListItem>
                                    <asp:ListItem>T24</asp:ListItem>
                                    <asp:ListItem>Telenor</asp:ListItem>
                                </asp:DropDownList>
                            </td>  
                            <td>
                                Circle
                            </td>
                            <td>
                                :-
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlcircle" runat="server">
                                    <asp:ListItem Selected="True">---Select---</asp:ListItem>
                                    <asp:ListItem>Andhra Pardesh</asp:ListItem>
                                    <asp:ListItem>Assam</asp:ListItem>
                                    <asp:ListItem>Bihar</asp:ListItem>
                                    <asp:ListItem>Chandigarh</asp:ListItem>
                                    <asp:ListItem>Delhi </asp:ListItem>
                                    <asp:ListItem>Gujarat</asp:ListItem>
                                    <asp:ListItem>Haryana</asp:ListItem>
                                    <asp:ListItem>Himachal Pardesh</asp:ListItem>
                                    <asp:ListItem>Jammu Kashmir</asp:ListItem>
                                    <asp:ListItem>Karnataka</asp:ListItem>
                                    <asp:ListItem>Kolkata</asp:ListItem>
                                    <asp:ListItem>Madhya Pardesh</asp:ListItem>
                                    <asp:ListItem>Maharastra</asp:ListItem>
                                    <asp:ListItem>Mumbai</asp:ListItem>
                                    <asp:ListItem>Punjab</asp:ListItem>
                                    <asp:ListItem>Rajasthan</asp:ListItem>
                                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                                    <asp:ListItem>West Bengal</asp:ListItem>
                                    <asp:ListItem>UP East</asp:ListItem>
                                    <asp:ListItem>UP West</asp:ListItem>
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

