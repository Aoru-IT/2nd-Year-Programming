<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Alonzo_LongQuiz.WebForm1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel3" runat="server" Font-Names="Bahnschrift" style="margin-left: 275px">
        <h1 style="font-weight: bold; color: #000080; font-style: italic; word-spacing: 0em; letter-spacing: 0.1em;">CLIENT DETAILS</h1>
        <p>
            You may change your Phone Number, Address, and Password through this page.</p>
        <table class="auto-style9">
            <tr>
                <td class="auto-style10" style="width: 400px"><strong style="color: #000080">E-mail Address:
                    <br />
                    <asp:Label ID="lblEmail" runat="server" ForeColor="Black"></asp:Label>
                    <span class="auto-style2">
                    <br />
                    <table class="auto-style11">
                        <tr>
                            <td class="auto-style13" style="width: 140px"><strong><span class="auto-style2">
                                <asp:Label ID="Label1" runat="server" Text="Last Name:"></asp:Label>
                                </span></strong></td>
                            <td class="auto-style15" style="width: 140px"><strong><span class="auto-style2">
                                <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
                                </span></strong></td>
                            <td class="auto-style15" style="width: 122px"><strong><span class="auto-style2">
                                <asp:Label ID="Label3" runat="server" Text="M.I.:"></asp:Label>
                                </span></strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style14" style="width: 140px"><strong>
                                <asp:Label ID="lblLastName" runat="server" ForeColor="Black"></asp:Label>
                                </strong></td>
                            <td class="auto-style16" style="width: 140px"><strong>
                                <asp:Label ID="lblFirstName" runat="server" ForeColor="Black"></asp:Label>
                                </strong></td>
                            <td class="auto-style16" style="width: 122px"><strong>
                                <asp:Label ID="lblMiddleInitial" runat="server" ForeColor="Black"></asp:Label>
                                </strong></td>
                        </tr>
                    </table>
                    Phone No.:<br />
                    <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="mr-0" Width="297px" ForeColor="Black"></asp:TextBox>
                    <br />
                    Address:<br />
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="mr-0" Width="297px" ForeColor="Black"></asp:TextBox>
                    <table class="auto-style11">
                        <tr>
                            <td class="auto-style13" style="width: 140px"><strong><span class="auto-style2">
                                <asp:Label ID="Label4" runat="server" Text="Birthday:"></asp:Label>
                                </span></strong></td>
                            <td class="auto-style15" style="width: 140px"><strong><span class="auto-style2">
                                <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label>
                                </span></strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style14" style="width: 140px"><strong><span class="auto-style2">
                                <asp:Label ID="lblBirthday" runat="server" ForeColor="Black"></asp:Label>
                                </span></strong></td>
                            <td class="auto-style16" style="width: 140px"><strong><span class="auto-style2">
                                <asp:Label ID="lblGender" runat="server" ForeColor="Black"></asp:Label>
                                </span></strong></td>
                        </tr>
                    </table>
                    </span></strong></td>
                <td class="auto-style10"><strong><span class="auto-style2" style="color: #000080">
                    <br />
                    <br />
                    Current Phone Number:<br />
                    <asp:Label ID="lblPhoneNumber" runat="server" ForeColor="Black"></asp:Label>
                    <br />
                    Current Address:<br />
                    <asp:Label ID="lblAddress" runat="server" ForeColor="Black"></asp:Label>
                    </span></strong></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style8" style="width: 400px; height: 45px;">
                    <asp:Panel ID="Panel2" runat="server">
                        <span class="auto-style2" style="color: #000080; font-weight: bolder">Password:<br /> <strong>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ForeColor="Black"></asp:TextBox>
                        </strong></span>
                    </asp:Panel>
                </td>
                <td class="auto-style8" style="height: 45px"><strong style="color: #000080">Current Password:<br /> <span class="auto-style2"><strong><span class="auto-style2" style="color: #000080">
                    <asp:Label ID="lblPassword" runat="server" ForeColor="Black"></asp:Label>
                    </span></strong></span></strong></td>
                <td class="auto-style6" style="height: 45px"></td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="#000099" BorderStyle="None" ForeColor="White" Height="41px" OnClick="Button1_Click" Text="Save Changes" Width="216px" />
        <br />
    </asp:Panel>
</asp:Content>
