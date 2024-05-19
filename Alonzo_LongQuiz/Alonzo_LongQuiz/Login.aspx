<%@ Page Title="" Language="C#" MasterPageFile="~/Initial.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Alonzo_LongQuiz.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server">
    <asp:Panel ID="Panel3" runat="server" Font-Names="Bahnschrift SemiBold" style="margin-left: 69px">
        <h1>Log-In</h1>
        <p>
            Welcome! Clicking the Log-In button will direct you to the log-in page.
            <table class="auto-style8">
                <tr>
                    <td class="auto-style4"><strong>E-mail:
                        <br />
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                        <span class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUserName" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </span></strong></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>Password:
                        <br />
                        <asp:TextBox ID="txtUserPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <span class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtUserPassword" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="lblIncorrect0" runat="server" ForeColor="Red" Text="Incorrect Password!" Visible="False"></asp:Label>
                        </span></strong></td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
            </table>
        </p>
        <p>
            <asp:Button ID="btnLogIn0" runat="server" BackColor="#F3C93E" BorderStyle="None" CssClass="btn" ForeColor="White" Height="41px" OnClick="Button1_Click" Text="Log-In" Width="133px" />
        </p>
    </asp:Panel>
    <br />
</asp:Panel>

</asp:Content>
