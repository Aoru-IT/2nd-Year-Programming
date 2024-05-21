﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Alonzo_LongQuiz.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <link rel="icon" href="images/webicon.png" type="image/gif" />
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Registration</title>


  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet"> <!-- range slider -->

  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style2 {
            font-weight: bold;
        }
        .auto-style4 {
            width: 308px;
            height: 62px;
        }
        .auto-style5 {
            width: 286px;
            height: 61px;
            font-weight: bold;
        }
        .auto-style6 {
            height: 57px;
        }
        .auto-style8 {
            width: 491px;
            height: 57px;
            font-weight: bold;
        }
        .auto-style9 {
            font-weight: bold;
            margin-bottom: 0px;
        }
        .auto-style10 {
            width: 491px;
            height: 61px;
        }
        .auto-style11 {
            width: 99%;
        }
        .auto-style13 {
            height: 26px;
            width: 171px;
        }
        .auto-style14 {
            width: 171px;
        }
        .auto-style15 {
            height: 26px;
            width: 162px;
        }
        .auto-style16 {
            width: 162px;
        }
    </style>

</head>

<body>

    <form id="form1" runat="server">

  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="header_bottom">
        <div class="container-fluid">
          <nav class="navbar navbar-expand-lg custom_nav-container ">
            <a class="navbar-brand" href="index.html">
              <span>
              <img src="images/ABC.png" alt="" class="auto-style4">
              </span>
            </a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class=""> </span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav">
                <li class="nav-item ">
                </li>
                <li class="nav-item active">
                  <a class="nav-link" href="Log-In.aspx">Client Details<span class="sr-only">(current)</span></a>
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
                        Client Details</h1>
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
                                            <td class="auto-style13"><strong>
                      <span class="auto-style2">
                                    <asp:Label ID="Label1" runat="server" Text="Last Name:"></asp:Label>
                                    </span>
                                    </strong></td>
                                            <td class="auto-style15"><strong>
                      <span class="auto-style2">
                                    <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
                                    </span>
                                    </strong></td>
                                            <td class="auto-style15"><strong>
                      <span class="auto-style2">
                                    <asp:Label ID="Label3" runat="server" Text="M.I.:"></asp:Label>
                                    </span>
                                    </strong></td>
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
                                            <td class="auto-style13"><strong>
                      <span class="auto-style2">
                                    <asp:Label ID="Label4" runat="server" Text="Birthday:"></asp:Label>
                                    </span>
                                    </strong></td>
                                            <td class="auto-style15"><strong>
                      <span class="auto-style2">
                                    <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label>
                                    </span>
                                    </strong></td>
                                            <td class="auto-style15"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style14"><strong>
                                                <span class="auto-style2">
                                                <asp:Label ID="lblBirthday" runat="server"></asp:Label>
                                    </span>
                                    </strong></td>
                                            <td class="auto-style16"><strong><span class="auto-style2">
                                                <asp:Label ID="lblGender" runat="server"></asp:Label>
                                    </span>
                                    </strong></td>
                                            <td class&nbsp;</td>
                                            <td></td>
                                        </tr>
                                    </table>
                                    </span>
                                    </strong></td>
                                <td class="auto-style10"><strong><span class="auto-style2">
                                    <br />
                                    <br />
                                    Current Phone Number:<br />
                                    <asp:Label ID="lblPhoneNumber" runat="server" ForeColor="#F3C93E"></asp:Label>
                                    <br />
                                    Current Address:<br />
                                    <asp:Label ID="lblAddress" runat="server" ForeColor="#F3C93E"></asp:Label>
                                    </span>
                                    </strong></td>
                                <td class="auto-style5"></td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Panel ID="Panel2" runat="server">
                                        <span class="auto-style2">Password:<br />
                                        <strong>
                                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </strong>
                                        </span>
                                    </asp:Panel>
                                </td>
                                <td class="auto-style8">
                                    &nbsp;</td>
                                <td class="auto-style6"></td>
                            </tr>
                        </table>
                      <br />
                      <asp:Button ID="Button1" runat="server" BackColor="#3A4468" BorderStyle="None" ForeColor="White" Height="41px" OnClick="Button1_Click" Text="Save Changes" Width="216px" />
                      <br />
                      <span class="auto-style2">
                                    <asp:Label ID="lblSuccess" runat="server" Text="Successfully Registered!" Visible="False"></asp:Label>
                                    <br />
                                    <br />
                      <br />
                      <asp:LoginStatus ID="LoginStatus2" runat="server" />
                      <br />
                                    </span>
                     </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="images/registration.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    <h1>
                      Welcome to our shop
                                    
                      Read More
                    </a>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="images/slider-img.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    <h1>
                      Welcome to our shop
                    </h1>
                    <p>
                      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste quam velit saepe dolorem deserunt quo quidem ad optio.
                    </p>
                    <a href="">
                      Read More
                    </a>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="images/slider-img.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- end slider section -->
  </div>




  <!-- footer section -->
  <footer class="footer_section">
    <div class="container">
      <p>
        &copy; <span id="displayYear"></span> All Rights Reserved By
        <a href="https://html.design/">Free Html Templates</a>
      </p>
    </div>
  </footer>
  <!-- footer section -->

  <!-- jQery -->
  <script src="js/jquery-3.4.1.min.js"></script>
  <!-- bootstrap js -->
  <script src="js/bootstrap.js"></script>
  <!-- custom js -->
  <script src="js/custom.js"></script>


    </form>


</body>
</html>
