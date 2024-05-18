<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Alonzo_Long_Quiz.Registration" %>

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
        .auto-style3 {
            width: 491px;
            height: 57px;
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
        .auto-style7 {
            display: inline-block;
            font-weight: 400;
            color: #212529;
            text-align: center;
            vertical-align: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            font-size: 1rem;
            line-height: 1.5;
            border-radius: 0.25rem;
            transition: none;
            outline-width: medium;
            outline-style: none;
            outline-color: invert;
            -webkit-box-shadow: none;
            box-shadow: none;
            border: 1px solid transparent;
            background-color: transparent;
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
              <img src="images/KemTech.png" alt="" class="auto-style4">
              </span>
            </a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class=""> </span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav">
                <li class="nav-item ">
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Log-In.aspx"> Log-In</a>
                </li>
                <li class="nav-item active">
                  <a class="nav-link" href="Registration.aspx">Register<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  &nbsp;</li>
                <li class="nav-item">
                  &nbsp;</li>
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
                        Registration
                    </h1>
                    <p>
                        Please fill out the required fields.</p>
                        <table class="auto-style9">
                            <tr>
                                <td class="auto-style10"><strong>E-mail Address:
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
                      <span class="auto-style2">
                                    <asp:TextBox ID="txtLastName" runat="server" CssClass="mr-0" Width="145px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtLastName" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </span>
                                    </strong></td>
                                            <td class="auto-style16"><strong>
                      <span class="auto-style2">
                                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="no-gutters" Width="139px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </span>
                                    </strong></td>
                                            <td class="auto-style16"><strong>
                      <span class="auto-style2">
                                    <asp:TextBox ID="txtMiddleInitial" runat="server" CssClass="mr-0" Width="49px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtMiddleInitial" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </span>
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
                                    <asp:TextBox ID="txtBirthday" runat="server" CssClass="mr-0" Width="145px" TextMode="Date"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtLastName" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </span>
                                    </strong></td>
                                            <td class="auto-style16"><strong>
                      <span class="auto-style2">
                                    <asp:TextBox ID="txtGender" runat="server" CssClass="no-gutters" Width="139px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </span>
                                    </strong></td>
                                            <td class="auto-style16">&nbsp;</td>
                                            <td></td>
                                        </tr>
                                    </table>
                                    </span>
                                    </strong></td>
                                <td class="auto-style5"></td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><span class="auto-style2">Type:<asp:RadioButtonList ID="radioUserType" runat="server" CellPadding="5" CellSpacing="1" Font-Bold="False" RepeatDirection="Horizontal" Height="36px" Width="189px">
                                    <asp:ListItem>User</asp:ListItem>
                                    <asp:ListItem>Admin</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:Button ID="Button1" runat="server" BackColor="#F3C93E" BorderStyle="None" CssClass="auto-style7" ForeColor="White" Height="32px" OnClick="Button1_Click" Text="Set Type" Width="108px" />
                                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="radioUserType" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </strong>
                                    </span></td>
                                <td class="auto-style6"></td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Panel ID="Panel2" runat="server" Visible="False">
                                        <span class="auto-style2">Password:<br />
                                        <strong>
                                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                                        </strong>
                                        </span>
                                    </asp:Panel>
                                </td>
                                <td class="auto-style6"></td>
                            </tr>
                        </table>
                      <span class="auto-style2">
                                    <asp:Button ID="btnRegister" runat="server" BackColor="#F3C93E" BorderStyle="None" CssClass="auto-style7" ForeColor="White" Height="46px" OnClick="Button2_Click" Text="Register" Width="149px" Visible="False" />
                                    &nbsp;<br />
                      <asp:Label ID="lblSuccess" runat="server" Text="Successfully Registered!" Visible="False"></asp:Label>
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
