﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gas.aspx.cs" Inherits="Gas" %>

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
                #gas {
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
                            Hey<asp:Label ID="Label1" runat="server" Text="" ForeColor="Turquoise"></asp:Label>
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
            <div id="gas">
    <div id="Entry">
        <table>
            <tr>
                <td class="auto-style2" colspan="3">
                    Gas Booking
                </td>
            </tr>
            
            <tr>
                <td>
                    Select Your Gas Service
                </td>
                <td>
                    :-
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Bharat Gas</asp:ListItem>
                        <asp:ListItem>Indian Gas</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            
           <tr>
               <td>
                   Customer Account No.
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
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Pay Your Bill" />
                     
                </td>
                <td colspan="2">
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Cash On Delivery"/>
                </td>
            </tr>
            <tr>
                <td align="right" colspan="3">
                    <asp:Button ID="bttnproceed" runat="server" Text="Proceed" Width="117px" Height="52px" />
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

