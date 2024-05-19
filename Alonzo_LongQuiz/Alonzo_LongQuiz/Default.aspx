<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Alonzo_LongQuiz.WebForm1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <asp:Panel ID="Panel3" runat="server" Font-Names="Bahnschrift SemiBold">
        <h1>Client Details</h1>
        <p>
            You may change your Phone Number, Address, and Password through this page.</p>
        <table class="auto-style9">
            <tr>
                <td class="auto-style10"><strong>E-mail Address:
                    <br />
                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                    <span class="auto-style2">
                    <br />
                    <table class="auto-style11">
                        <tr>
                            <td class="auto-style13"><strong><span class="auto-style2">
                                <asp:Label ID="Label1" runat="server" Text="Last Name:"></asp:Label>
                                </span></strong></td>
                            <td class="auto-style15"><strong><span class="auto-style2">
                                <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
                                </span></strong></td>
                            <td class="auto-style15"><strong><span class="auto-style2">
                                <asp:Label ID="Label3" runat="server" Text="M.I.:"></asp:Label>
                                </span></strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style14"><strong>
                                <asp:Label ID="lblLastName" runat="server"></asp:Label>
                                </strong></td>
                            <td class="auto-style16"><strong>
                                <asp:Label ID="lblFirstName" runat="server"></asp:Label>
                                </strong></td>
                            <td class="auto-style16"><strong>
                                <asp:Label ID="lblMiddleInitial" runat="server"></asp:Label>
                                </strong></td>
                            <td></td>
                        </tr>
                    </table>
                    Phone No.:<br />
                    <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="mr-0" Width="297px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPhoneNumber" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <br />
                    Address:<br />
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="mr-0" Width="297px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtAddress" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <table class="auto-style11">
                        <tr>
                            <td class="auto-style13"><strong><span class="auto-style2">
                                <asp:Label ID="Label4" runat="server" Text="Birthday:"></asp:Label>
                                </span></strong></td>
                            <td class="auto-style15"><strong><span class="auto-style2">
                                <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label>
                                </span></strong></td>
                            <td class="auto-style15"></td>
                        </tr>
                        <tr>
                            <td class="auto-style14"><strong><span class="auto-style2">
                                <asp:Label ID="lblBirthday" runat="server"></asp:Label>
                                </span></strong></td>
                            <td class="auto-style16"><strong><span class="auto-style2">
                                <asp:Label ID="lblGender" runat="server"></asp:Label>
                                </span></strong></td>
                            <td class&nbsp;</td>
                                <td></td>
                        </tr>
                    </table>
                    </span></strong></td>
                <td class="auto-style10"><strong><span class="auto-style2">
                    <br />
                    <br />
                    Current Phone Number:<br />
                    <asp:Label ID="lblPhoneNumber" runat="server" ForeColor="#F3C93E"></asp:Label>
                    <br />
                    Current Address:<br />
                    <asp:Label ID="lblAddress" runat="server" ForeColor="#F3C93E"></asp:Label>
                    </span></strong></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Panel ID="Panel2" runat="server">
                        <span class="auto-style2">Password:<br /> <strong>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong></span>
                    </asp:Panel>
                </td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style6"></td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="#3A4468" BorderStyle="None" ForeColor="White" Height="41px" OnClick="Button1_Click" Text="Save Changes" Width="216px" />
        <br />
        <span class="auto-style2">
        <asp:Label ID="lblSuccess" runat="server" Text="Successfully Registered!" Visible="False"></asp:Label>
        </span>
    </asp:Panel>
</asp:Content>
