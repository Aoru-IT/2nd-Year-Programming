<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistratioN.aspx.cs" Inherits="LoginPage.RegistratioN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style3 {
            width: 206px;
        }
        .auto-style4 {
            height: 22px;
            width: 206px;
        }
        .auto-style5 {
            width: 206px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 206px;
            height: 32px;
        }
        .auto-style8 {
            height: 32px;
        }
        .auto-style9 {
            width: 206px;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style11 {
            width: 242px;
        }
        .auto-style12 {
            height: 23px;
            width: 242px;
        }
        .auto-style13 {
            height: 22px;
            width: 242px;
        }
        .auto-style14 {
            height: 26px;
            width: 242px;
        }
        .auto-style15 {
            height: 32px;
            width: 242px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" style="font-family: bahnschrift; font-weight: 700;">&nbsp;&nbsp;Welcome to my website</td>
                    <td class="auto-style11" style="font-family: bahnschrift">&nbsp;</td>
                    <td style="font-family: bahnschrift">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5" style="font-family: bahnschrift"></td>
                    <td class="auto-style12" style="font-family: bahnschrift"></td>
                    <td class="auto-style6" style="font-family: bahnschrift">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" style="font-family: bahnschrift"><strong>Register Here</strong></td>
                    <td class="auto-style13" style="font-family: bahnschrift"></td>
                    <td class="auto-style2" style="font-family: bahnschrift">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9" style="font-family: bahnschrift">Student ID</td>
                    <td class="auto-style14" style="font-family: bahnschrift">
                        <asp:TextBox ID="studentIDInput" runat="server" Width="214px"></asp:TextBox>
                    </td>
                    <td class="auto-style10" style="font-family: bahnschrift; color: #FF0000;">
                        <asp:Label ID="errorStudentID" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" style="font-family: bahnschrift">Student Name</td>
                    <td class="auto-style14" style="font-family: bahnschrift">
                        <asp:TextBox ID="studentNameInput" runat="server" Width="214px"></asp:TextBox>
                    </td>
                    <td class="auto-style10" style="font-family: bahnschrift; color: #FF0000;">
                        <asp:Label ID="errorStudentName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="font-family: bahnschrift">Course/Year/Section</td>
                    <td class="auto-style13" style="font-family: bahnschrift">
                        <asp:TextBox ID="studentCYSInput" runat="server" Width="214px"></asp:TextBox>
                    </td>
                    <td class="auto-style2" style="font-family: bahnschrift; color: #FF0000;">
                        <asp:Label ID="errorCYS" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-family: bahnschrift">Email</td>
                    <td class="auto-style11" style="font-family: bahnschrift">
                        <asp:TextBox ID="emailInput" runat="server" TextMode="Email" Width="214px"></asp:TextBox>
                    </td>
                    <td style="font-family: bahnschrift; color: #FF0000;">
                        <asp:Label ID="errorEmail" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-family: bahnschrift">Birthday</td>
                    <td class="auto-style11" style="font-family: bahnschrift">
                        <asp:TextBox ID="birthdayInput" runat="server" TextMode="Date" Width="214px"></asp:TextBox>
                    </td>
                    <td style="font-family: bahnschrift; color: #FF0000;">
                        <asp:Label ID="errorBirthday" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-family: bahnschrift">Password</td>
                    <td class="auto-style11" style="font-family: bahnschrift">
                        <asp:TextBox ID="passwordInput" runat="server" TextMode="Password" Width="214px"></asp:TextBox>
                    </td>
                    <td style="font-family: bahnschrift; color: #FF0000;">
                        <asp:Label ID="errorPassword" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="font-family: bahnschrift">Confirm Password</td>
                    <td class="auto-style15" style="font-family: bahnschrift">
                        <asp:TextBox ID="confirmPassword" runat="server" Height="22px" TextMode="Password" Width="214px"></asp:TextBox>
                    </td>
                    <td class="auto-style8" style="font-family: bahnschrift; color: #FF0000;">
                        <asp:Label ID="errorConfirmPassword" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-family: bahnschrift">&nbsp;</td>
                    <td class="auto-style11" style="font-family: bahnschrift">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    </td>
                    <td style="font-family: bahnschrift">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
