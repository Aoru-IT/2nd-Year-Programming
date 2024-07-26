<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Alonzo_OOP.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        margin-left: 18px;
    }
    .auto-style3 {
        margin-left: 11px;
        width: 129px;
            height: 18px;
        }
    .auto-style4 {
        margin-left: 12px;
    }
    .auto-style15 {
        height: 26px;
        margin-left: 12px;
        width: 129px;
    }
    .auto-style16 {
        margin-left: 12px;
        width: 129px;
    }
        .auto-style19 {
            width: 147px;
            height: 18px;
        }
        .auto-style20 {
            height: 26px;
            width: 250px;
        }
        .auto-style21 {
            width: 250px;
        }
        .auto-style22 {
            height: 26px;
            width: 147px;
        }
        .auto-style23 {
            width: 147px;
        }
        .auto-style24 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    &nbsp;<asp:Panel ID="Panel1" runat="server" Font-Bold="False" GroupingText="Customer Registration" style="font-size: small" Width="583px" Font-Names="Bahnschrift">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style19" style="color: #FF0000">&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style15" style="text-align: right">First Name:</td>
            <td class="auto-style22">
                <asp:TextBox ID="inpFirstName" runat="server" CssClass="auto-style4"></asp:TextBox>
            </td>
            <td class="auto-style20">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inpFirstName" Display="Dynamic" ErrorMessage="*" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                &nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="inpFirstName" Display="Dynamic" ErrorMessage="First name contains numbers" ForeColor="#CC0000" ValidationExpression="^[^\d]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" style="text-align: right">Last Name:</td>
            <td class="auto-style23">
                <asp:TextBox ID="inpLastName" runat="server" CssClass="auto-style4"></asp:TextBox>
            </td>
            <td class="auto-style21">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inpLastName" Display="Dynamic" ErrorMessage="*" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                &nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="inpLastName" Display="Dynamic" ErrorMessage="Last name contains numbers" ForeColor="#CC0000" ValidationExpression="^[^\d]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" style="text-align: right">Email Address:</td>
            <td class="auto-style23">
                <asp:TextBox ID="inpEmailAddress" runat="server" CssClass="auto-style4" TextMode="Email"></asp:TextBox>
            </td>
            <td class="auto-style21">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="inpEmailAddress" Display="Dynamic" ErrorMessage="*" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                &nbsp;
                <asp:Label ID="errorRegistered" runat="server" Font-Size="Small" ForeColor="#CC0000" Visible="False">E-mail already registered!</asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="text-align: right">Customer Type:</td>
            <td class="auto-style22">
                <asp:DropDownList ID="dropCustomerType" runat="server" CssClass="auto-style4" OnSelectedIndexChanged="dropCustomerType_SelectedIndexChanged">
                    <asp:ListItem>Silver</asp:ListItem>
                    <asp:ListItem>Gold</asp:ListItem>
                    <asp:ListItem>Platinum</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style16" style="text-align: right">Password:</td>
            <td class="auto-style23">
                <asp:TextBox ID="inpPassword" runat="server" CssClass="auto-style4" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style21">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="inpPassword" Display="Dynamic" ErrorMessage="*" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="text-align: right">Confirm Password:</td>
            <td class="auto-style22">
                <asp:TextBox ID="inpConfirmPassword" runat="server" CssClass="auto-style4" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style20">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="inpConfirmPassword" Display="Dynamic" ErrorMessage="*" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                &nbsp;
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="inpConfirmPassword" ControlToValidate="inpPassword" ErrorMessage="Passwords do not match." Font-Names="Bahnschrift" ForeColor="#CC0000"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style23">
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" Width="88px" Height="35px" CssClass="auto-style4" />
            </td>
            <td class="auto-style21">

                <asp:Button ID="btnClear" runat="server" CssClass="auto-style24" Height="35px" Text="Clear" Width="88px" CausesValidation="False" OnClick="btnClear_Click" />

            </td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
        </tr>
    </table>
</asp:Panel>
<p>
</p>
<p>
</p>
</asp:Content>
