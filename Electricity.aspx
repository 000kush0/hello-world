<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Electricity.aspx.cs" Inherits="Electricity" %>

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
        #electricitybill {
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
            <div id="electricitybill">
    <div id="Entry">
        <table>
            <tr>
                <td class="auto-style2" colspan="3">
                    Electricity Bill
                </td>
            </tr>
            
            <tr>
                <td>
                    Country
                </td>
                <td>
                    :-
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtcountry" runat="server" Text="India" CausesValidation="true" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    State
                </td>
                <td>
                    :-
                </td>
                <td>
                    <asp:DropDownList ID="ddlstate" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged">
                        <%--<asp:ListItem>Select</asp:ListItem>
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
                        <asp:ListItem>UP West</asp:ListItem>--%>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    City
                </td>
                <td>
                    :-
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="ddlcity" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlcity_SelectedIndexChanged">
                        <%--<asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Kanpur</asp:ListItem>
                        <asp:ListItem>Lucknow</asp:ListItem>
                        <asp:ListItem>Bihar</asp:ListItem>
                        <asp:ListItem>Rajasthan</asp:ListItem>--%>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Area
                </td>
                <td>
                    :-
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="ddlarea" runat="server" AutoPostBack="True">
                        <%--<asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Naubasta</asp:ListItem>
                        <asp:ListItem>Latuoso Road</asp:ListItem>
                        <asp:ListItem>Shyam Nagar</asp:ListItem>
                        <asp:ListItem>Rakabganj</asp:ListItem>
                        <asp:ListItem>Aminabhag</asp:ListItem>
                        <asp:ListItem>Charbhag</asp:ListItem>--%>

                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Account No.
                </td>
                <td>
                    :-
                </td>
                <td>
                    <asp:TextBox ID="txtacno" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Consumer Name
                </td>
                <td>
                    :-
                </td>
                <td>
                    <asp:TextBox ID="txtconsumername" runat="server"></asp:TextBox>
                </td>
            </tr>
           <tr>
               <td>
                   Service Connection No.
               </td>
               <td>
                   :-
               </td>
               <td>
                   <asp:TextBox ID="txtconno" runat="server"></asp:TextBox>
               </td>
           </tr>
            <tr>
                <td align="right" colspan="3">
                    <asp:Button ID="bttnrecharge" runat="server" Text="Proceed" Width="117px" Height="52px" OnClick="bttnrecharge_Click" />
                </td>
            </tr>
        </table>
    </div>
            <div id="plans">


            </div>
        </div>

        <div id="Footer">
            @Copyright Ankush Sharma
        </div>
    </div>
    
    </form>
</body>
</html>

