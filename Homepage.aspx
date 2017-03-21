<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
     <style type="text/css">
         .auto-style3 {
             width: 171px;
         }
         .Content {
             font-size: 48px;
             margin-left:500px;
             background-color:aliceblue;
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
                        <td class="auto-style3">
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
            <div id="Homepage">
                    <table class="Content">
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;
                                Now You Can
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                Proceed On
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Your Recharge And
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                Bill Payments
                            </td>
                        </tr>
                    </table>  
            </div>

        <div id="Footer">
            @Copyright Ankush Sharma
        </div>
    </div>
    </form>
</body>
</html>
