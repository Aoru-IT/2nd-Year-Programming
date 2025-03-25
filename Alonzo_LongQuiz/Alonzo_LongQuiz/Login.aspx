<%@ Page Title="" Language="C#" MasterPageFile="~/Initial.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Alonzo_LongQuiz.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server">
        <br />
        <br />
    <asp:Panel ID="Panel3" runat="server" Font-Names="Bahnschrift" CssClass="auto-style1">
        <h1><span style="font-weight: bolder; font-family: Bahnschrift; color: #000080;"><em style="letter-spacing: 0.1em">LOG-IN</em></span></h1>
        <p style="font-weight: bold; color: #000080;">
            Welcome!
        </p>
        <p>
            Clicking the Log-In button will direct you to the log-in page.</p>
        <p>
            &nbsp;<table class="auto-style8">
                <tr>
                    <td class="auto-style4" style="width: 93px; color: #000080;"><strong>E-mail:
                        </strong></td>
                    <td class="auto-style5" style="width: 319px"><strong>
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                        <span class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUserName" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </span></strong></td>
                </tr>
                <tr>
                    <td class="auto-style9" style="width: 93px; color: #000080; height: 15px;"><strong>Password:
                        </strong></td>
                    <td class="auto-style7" style="width: 319px; height: 15px;"><strong>
                        <asp:TextBox ID="txtUserPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <span class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtUserPassword" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </span></strong></td>
                </tr>
                <tr>
                    <td class="auto-style9" style="width: 93px">&nbsp;</td>
                    <td class="auto-style7" style="width: 319px"><strong><span class="auto-style2">
                        <asp:Label ID="lblIncorrect0" runat="server" ForeColor="Red" Text="Incorrect Password!" Visible="False"></asp:Label>
                        </span></strong></td>
                </tr>
                <tr>
                    <td class="auto-style9" style="width: 93px">&nbsp;</td>
                    <td class="auto-style7" style="width: 319px">
                        <asp:Button ID="btnLogIn" runat="server" BackColor="#000099" BorderStyle="None" CssClass="btn" Font-Bold="True" ForeColor="White" Height="41px" OnClick="Button1_Click" Text="Log-In" Width="184px" />
                    </td>
                </tr>
            </table>
        </p>
        <p>
            &nbsp;</p>
    </asp:Panel>
    <br />
</asp:Panel>

</asp:Content>
