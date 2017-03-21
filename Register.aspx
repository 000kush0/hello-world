<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

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
            <div id="Register">
    <table class="register">
       <tr>
           <td colspan="3" style="font-size:xx-large;">
               Create a Recharge Now Account
           </td>
       </tr>
       <tr>
            <td colspan="3" style="font-size:xx-large;">
                Enter Your Details Correctly
            </td>
        </tr>
        <tr>
            <td style="font-size:larger;">
                Name
            </td>
            <td>
                :
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"  ErrorMessage="Field Should Not Be Blank" ForeColor="Red" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size:larger;">
                EmailId
            </td>
            <td>
                :
            </td>
            <td>
                <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmailId"  ErrorMessage="Field Should Not Be Blank" ForeColor="Red" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size:larger;">
                MobileNo.
            </td>
            <td>
                :
            </td>
            <td>
                <asp:TextBox ID="txtcode" runat="server" Text="+91" Height="18px" Width="28px"></asp:TextBox>
                <asp:TextBox ID="txtmobileno" runat="server" Height="18px" Width="100px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmobileno"  ErrorMessage="Field Should Not Be Blank" ForeColor="Red" ></asp:RequiredFieldValidator>
            </td>
            <%--<td>
                <asp:TextBox ID="txtmobileno" runat="server"></asp:TextBox>
            </td>--%>
        </tr>
        <tr>
            <td>
                Password
            </td>
            <td>
                :-
            </td>
            <td>
                <asp:TextBox ID="txtpswrd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Confirm Password
            </td>
            <td>
                :
            </td>
            <td>
                <asp:TextBox ID="txtcnfrmpswrd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpswrd" ControlToValidate="txtcnfrmpswrd" ErrorMessage="Password Does Not Match" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="" />
                <a href="#">Accept Term And Conditions</a>

<%--                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="CheckBox1"  ErrorMessage="Please Accept Terms and Condition" ForeColor="Red" ></asp:RequiredFieldValidator>--%>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <%--<a href="Login.aspx"><img src="Images/createaccount_button.png" style="width: 145px" />--%>
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/createaccount_button.png" Height="48px" OnClick="ImageButton1_Click" />
                    
                <br />
                <a href="Login.aspx">Already have a recharge now account</a>
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
