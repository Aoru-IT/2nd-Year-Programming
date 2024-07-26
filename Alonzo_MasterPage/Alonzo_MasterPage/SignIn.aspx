<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Alonzo_OOP.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style25 {
            width: 80%;
            margin-left: 20px;
        }
        .auto-style26 {
            width: 86px;
        }
        .auto-style27 {
            width: 206px;
        }
        .auto-style28 {
            width: 86px;
            height: 26px;
        }
        .auto-style29 {
            width: 194px;
            height: 26px;
        }
        .auto-style30 {
            height: 26px;
        }
        .auto-style31 {
            width: 194px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Font-Names="Bahnschrift" GroupingText="Sign-In Page">
        <br />
        <table class="auto-style25">
            <tr>
                <td class="auto-style26">E-mail:</td>
                <td class="auto-style31">
                    <asp:TextBox ID="txtEmail" runat="server" Width="180px" TextMode="Email"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:Label ID="errorEmail" runat="server" ForeColor="#CC0000" Text="Email is not registered." Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">Password:</td>
                <td class="auto-style29">
                    <asp:TextBox ID="txtPassword" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style30">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:Label ID="errorPassword" runat="server" ForeColor="#CC0000" Text="Incorrect Password" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style31">
                    <asp:Button ID="SignIn" runat="server" Text="Sign-In" OnClick="SignIn_Click" />
                </td>
            </tr>
        </table>
        <br />
    </asp:Panel>
</asp:Content>
