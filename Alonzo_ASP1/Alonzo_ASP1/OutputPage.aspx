<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OutputPage.aspx.cs" Inherits="Alonzo_ASP1.OutputPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #3366CC">
            <p style="margin-left: 40px">
                &nbsp;</p>
            <p style="margin-left: 40px">
<asp:Label ID="Label14" runat="server" Text="2. Output" Font-Names="Bahnschrift" Font-Size="XX-Large" Font-Bold="True" Font-Italic="False" ForeColor="White" EnableViewState="False"></asp:Label>
        </p>
            <br />
        </div>
        <p style="margin-left: 40px">
            <asp:Label ID="Label7" runat="server" Text="Student ID:" Font-Names="Bahnschrift"></asp:Label>
        </p>
        <p>

            <asp:TextBox ID="idOutput1" runat="server" BorderStyle="Dotted" ReadOnly="True" style="margin-left: 37px; margin-bottom: 10px;" Font-Names="Bahnschrift" Width="360px"></asp:TextBox>
        </p>
        <p style="margin-left: 40px">
            <asp:Label ID="Label8" runat="server" Font-Names="Bahnschrift" Text="Student Name:"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="nameOutput1" runat="server" BorderStyle="Dotted" ReadOnly="True" style="margin-left: 39px" Font-Names="Bahnschrift" Width="360px"></asp:TextBox>
        </p>
        <p style="margin-left: 40px">
<asp:Label ID="Label9" runat="server" Font-Names="Bahnschrift" Text="Course:"></asp:Label>
        </p>
        <p>
<asp:TextBox ID="courseOutput1" runat="server" BorderStyle="Dotted" EnableTheming="True" ReadOnly="True" style="margin-left: 39px" Font-Names="Bahnschrift" Width="360px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p style="margin-left: 40px">
<asp:Label ID="Label10" runat="server" Font-Names="Bahnschrift" Text="Tuition Fee:"></asp:Label>
            <asp:TextBox ID="tuitionOutput1" runat="server" BorderStyle="Dotted" ReadOnly="True" style="margin-left: 93px" Font-Names="Bahnschrift" Width="180px"></asp:TextBox>
        </p>
        <p style="margin-left: 40px">
<asp:Label ID="Label11" runat="server" Font-Names="Bahnschrift" Text="Down Payment:" ForeColor="Black"></asp:Label>
            <asp:TextBox ID="downPaymentOutput1" runat="server" BorderStyle="Dotted" ReadOnly="True" style="margin-left: 64px" Font-Names="Bahnschrift" Width="180px"></asp:TextBox>
        </p>
        <hr />
        <p style="margin-left: 40px">
            <asp:Label ID="Label12" runat="server" Font-Names="Bahnschrift" Text="Total Balance:" ForeColor="#0033CC"></asp:Label>
            <asp:TextBox ID="totalBalanceOutput1" runat="server" BorderStyle="Dotted" ReadOnly="True" style="margin-left: 74px" Font-Bold="True" Font-Names="Bahnschrift" Width="180px"></asp:TextBox>
       </p>
        <hr />
        <p style="margin-left: 40px">
            <asp:Button ID="Button1" runat="server" Font-Names="Bahnschrift" OnClick="Button1_Click" Text="Return" Width="142px" BorderStyle="Solid" Height="42px" style="margin-left: 0px" />
        </p>
        <p style="margin-left: 40px">
            </p>
        <p style="margin-left: 40px">
            <asp:Label ID="Label13" runat="server" Font-Names="Bahnschrift" ForeColor="Blue" Text="Made By: Earl Lawrence Alonzo of BIT21"></asp:Label>
        </p>
        <p>
            </p>
    </form>
</body>
</html>
