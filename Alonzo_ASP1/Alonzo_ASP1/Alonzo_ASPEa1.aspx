<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alonzo_ASPEa1.aspx.cs" Inherits="Alonzo_ASP1.Alonzo_ASPEa1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #3366CC">
            <br />
        <p style="margin-left: 40px">
            <asp:Label ID="Label7" runat="server" Text="1. Input" Font-Names="Bahnschrift" Font-Size="XX-Large" Font-Bold="True" Font-Italic="False" ForeColor="White" EnableViewState="False"></asp:Label>
            </p>
            <br />
        </div>
        <p style="margin-left: 40px">
            <asp:Label ID="Label1" runat="server" Text="Student ID:" Font-Names="Bahnschrift"></asp:Label>
            </p>
        <p>
            <asp:TextBox ID="idInput" runat="server" OnTextChanged="TextBox1_TextChanged" BorderStyle="Groove" style="margin-left: 39px" Width="332px"></asp:TextBox>
            <asp:TextBox ID="studentIDError" runat="server" BorderStyle="None" ForeColor="#CC0000" OnTextChanged="unitsExceeded_TextChanged" ReadOnly="True" style="margin-left: 85px; margin-top: 1px" Width="299px"></asp:TextBox>
            </p>
        <p style="margin-left: 40px">
            <asp:Label ID="Label5" runat="server" Font-Names="Bahnschrift" Text="Student Name:"></asp:Label>
            </p>
        <p>
            <asp:TextBox ID="nameInput" runat="server" OnTextChanged="TextBox1_TextChanged" BorderStyle="Groove" style="margin-left: 41px" Width="332px"></asp:TextBox>
            <asp:TextBox ID="nameError" runat="server" BorderStyle="None" ForeColor="#CC0000" OnTextChanged="unitsExceeded_TextChanged" ReadOnly="True" style="margin-left: 84px; margin-top: 1px" Width="384px" Height="18px"></asp:TextBox>
            </p>
        <p>
            &nbsp;</p>
        <p style="margin-left: 40px">
            <asp:Label ID="Label2" runat="server" Font-Names="Bahnschrift" Text="Course:"></asp:Label>
            <asp:DropDownList ID="courseList" runat="server" Height="21px" OnSelectedIndexChanged="courseList_SelectedIndexChanged" style="margin-left: 98px" Width="186px" Font-Names="Bahnschrift">
                <asp:ListItem>Select Course</asp:ListItem>
                <asp:ListItem>BIT</asp:ListItem>
                <asp:ListItem>BCS</asp:ListItem>
                <asp:ListItem>HUB</asp:ListItem>
                <asp:ListItem>MEB</asp:ListItem>
                <asp:ListItem>APN</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="courseNotSelected" runat="server" BorderStyle="None" ForeColor="#CC0000" OnTextChanged="unitsExceeded_TextChanged" ReadOnly="True" style="margin-left: 84px; margin-top: 1px" Visible="False" Width="139px">Please select a course.</asp:TextBox>
            </p>
        <p style="margin-left: 40px">
            <asp:Label ID="Label3" runat="server" Font-Names="Bahnschrift" Text="Units Enrolled (24 Units  Max):"></asp:Label>
            <asp:TextBox ID="enrolledUnits" runat="server" OnTextChanged="TextBox1_TextChanged" BorderStyle="Groove" style="margin-left: 31px" Width="88px"></asp:TextBox>
            <asp:TextBox ID="unitsError" runat="server" BorderStyle="None" ForeColor="#CC0000" OnTextChanged="unitsExceeded_TextChanged" ReadOnly="True" style="margin-left: 84px; margin-top: 1px" Width="396px"></asp:TextBox>
            </p>
        <p style="margin-left: 40px">
            &nbsp;</p>
        <p style="margin-left: 40px">
            <asp:Label ID="Label4" runat="server" Font-Names="Bahnschrift" Text="Tuition Down Payment:"></asp:Label>
            <asp:RadioButtonList ID="downPaymentList" runat="server" Font-Names="Bahnschrift" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Width="234px" RepeatLayout="Flow" style="margin-left: 15px">
                <asp:ListItem Value="40">40%</asp:ListItem>
                <asp:ListItem Value="rbtnFifty">50%</asp:ListItem>
                <asp:ListItem Value="rbtnFull">Full Payment</asp:ListItem>
            </asp:RadioButtonList>
            <asp:TextBox ID="downPaymentNotSelected" runat="server" BorderStyle="None" ForeColor="#CC0000" OnTextChanged="unitsExceeded_TextChanged" ReadOnly="True" style="margin-left: 12px; margin-top: 0px" Visible="False" Width="247px">Please select your Down Payment.</asp:TextBox>
            </p>
        <hr />
        <p>
            <asp:Button ID="submitButton" runat="server" OnClick="Button1_Click" Text="Submit" Width="142px" BorderStyle="Solid" Font-Names="Bahnschrift" Height="42px" style="margin-left: 26px" BorderColor="#009933" ForeColor="#009933" />
            <asp:Button ID="clearAll" runat="server" OnClick="clearAll_Click" style="margin-left: 68px; margin-top: 0px;" Text="Clear All" Width="142px" BorderStyle="Solid" Font-Names="Bahnschrift" Height="42px" BorderColor="#CC0000" ForeColor="#CC0000" />
            </p>
    </form>
    </body>
</html>
