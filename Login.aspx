<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="Login.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 74px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="design">
            <div id="banner">
                <table>
                    <tr>
                        <td class="logo-image">

                        </td>
                        <td class="wrapper-image">
                            <img src="Images/main-banner1.jpg" />
                        </td>
                        <td class="login-image">
                            <img src="Images/login.jpg" style="height: 250px; width: 350px;" />
                        </td>
                    </tr>
                </table>
            </div>
            <div id="slider" style="margin-left:200px;">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick"></asp:Timer>
                        <asp:Image ID="Image1" runat="server" Height="250px" Width="1000px" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <div id="login">
                <table style="height: 523px; width: 436px; margin-left:500px;" >
                    <tr>
                        <td style="font-size:xx-large;" class="auto-style1" colspan="3">
                            Please Login First
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            EmailId
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            Password
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:TextBox ID="txtpswrd" runat="server" TextMode="Password"></asp:TextBox>
                            <br />
                            <a href="#">Forgot Password</a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="bttnregister" runat="server" Text="Register" Width="100px" OnClick="bttnregister_Click" />
                        </td>
                        <td>
                            <asp:Button ID="bttnlogin" runat="server" Text="Login" Width="100px" OnClick="bttnlogin_Click" />
                        </td>
                    </tr>
                    
                    <tr>
                        <td colspan="3" style="padding-top:25px; padding-left:200px;">
                            
                            OR
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Button-login-with-facebook.png" OnClick="ImageButton1_Click" />
                        
                        <br />
                        <br />
                        <br />
                        
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Screen_Shot_2014-04-28_at_3.02.52_PM.png" OnClick="ImageButton2_Click"  />
                        </td>
                    </tr>
                </table>
            </div>
            <div id="footer">
                @COPYRIGHT ANKUSH SHARMA
            </div>
        </div>
    </form>
</body>
</html>
