<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="AlonzoCSS_MasterPage.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- H E R O -->
        
                      <section id="hero">
                          <div class="container">
                              <div class="row">
                                  <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                      <img src="images/login.png" class="img-fluid" alt="Demo image">
                                  </div>
                                  <div class="col-md-7 content-box hero-content">
                                      <span class="auto-style1">Log-IN</span><h1>Welcome, Please<b> Log-In.</b></h1>
                                      <p>&nbsp;</p>
                                      <p>
                                          <table __designer:mapid="10" class="auto-style25">
                                              <tr __designer:mapid="11">
                                                  <td __designer:mapid="12" class="auto-style26" style="padding-right: 5px">E-mail:</td>
                                                  <td __designer:mapid="13" class="auto-style31">
                                                      <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="180px"></asp:TextBox>
                                                  </td>
                                                  <td __designer:mapid="15">
                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                                      <asp:Label ID="errorEmail" runat="server" ForeColor="#CC0000" Text="Email is not registered." Visible="False"></asp:Label>
                                                  </td>
                                              </tr>
                                              <tr __designer:mapid="18">
                                                  <td __designer:mapid="19" class="auto-style28" style="padding-right: 5px">Password:</td>
                                                  <td __designer:mapid="1a" class="auto-style29">
                                                      <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                                                  </td>
                                                  <td __designer:mapid="1c" class="auto-style30">
                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                                      <asp:Label ID="errorPassword" runat="server" ForeColor="#CC0000" Text="Incorrect Password" Visible="False"></asp:Label>
                                                  </td>
                                              </tr>
                                              <tr __designer:mapid="1f">
                                                  <td __designer:mapid="20" class="auto-style26">&nbsp;</td>
                                                  <td __designer:mapid="21" class="auto-style31">
                                                      &nbsp;</td>
                                              </tr>
                                              <tr __designer:mapid="1f">
                                                  <td __designer:mapid="20" class="auto-style26">&nbsp;</td>
                                                  <td __designer:mapid="21" class="auto-style31">
                                                      <asp:Button ID="SignIn" runat="server" BackColor="#004AAD" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="32px" OnClick="SignIn_Click" Text="Sign-In" Width="135px" />
                                                  </td>
                                              </tr>
                                          </table>
                                      </p>
                                      &nbsp;</div>
                              </div>
                          </div>
                      </section>
<!-- E N D  H E R O -->

</asp:Content>
