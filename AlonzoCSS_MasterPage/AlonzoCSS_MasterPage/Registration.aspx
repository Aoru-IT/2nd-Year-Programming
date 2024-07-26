<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="AlonzoCSS_MasterPage.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            
<section id="hero">
  <div class="container">
    <div class="row">
      <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
        <img src="images/registration.png" class="img-fluid" alt="Demo image">

      </div>
      <div class="col-md-7 content-box hero-content">
          <span class="auto-style1">Registration page</span><h1>Fill the boxes below:</h1>
        <p>
            <table __designer:mapid="f" style="padding: 10px;">
                <tr __designer:mapid="13">
                    <td __designer:mapid="14" class="auto-style15" style="padding: 0px 7px 0px 0px; text-align: right; height: 38px;">First Name:</td>
                    <td __designer:mapid="15" class="auto-style22" style="height: 38px">
                        <asp:TextBox ID="inpFirstName" runat="server" CssClass="auto-style4" style="margin-left: 0px"></asp:TextBox>
                    </td>
                    <td __designer:mapid="17" class="auto-style20" style="height: 38px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inpFirstName" Display="Dynamic" ErrorMessage="*" Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        &nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="inpFirstName" Display="Dynamic" ErrorMessage="First name contains numbers" Font-Size="Medium" ForeColor="#CC0000" ValidationExpression="^[^\d]+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr __designer:mapid="1a">
                    <td __designer:mapid="1b" class="auto-style16" style="padding: 0px 7px 0px 0px; text-align: right; ">Last Name:</td>
                    <td __designer:mapid="1c" class="auto-style23">
                        <asp:TextBox ID="inpLastName" runat="server" CssClass="auto-style4"></asp:TextBox>
                    </td>
                    <td __designer:mapid="1e" class="auto-style21">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inpLastName" Display="Dynamic" ErrorMessage="*" Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        &nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="inpLastName" Display="Dynamic" ErrorMessage="Last name contains numbers" Font-Size="Medium" ForeColor="#CC0000" ValidationExpression="^[^\d]+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr __designer:mapid="1a">
                    <td __designer:mapid="1b" class="auto-style16" style="padding: 0px 7px 0px 0px; text-align: right; ">&nbsp;</td>
                    <td __designer:mapid="1c" class="auto-style23">
                        &nbsp;</td>
                    <td __designer:mapid="1e" class="auto-style21">
                        &nbsp;</td>
                </tr>
                <tr __designer:mapid="21">
                    <td __designer:mapid="22" class="auto-style16" style="padding: 0px 7px 0px 0px; text-align: right; height: 38px;">Email Address:</td>
                    <td __designer:mapid="23" class="auto-style23" style="height: 38px">
                        <asp:TextBox ID="inpEmailAddress" runat="server" CssClass="auto-style4" TextMode="Email"></asp:TextBox>
                    </td>
                    <td __designer:mapid="25" class="auto-style21" style="height: 38px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="inpEmailAddress" Display="Dynamic" ErrorMessage="*" Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        &nbsp;
                        <asp:Label ID="errorRegistered" runat="server" Font-Size="Medium" ForeColor="#CC0000" Visible="False">E-mail already registered!</asp:Label>
                    </td>
                </tr>
                <tr __designer:mapid="28">
                    <td __designer:mapid="29" class="auto-style15" style="padding: 0px 7px 0px 0px; text-align: right; ">Customer Type:</td>
                    <td __designer:mapid="2a" class="auto-style22">
                        <asp:DropDownList ID="dropCustomerType" runat="server" CssClass="auto-style4" Height="30px" style="margin-bottom: 14" Width="148px">
                            <asp:ListItem>Silver</asp:ListItem>
                            <asp:ListItem>Gold</asp:ListItem>
                            <asp:ListItem>Platinum</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td __designer:mapid="2f" class="auto-style20">
                        <br />
                    </td>
                </tr>
                <tr __designer:mapid="28">
                    <td __designer:mapid="29" class="auto-style15" style="padding: 0px 7px 0px 0px; text-align: right; "></td>
                    <td __designer:mapid="2a" class="auto-style22" style="height: 38px">
                    </td>
                    <td __designer:mapid="2f" class="auto-style20" style="height: 38px"></td>
                </tr>
                <tr __designer:mapid="30">
                    <td __designer:mapid="31" class="auto-style16" style="padding: 0px 7px 0px 0px; text-align: right; ">Password:</td>
                    <td __designer:mapid="32" class="auto-style23">
                        <asp:TextBox ID="inpPassword" runat="server" CssClass="auto-style4" TextMode="Password"></asp:TextBox>
                    </td>
                    <td __designer:mapid="34" class="auto-style21">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="inpPassword" Display="Dynamic" ErrorMessage="*" Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr __designer:mapid="36">
                    <td __designer:mapid="37" class="auto-style15" style="padding: 0px 7px 0px 0px; text-align: right; ">Confirm Password:</td>
                    <td __designer:mapid="38" class="auto-style22">
                        <asp:TextBox ID="inpConfirmPassword" runat="server" CssClass="auto-style4" TextMode="Password"></asp:TextBox>
                    </td>
                    <td __designer:mapid="3a" class="auto-style20">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="inpConfirmPassword" Display="Dynamic" ErrorMessage="*" Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        &nbsp;
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="inpConfirmPassword" ControlToValidate="inpPassword" ErrorMessage="Passwords do not match." Font-Size="Medium" ForeColor="#CC0000"></asp:CompareValidator>
                    </td>
                </tr>
                <tr __designer:mapid="36">
                    <td __designer:mapid="37" class="auto-style15" style="padding: 0px 7px 0px 0px; text-align: right; ">&nbsp;</td>
                    <td __designer:mapid="38" class="auto-style22">
                        &nbsp;</td>
                    <td __designer:mapid="3a" class="auto-style20">
                        &nbsp;</td>
                </tr>
                <tr __designer:mapid="3d">
                    <td __designer:mapid="3e" class="auto-style16" style="text-align: right;">&nbsp;</td>
                    <td __designer:mapid="3f" class="auto-style23">
                        <asp:Button ID="btnSave" runat="server" BackColor="#004AAD" BorderStyle="None" CssClass="auto-style4" Font-Size="Medium" ForeColor="White" Height="35px" OnClick="btnSave_Click" Text="Save" Width="142px" />
                    </td>
                    <td __designer:mapid="41" class="auto-style21">
                        <asp:Button ID="btnClear" runat="server" BackColor="#CC0000" BorderStyle="None" CssClass="auto-style4" Font-Size="Medium" ForeColor="White" Height="35px" OnClick="btnClear_Click" Text="Clear" Width="142px" CausesValidation="False" />
                    </td>
                </tr>
                </table>
          </p>
          <table style="width: 67%">
              <tr>
                  <td style="height: 27px; width: 141px"></td>
                  <td style="height: 27px">
                        <asp:Label ID="lblSuccess" runat="server" Font-Size="Medium" Text="REGISTRATION SUCCESSFUL" Visible="False"></asp:Label>
                    </td>
              </tr>
              <tr>
                  <td style="width: 141px">&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
          </table>
        </div>
    </div>
  </div>
</section>
<!-- E N D  H E R O -->

</asp:Content>
