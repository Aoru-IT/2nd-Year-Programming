<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyLoging.aspx.cs" Inherits="LoginPage.MyLoging" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 132px;
        }
        .auto-style3 {
            width: 132px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
            width: 211px;
        }
        .auto-style5 {
            width: 211px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="font-family: bahnschrift"><strong>Username:</strong></td>
                    <td class="auto-style5" style="font-family: bahnschrift">
                        <asp:TextBox ID="userNameInput" runat="server" Width="160px"></asp:TextBox>
                    </td>
                    <td style="color: #FF0000">
                        <asp:Label ID="errorUsername" runat="server" Font-Names="Bahnschrift"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-family: bahnschrift"><strong>Password:</strong></td>
                    <td class="auto-style4" style="font-family: bahnschrift">
                        <asp:TextBox ID="passwordInput" runat="server" TextMode="Password" Width="160px"></asp:TextBox>
                    </td>
                    <td class="auto-style6" style="color: #FF0000">
                        <asp:Label ID="errorPassword" runat="server" Font-Names="Bahnschrift"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-family: bahnschrift">&nbsp;</td>
                    <td class="auto-style4" style="font-family: bahnschrift">
                        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Log-In" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
