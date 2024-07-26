<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyWebsite.aspx.cs" Inherits="LoginPage.MyWebsite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 324px;
        }
        .auto-style4 {
            width: 324px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" style="font-family: bahnschrift"><strong>Welcome</strong></td>
                    <td class="auto-style2" style="font-family: bahnschrift">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" style="font-family: bahnschrift">Student ID</td>
                    <td style="font-family: bahnschrift">
                        <asp:Label ID="lblStudentID" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="font-family: bahnschrift">Student Name</td>
                    <td style="font-family: bahnschrift">
                        <asp:Label ID="lblStudentName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="font-family: bahnschrift">Course/Year/Section</td>
                    <td style="font-family: bahnschrift">
                        <asp:Label ID="lblCourseYrSec" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
