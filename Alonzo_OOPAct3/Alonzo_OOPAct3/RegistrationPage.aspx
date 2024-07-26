<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="Alonzo_OOPAct3.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            margin-left: 0px;
        }
        .auto-style7 {
            margin-left: 7px;
        }
        .auto-style10 {
            margin-left: 88px;
        }
        .auto-style18 {
            height: 21px;
            width: 245px;
        }
        .auto-style22 {
            margin-left: 20px;
        }
        .auto-style24 {
            margin-left: 10px;
        }
        .auto-style25 {
            height: 22px;
            width: 245px;
        }
        .auto-style26 {
            height: 23px;
            width: 245px;
        }
        .auto-style27 {
            width: 245px;
        }
        .auto-style29 {
            width: 284px;
        }
        .auto-style32 {
            height: 23px;
        }
        .auto-style36 {
            width: 168px;
        }
        .auto-style37 {
            margin-left: 6px;
        }
        .auto-style41 {
            height: 21px;
            width: 284px;
        }
        .auto-style42 {
            height: 22px;
            width: 284px;
        }
        .auto-style43 {
            height: 23px;
            width: 284px;
        }
        .auto-style47 {
            height: 21px;
            width: 168px;
        }
        .auto-style48 {
            height: 22px;
            width: 168px;
        }
        .auto-style49 {
            height: 23px;
            width: 168px;
        }
        .auto-style50 {
            margin-left: 40px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <p class="auto-style50">
        &nbsp;&nbsp;&nbsp;
        </p>
        <asp:Panel ID="Panel1" runat="server" Font-Names="Bahnschrift" GroupingText="Registration Page">
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style47" style="text-align: right; color: #FF0000;"></td>
                    <td class="auto-style41" style="color: #CC0000">
                        &nbsp;&nbsp; * = Input Required</td>
                    <td class="auto-style18" style="color: #CC0000">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style47" style="text-align: right">First Name:</td>
                    <td class="auto-style41">
                        <asp:TextBox ID="firstName" runat="server" CssClass="auto-style7" Width="260px"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="firstName" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="firstName" Display="Dynamic" ErrorMessage="First name contains numbers" ForeColor="#CC0000" ValidationExpression="^[^\d]+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style48" style="text-align: right">Last Name:</td>
                    <td class="auto-style42">
                        <asp:TextBox ID="lastName" runat="server" CssClass="auto-style7" Width="260px"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lastName" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="lastName" Display="Dynamic" ErrorMessage="Last name contains numbers" ForeColor="#CC0000" ValidationExpression="^[^\d]+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style49" style="text-align: right">Birthday:</td>
                    <td class="auto-style43">
                        <asp:TextBox ID="birthDay" runat="server" CssClass="auto-style7" Width="260px" TextMode="Date"></asp:TextBox>
                    </td>
                    <td class="auto-style26">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="birthDay" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style49" style="text-align: right">Member&#39;s ID:</td>
                    <td class="auto-style43">
                        <asp:TextBox ID="memberID" runat="server" CssClass="auto-style7" Width="120px" BorderStyle="Solid" AutoPostBack="True" ReadOnly="True"></asp:TextBox>
                        <asp:Button ID="btnGenerate" runat="server" CssClass="auto-style22" OnClick="btnGenerate_Click" Text="Generate" Width="108px" CausesValidation="False" />
                    </td>
                    <td class="auto-style26">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style48" style="text-align: right">Membership Type:</td>
                    <td class="auto-style42">
                        <asp:DropDownList ID="dropMemberType" runat="server" CssClass="auto-style7" Height="25px" Width="130px">
                            <asp:ListItem Value="0">--</asp:ListItem>
                            <asp:ListItem Value="0.12">Silver</asp:ListItem>
                            <asp:ListItem Value="0.15">Gold</asp:ListItem>
                            <asp:ListItem Value="0.20">Platinum</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style25"></td>
                </tr>
                <tr>
                    <td class="auto-style49" style="text-align: right">Product:</td>
                    <td class="auto-style43">
                        <asp:DropDownList ID="dropProduct" runat="server" CssClass="auto-style7" Width="130px" ValidationGroup="Product" OnSelectedIndexChanged="dropProduct_SelectedIndexChanged">
                            <asp:ListItem Value="0">--</asp:ListItem>
                            <asp:ListItem Value="35500">Laptop</asp:ListItem>
                            <asp:ListItem Value="27500">Desktop</asp:ListItem>
                            <asp:ListItem Value="5500">Print (dot matrix)</asp:ListItem>
                            <asp:ListItem Value="4500">Print (ink jet)</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;
                        <asp:Button ID="btnAddList" runat="server" CssClass="auto-style24" Text="Add to List" Width="109px" OnClick="btnAddList_Click" ValidationGroup="Product" />
                    </td>
                    <td class="auto-style26">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="dropProduct" Display="Dynamic" ErrorMessage="*" ForeColor="#CC0000" InitialValue="0" ValidationGroup="Product"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style36" style="text-align: right">&nbsp;</td>
                    <td class="auto-style29">
                        <asp:TextBox ID="boughtItems" runat="server" Height="117px" TextMode="MultiLine" Width="265px" CssClass="auto-style37" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style27">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="boughtItems" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        Device Prices (SRP):<br />
                        <br />
                        &nbsp;&nbsp; Laptop: 35,500.00<br /> &nbsp;&nbsp; Desktop: 27,500.00<br /> &nbsp;&nbsp; Printer (dot matrix): 5,500.00<br /> &nbsp;&nbsp; Printer (ink jet): 4,500.00</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style49" style="text-align: right"></td>
                    <td class="auto-style43">
                        <asp:Button ID="btnClear" runat="server" Height="33px" OnClick="btnClear_Click" Text="Clear" Width="85px" CausesValidation="False" />
                        <asp:Button ID="btnSubmit" runat="server" CssClass="auto-style10" Height="33px" OnClick="btnSubmit_Click" Text="Submit" Width="93px" />
                    </td>
                    <td class="auto-style26"></td>
                    <td class="auto-style32"></td>
                </tr>
                <tr>
                    <td class="auto-style48" style="text-align: right"></td>
                    <td class="auto-style42">
                        &nbsp;</td>
                    <td class="auto-style25"></td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <div>
        </div>
    </form>
</body>
</html>
