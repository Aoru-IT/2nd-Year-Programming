<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Alonzo_OOP.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 78%;
            margin-left: 9px;
        }
        .auto-style6 {
            width: 167px;
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style8 {
            width: 161px;
        }
        .auto-style9 {
            width: 167px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="signInRequired" runat="server" Font-Names="Bahnschrift" ForeColor="#CC0000" Text="Please Sign-In to display Personal Information." Visible="False"></asp:Label>
</p>
    <asp:Panel ID="Panel1" runat="server" Font-Names="Bahnschrift">
        <table class="auto-style2">
            <tr>
                <td class="auto-style9" style="text-align: left; padding-left: 5px;">
                    <asp:Label ID="lblWelcome" runat="server" Font-Bold="True" Font-Names="Bahnschrift" ForeColor="#000099"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9" style="text-align: left; padding-left: 5px;">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9" style="text-align: left; padding-left: 5px;"><strong>Personal Information:</strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="text-align: left; padding-left: 5px;">First Name:</td>
                <td class="auto-style7">
                    <asp:Label ID="lblFirstName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="text-align: left; padding-left: 5px;">Last Name:</td>
                <td>
                    <asp:Label ID="lblLastName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="text-align: left; padding-left: 5px;">Email:</td>
                <td>
                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="text-align: left; padding-left: 5px;">Customer Type:</td>
                <td>
                    <asp:Label ID="lblCustomerType" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="text-align: left; padding-left: 5px;">Password:</td>
                <td>
                    <asp:Label ID="lblPassword" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
