﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Initial.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Alonzo___Final_Exam.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hero_area">
    <header class="header_section">
      <div class="header_bottom">
        <div class="container-fluid">
          <nav class="navbar navbar-expand-lg custom_nav-container ">
            <a class="navbar-brand" href="index.html">
              <span>
               <img src="images/KemTech.png" alt="" class="auto-style2">
              </span>
            </a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class=""> </span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ">
                <li class="nav-item active">
                  <a class="nav-link" href="Login.aspx">Login<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Registration.aspx"> Register</a>
                </li>
                  <li class="nav-item">&nbsp;</li>
              </ul>
            </div>
          </nav>
        </div>
      </div>
    </header>
    <!-- end header section -->

                
    <!-- slider section -->
 <section class="slider_section ">
  <div id="customCarousel1" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <div class="container ">
          <div class="row">
            <div class="col-md-6">
              <div class="detail-box">
                <h1>
                    Login</h1>
                <p>
                    Please fill out the required fields.</p>
                    <table class="auto-style9">
                        <tr>
                            <td class="auto-style10" style="height: 74px; width: 367px;"><strong>Email:
                                <br />
                                <asp:TextBox ID="txtUsername" runat="server" Width="240px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                  <span class="auto-style2">
                                <br />
                                </span>
                                </strong></td>
                            <td class="auto-style5" style="height: 74px"></td>
                        </tr>
                        <tr>
                            <td class="auto-style2" style="width: 367px"><strong>Password:<br />
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="242px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <br />
                  <span class="auto-style2">
                                <asp:Label ID="lblIncorrect" runat="server" ForeColor="Red" Text="Invalid Password, please try again!" Visible="False"></asp:Label>
                                </span>
                                </strong></td>
                            <td class="auto-style6"></td>
                        </tr>
                        </table>
                  <span class="auto-style2">
                      <asp:Button ID="btnLogin" runat="server" BackColor="#3A4468" BorderStyle="None" ForeColor="White" Height="40px" OnClick="Button2_Click" Text="Log-In" Width="115px" />
                                &nbsp;</span></div>
            </div>
            <div class="col-md-6">
              <div class="img-box">
                <img src="images/login.png" alt="">
              </div>
            </div>
          </div>
        </div>
          </div>
      </div>
      </div>
    </section>
</div>
</asp:Content>
