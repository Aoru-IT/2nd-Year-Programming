<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchRecords.aspx.cs" Inherits="AlonzoCSS_MasterPage.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                          <section id="hero">
                          <div class="container">
                              <div class="row">
                                  <div class="col-md-5">
                                      <div class="content-box">
                                          <span class="auto-style1">RECORD SEARCH</span>
                                          <h2>Search through Email</h2>
                                          <p>
                                              <asp:Label ID="signInRequired" runat="server" Font-Names="Bahnschrift" ForeColor="#CC0000" Text="Please Log-In first in order to search the records." Visible="False"></asp:Label>
                                          </p>
                                          <p>
                                              <table __designer:mapid="34" id="searchTable">
                                                  <tr __designer:mapid="35">
                                                      <td __designer:mapid="36" class="auto-style6" style="text-align: right; padding-right: 10px; height: 37px;">
                                                          <asp:Label ID="lblEnter" runat="server" Text="Enter e-mail:"></asp:Label>
                                                      </td>
                                                      <td __designer:mapid="37" class="auto-style12" style="text-align: left; height: 37px;">
                                                          <asp:TextBox ID="inpEmail" runat="server" CssClass="auto-style11" Width="180px"></asp:TextBox>
                                                      </td>
                                                      <td __designer:mapid="39" class="auto-style2" style="text-align: left; height: 37px; width: 12px;">
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inpEmail" Display="Dynamic" ErrorMessage="* " Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                                      </td>
                                                  </tr>
                                                  <tr __designer:mapid="3b">
                                                      <td __designer:mapid="3c" class="auto-style18" style="text-align: right; padding-right: 5px;"></td>
                                                      <td __designer:mapid="3d" class="auto-style17" style="text-align: left">
                                                          &nbsp;</td>
                                                      <td __designer:mapid="3f" class="auto-style10" style="text-align: left; width: 12px;"></td>
                                                  </tr>
                                                  <tr __designer:mapid="40">
                                                      <td __designer:mapid="41" class="auto-style18" style="text-align: right; padding-right: 5px;">&nbsp;</td>
                                                      <td __designer:mapid="42" class="auto-style17" style="text-align: left">
                                                          <asp:Button ID="btnSearch" runat="server" BackColor="#004AAD" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="33px" OnClick="Button1_Click" Text="Search" Width="128px" />
                                                      </td>
                                                      <td __designer:mapid="43" class="auto-style10" style="text-align: left; width: 12px;"></td>
                                                  </tr>
                                                  <tr __designer:mapid="40">
                                                      <td __designer:mapid="41" class="auto-style18" style="text-align: right; padding-right: 5px;">&nbsp;</td>
                                                      <td __designer:mapid="42" class="auto-style17" style="text-align: left">&nbsp;</td>
                                                      <td __designer:mapid="43" class="auto-style10" style="text-align: left; width: 12px;">&nbsp;</td>
                                                  </tr>
                                                  <tr __designer:mapid="44">
                                                      <td __designer:mapid="45" class="auto-style18" style="text-align: right; padding-right: 10px; height: 38px;">
                                                          <asp:Label ID="lblResult" runat="server" Text="Result:"></asp:Label>
                                                      </td>
                                                      <td __designer:mapid="46" class="auto-style17" style="text-align: left; height: 38px;">
                                                          <asp:Label ID="txtResult0" runat="server"></asp:Label>
                                                      </td>
                                                      <td __designer:mapid="48" class="auto-style10" style="text-align: left; height: 38px; width: 12px;"></td>
                                                  </tr>
                                              </table>
                                          </p>
                                          <p>
                                              &nbsp;</p>
                                          <p>
                                              <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style14" Width="446px">
                                                  <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                                  <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                                  <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                                  <RowStyle BackColor="White" ForeColor="#003399" />
                                                  <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                                  <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                                  <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                                  <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                                  <SortedDescendingHeaderStyle BackColor="#002876" />
                                              </asp:GridView>
                                          </p>
                                          &nbsp;</div>
                                  </div>
                          
                              </div>
                          </div>
                      </section>
</asp:Content>
