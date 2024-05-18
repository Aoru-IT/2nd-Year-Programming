<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log-In.aspx.cs" Inherits="Alonzo_Long_Quiz.Log_In" %>

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

  <title>Log-In</title>


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
            width: 36%;
        }
        .auto-style3 {
            width: 308px;
        }
        .auto-style4 {
            width: 311px;
            height: 25px;
        }
        .auto-style5 {
            height: 25px;
            width: 196px;
        }
        .auto-style7 {
            width: 196px;
        }
        .auto-style8 {
            width: 45%;
        }
        .auto-style9 {
            width: 311px;
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
            <a class="navbar-brand" href="HomePage.aspx">
              <span>
              <img src="images/KemTech.png" alt="" class="auto-style3">
              </span>
            </a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class=""> </span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ">
                <li class="nav-item">
                </li>
                <li class="nav-item active">
                  <a class="nav-link"> Log-In <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Registration.aspx">Register</a>
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
                        Log-In</h1>
                    <p>
                      Welcome! Clicking the Log-In button will direct you to the log-in page.
                        <table class="auto-style8">
                            <tr>
                                <td class="auto-style4"><strong>E-mail:
                                    <br />
                                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                                    <span class="auto-style2">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUserName" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </span>
                                    </strong></td>
                                <td class="auto-style5"></td>
                            </tr>
                            <tr>
                                <td class="auto-style9"><strong>Password:
                                    <br />
                                    <asp:TextBox ID="txtUserPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <span class="auto-style2">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtUserPassword" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:Label ID="lblIncorrect" runat="server" ForeColor="Red" Text="Incorrect Password!" Visible="False"></asp:Label>
                                    </span>
                                    </strong></td>
                                <td class="auto-style7">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </p>
                      <p>
                          <asp:Button ID="btnLogIn" runat="server" BackColor="#F3C93E" BorderStyle="None" CssClass="btn" ForeColor="White" Height="41px" OnClick="Button1_Click" Text="Log-In" Width="133px" />
                    </p>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="images/login.png" alt="">
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
         </div>
      </form>
    </body>
</html>
