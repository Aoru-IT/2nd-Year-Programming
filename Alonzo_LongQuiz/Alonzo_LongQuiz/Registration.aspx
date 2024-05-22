<%@ Page Title="" Language="C#" MasterPageFile="~/Initial.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Alonzo_LongQuiz.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel3" runat="server" Font-Names="Bahnschrift" CssClass="auto-style1">
    <h1 style="font-weight: bolder; color: #000080; font-family: Bahnschrift"><em style="letter-spacing: 0.1em">REGISTRATION</em></h1>
    <p>
        Please fill out the required fields.</p>
    <table class="auto-style9">
        <tr>
            <td class="auto-style10" style="width: 472px"><strong style="color: #000080">E-mail Address:
                <br />
                <span class="auto-style2">
                <asp:TextBox ID="txtUserName" runat="server" CssClass="mr-0" Width="297px"></asp:TextBox>
                </span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <span class="auto-style2">
                <asp:Label ID="lblUserError" runat="server" ForeColor="Red" Text="E-mail already exists!" Visible="False"></asp:Label>
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
                        <td class="auto-style14"><strong><span class="auto-style2">
                            <asp:TextBox ID="txtLastName" runat="server" CssClass="mr-0" Width="145px" style="margin-left: 0px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtLastName" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            </span></strong></td>
                        <td class="auto-style16"><strong><span class="auto-style2">
                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="no-gutters" Width="133px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            </span></strong></td>
                        <td class="auto-style16"><strong><span class="auto-style2">
                            <asp:TextBox ID="txtMiddleInitial" runat="server" CssClass="mr-0" Width="49px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtMiddleInitial" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            </span></strong></td>
                        <td style="width: 10px"></td>
                    </tr>
                </table>
                Phone No.:<br />
                <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="mr-0" Width="297px" style="margin-left: 0px"></asp:TextBox>
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
                            <asp:TextBox ID="txtBirthday" runat="server" CssClass="mr-0" Width="145px" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtLastName" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            </span></strong></td>
                        <td class="auto-style16"><strong><span class="auto-style2">
                            <asp:TextBox ID="txtGender" runat="server" CssClass="no-gutters" Width="133px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            </span></strong></td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                </table>
                <asp:Label ID="lblAgeError" runat="server" ForeColor="Red" Text="You must be 18 years or older to proceed" Visible="False"></asp:Label>
                </span></strong></td>
            <td class="auto-style5" style="width: 10px"></td>
        </tr>
        <tr>
            <td class="auto-style3" style="width: 472px"><span class="auto-style2" style="color: #000080; font-weight: bold;">Type:<asp:RadioButtonList ID="radioUserType" runat="server" CellPadding="5" CellSpacing="1" Font-Bold="False" RepeatDirection="Horizontal" Height="36px" Width="189px">
                <asp:ListItem>User</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
                </asp:RadioButtonList>
                <asp:Button ID="Button1" runat="server" BackColor="#000099" BorderStyle="None" CssClass="auto-style7" ForeColor="White" Height="32px" OnClick="Button1_Click" Text="Set Type" Width="150px" />
                &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="radioUserType" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </strong></span></td>
            <td class="auto-style6" style="width: 10px"></td>
        </tr>
        <tr>
            <td class="auto-style8" style="width: 472px">
                <asp:Panel ID="Panel2" runat="server" Visible="False">
                    <span class="auto-style2" style="color: #000080"><strong>Password:</strong><br /> <strong>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <span class="auto-style2" style="color: #000080; font-weight: bold;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </span>
                    </strong></span>
                </asp:Panel>
            </td>
            <td class="auto-style6" style="width: 10px"></td>
        </tr>
    </table>
    <span class="auto-style2">
        <asp:Label ID="lblSuccess" runat="server" Font-Bold="True" ForeColor="#006600" Text="Registered Successfully!" Visible="False"></asp:Label>
        <br />
        <br />
&nbsp;<asp:Button ID="btnClear" runat="server" BackColor="#CC0000" BorderStyle="None" CausesValidation="False" CssClass="auto-style7" ForeColor="White" Height="46px" OnClick="Button3_Click" Text="Clear" Width="150px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnRegister" runat="server" BackColor="#000099" BorderStyle="None" CssClass="auto-style7" ForeColor="White" Height="46px" OnClick="Button2_Click" Text="Register" Visible="False" Width="150px" />
        <br />
    </span>
</asp:Panel>
</asp:Content>
