<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ACT3CSS.WebForm3" MaintainScrollPositionOnPostBack="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

    <!-- Custom Css -->
    <link rel="stylesheet" href="Assets/style.css" type="text/css" />

    <!-- Ionic icons -->
    <link href="https://unpkg.com/ionicons@4.2.0/dist/css/ionicons.min.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">

    <title>The AcCEss shop</title>
    
    <style type="text/css">
        .auto-style1 {
            margin-left: 0;
            margin-bottom: 7;
        }
        .auto-style2 {
            margin-left: 0;
            margin-bottom: 7;
            margin-right: 0;
        }
        .auto-style3 {
            margin-left: 165px;
        }
        .auto-style4 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -ms-flex: 0 0 50%;
            flex: 0 0 50%;
            max-width: 50%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        </style>
    </head>

  <body>
        <form id="form1" runat="server">
  <!-- N A V B A R btn btn-demo-small -->
  <nav class="navbar navbar-default navbar-expand-lg fixed-top custom-navbar">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="icon ion-md-menu"></span>
    </button>
    <img src="images/logo.png" class="img-fluid nav-logo-mobile" alt="Company Logo">
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <div class="container">
      	<img src="images/logo.png" class="img-fluid nav-logo-desktop" alt="Company Logo">
        <ul class="navbar-nav ml-auto nav-right" data-easing="easeInOutExpo" data-speed="1250" data-offset="65">

            <li class="nav-item nav-custom-link">
            <a class="nav-link" href="#testimonials">Member Type</a></li>
         

          <li class="nav-item nav-custom-link">
            <a class="nav-link">|</a></li>

          <li class="nav-item nav-custom-link">
            <a class="nav-link" href="#marketing">Personal Details<i class="icon ion-ios-arrow-forward icon-mobile"></i></a>
            </li>

              
          <li class="nav-item nav-custom-link">
            <a class="nav-link">|</a></li>


          <li class="nav-item nav-custom-link">
            <a class="nav-link" href="#pricing">Devices<i class="icon ion-ios-arrow-forward icon-mobile"></i></a></li>

          <li class="nav-item nav-custom-link">
            <a class="nav-link"></a></li>

          <li class="nav-item nav-custom-link btn btn-demo-small">
            <a class="nav-link" href="#submitorclear">Submit / Clear Input<i class="icon ion-ios-arrow-forward icon-mobile"></i></a></li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- E N D  N A V B A R -->


 <!-- H E R O -->
 <section id="hero" style="background-color: #FFFFFF">
   <div class="container">
     <div class="row">
       <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
         <img src="images/imageshop.png" class="img-fluid" alt="Demo image">
       </div>
       <div class="col-md-7 content-box hero-content">
         <span>Your orders, please.    </span>
         <h1>Get your devices <b>in a snap!</b></h1>
         <p>Scroll down below as we ask for your details.</p>
        <!-- <a href="#" class="btn btn-regular">Learn more</a> -->
       </div>
     </div>
   </div>
 </section>
 <!-- E N D  H E R O -->

 <!-- E N D  M A R K E T I N G -->
  <section id="testimonials">
   <div class="container">
     <div class="title-block">
       <h2>First, your Membership Type</h2>
       <p>Discounts only apply after a minimum order of 3 items(can be 3 of the same device or 3 different devices) </p>
         <p><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="radioMemberType" Display="Dynamic" ErrorMessage="* REQUIRED" Font-Size="Large" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
             </p>
         <asp:RadioButtonList ID="radioMemberType" runat="server" BorderStyle="None" CssClass="auto-style3" Font-Bold="True" Font-Size="X-Large" Height="36px" RepeatDirection="Horizontal" Width="358px">
             <asp:ListItem Value="0.20">Platinum</asp:ListItem>
             <asp:ListItem Value="0.15">Gold</asp:ListItem>
             <asp:ListItem Value="0.12">Silver</asp:ListItem>
         </asp:RadioButtonList>
     </div>
     <div class="row">
       <div class="auto-style4">
         <div class="testimonial-box">
           <div class="row personal-info">
          
             <div class="col-md-10 col-xs-10">
               <h6 style="color: #CCCCCC">
                   Platinum</h6>
               <small>The highest among all member types. The Platinum AcCEss card has a light gray glow and theme and rather features a more premium feel.</small>
             </div>
           </div>
           <p>A 20% deduction on the total amount of purchases. </p>
         </div>
       </div>
       <div class="col-md-6">
         <div class="testimonial-box">
           <div class="row personal-info">

             <div class="col-md-10 col-xs-10">
               <h6 style="color: #FFCC00">
                   Gold</h6>
               <small>The second highest among all member types. The Gold AcCEss card has a metallic yellow glow and theme.</small>
             </div>
           </div>
           <p>A 15% deduction on the total amount of purchases.</p>
         </div>
       </div>
        <div class="col-md-6">
         <div class="testimonial-box">
           <div class="row personal-info">

                 <div class="col-md-10 col-xs-10">
                <h6 style="color: #999999">
                    Silver</h6>
               <small>The third and last of the member types. The Silver AcCEss card has a dark gray glow and theme.</small>
             </div>
           </div>
           <p>A 12% deduction on the total amount of purchases.</p>
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- E N D  M A R K E T I N G -->

 <!-- T E S T I M O N I A L S -->


      <section id="marketing">
  <div class="container">
    <div class="row">
      <div class="col-md-5">
        <div class="content-box">
            <span>Second, some information about you.</span>
          <h3>First Name:<asp:TextBox ID="firstName" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="firstName" Display="Dynamic" ErrorMessage="* Required" Font-Size="Large" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </h3>
            <p>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="firstName" Display="Dynamic" ErrorMessage="First name contains numbers" Font-Size="Large" ForeColor="#CC0000" ValidationExpression="^[^\d]+$" SetFocusOnError="True"></asp:RegularExpressionValidator>
            </p>
            <p>&nbsp;</p>
          <h3>Last Name:<asp:TextBox ID="lastName" runat="server" style="margin-left: 2px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lastName" Display="Dynamic" ErrorMessage="*" Font-Size="Large" ForeColor="#CC0000" SetFocusOnError="True">* Required</asp:RequiredFieldValidator>
            </h3>
            <h3>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="lastName" Display="Dynamic" ErrorMessage="Last name contains numbers" Font-Size="Large" ForeColor="#CC0000" ValidationExpression="^[^\d]+$" SetFocusOnError="True"></asp:RegularExpressionValidator>
            </h3>
            <p>&nbsp;</p>
          <h3>Birthday:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="birthDay" runat="server" style="margin-left: 0px" TextMode="Date" Width="286px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="birthDay" Display="Dynamic" ErrorMessage="* Required" Font-Size="Large" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </h3>
          <h3>Member ID:<asp:TextBox ID="memberID" runat="server" style="margin-left: 2px" ReadOnly="True"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="memberID" Display="Dynamic" ErrorMessage="* Required" Font-Size="Large" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </h3>
            <h3><asp:Button ID="btnGenerate" runat="server" BackColor="Red" BorderStyle="None" CssClass="auto-style2" Font-Bold="True" ForeColor="White" Height="48px" Text="Generate ID" Width="151px" OnClick="btnGenerate_Click" ValidationGroup="Personal" />
            </h3>
            <h3>
                <asp:Label ID="errorGenerate" runat="server" Font-Size="Small" ForeColor="Red" Text="* First Name and Last Name Required for ID Generation!" Visible="False"></asp:Label>
            </h3>
          <p>We'll need to know a few things about you while we also create your <b> Member ID. </b></p>
         
        </div>
      </div>
      <div class="col-md-7">
          <img src="images/myName.png" class="img-fluid" alt="Demo image">
      </div>
    </div>
  </div>
</section>
 <!-- E N D  T E S T I M O N I A L S -->

 <!-- P R I C I N G -->
 <section id="pricing" style="background-color: #f6f8f9">
   <div class="container">
     <div class="title-block">
       <h2>Finally, the Devices.</h2>
       <p>What and how many devices do you need?</p>
     </div>
     <div class="row">
       <div class="col-md-4">
         <div class="pricing-box">
           <h3>1.)</h3>
           <h6>Laptop</h6>
             <div class="divider-light">
                 <asp:TextBox ID="txtLaptop" runat="server" Height="50px" TextMode="Number" Width="310px" style="text-align: center" BorderColor="Red" BorderStyle="Solid" BorderWidth="5px" CssClass="mr-0" Font-Bold="True" Font-Size="X-Large">0</asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtLaptop" Display="Dynamic" ErrorMessage="* Only zero &amp; positive integers allowed." Font-Size="Large" ForeColor="#CC0000" ValidationExpression="^\d+$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                 <br />
             </div>
         </div>
       </div>
       <div class="col-md-4">
         <div class="pricing-box">
           <h3>2.)</h3>
           <h6>Desktop</h6>
           <div class="divider-light">
                 <asp:TextBox ID="txtDesktop" runat="server" Height="50px" TextMode="Number" Width="310px" style="text-align: center" BorderColor="Red" BorderStyle="Solid" BorderWidth="5px" CssClass="mr-0" Font-Bold="True" Font-Size="X-Large">0</asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtDesktop" Display="Dynamic" ErrorMessage="* Only zero &amp; positive integers allowed." Font-Size="Large" ForeColor="#CC0000" ValidationExpression="^\d+$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                 <br />
                 </div>
         </div>
       </div>
       <div class="col-md-4">
         <div class="pricing-box">
           <h3>3.)</h3>
           <h6 style="font-size: 35px">Printer</h6>
             <h6 style="font-size: x-large">(dot matrix)</h6>
           <div class="divider-light">
                 <asp:TextBox ID="txtPrinterDot" runat="server" Height="50px" TextMode="Number" Width="310px" style="text-align: center" BorderColor="Red" BorderStyle="Solid" BorderWidth="5px" CssClass="mr-0" Font-Bold="True" Font-Size="X-Large">0</asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtPrinterDot" Display="Dynamic" ErrorMessage="* Only zero &amp; positive integers allowed." Font-Size="Large" ForeColor="#CC0000" ValidationExpression="^\d+$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                 <br />
                 </div>
         
         </div>
       </div>

                <div class="col-md-4">
         <div class="pricing-box">
           <h3>4.)</h3>
           <h6 style="font-size: 35px">Printer</h6>
             <h6 style="font-size: x-large">(ink jet)</h6>
           <div class="divider-light">
                 <asp:TextBox ID="txtPrinterInk" runat="server" Height="50px" TextMode="Number" Width="310px" style="text-align: center" BorderColor="Red" BorderStyle="Solid" BorderWidth="5px" CssClass="mr-0" Font-Bold="True" Font-Size="X-Large">0</asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtPrinterInk" Display="Dynamic" ErrorMessage="* Only zero &amp; positive integers allowed." Font-Size="Large" ForeColor="#CC0000" ValidationExpression="^\d+$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                 <br />
                 </div>
         </div>
       </div>

     </div>
 
   </div>
 </section>

      <section id="submitorclear">
                <p style="text-align: center; font-size: medium;">Is everything done?</p>
      <p style="text-align: center; font-size: medium;"><asp:Button ID="btnSubmit" runat="server" BackColor="Green" BorderStyle="None" CssClass="auto-style1" Font-Bold="True" ForeColor="White" Height="48px" Text="Submit" Width="594px" OnClick="btnSubmit_Click"/>
          </p>
                <p style="text-align: center; font-size: medium;">&nbsp;</p>
                 <p style="text-align: center; font-size: medium;">Or do you want to clear all inputs?</p>
       <div class="title-block">
&nbsp;<asp:Button ID="btnClear" runat="server" BackColor="Red" BorderStyle="None" CssClass="auto-style1" Font-Bold="True" ForeColor="White" Height="48px" Text="Clear" Width="594px" OnClick="btnClear_Click" CausesValidation="False"/>
           <br />
           </div>
      </section>
 <!-- E N D  C A L L  T O  A C T I O N -->


  <!--  F O O T E R  -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <h5>Seo Ranking</h5>
          <ul>
            <li><a href="#">Pricing</a></li>
            <li><a href="#">Affiliate Program</a></li>
            <li><a href="#">Developer API</a></li>
            <li><a href="#">Support</a></li>
            <li><a href="#">Video Tutorials</a></li>
          </ul>
        </div>
        <div class="col-md-3">
          <h5>Main Tools</h5>
          <ul>
            <li><a href="#">Rank Tracker</a></li>
            <li><a href="#">Backlink Checker</a></li>
            <li><a href="#">Keyword Generator</a></li>
            <li><a href="#">Serp Checker</a></li>
            <li><a href="#">Site Audit</a></li>
          </ul>
        </div>
        <div class="col-md-3">
          <h5>Blog</h5>
          <ul>
            <li><a href="#">Get High Quality Backlinks</a></li>
            <li><a href="#">Top Google Searches</a></li>
            <li><a href="#">Avoid Google Penalties</a></li>
            <li><a href="#">White Hat SEO Tips</a></li>
            <li><a href="#">Google Trends</a></li>
          </ul>
        </div>
        <div class="col-md-3">
          <h5>Company</h5>
          <p>The AcCEss is a page for an activity in Application Development where CSS is applied in activities 3 & 4.</p>
          <p><a href="mailto:sales@theseocompany.com" class="external-links">sales@theseocompany.com</a></p>
        </div>
      </div> 
      <div class="divider"></div>
      <div class="row">
        <div class="col-md-6 col-xs-12">
            <a href="#"><i class="icon ion-logo-facebook"></i></a>
            <a href="#"><i class="icon ion-logo-instagram"></i></a>
            <a href="#"><i class="icon ion-logo-twitter"></i></a>
            <a href="#"><i class="icon ion-logo-youtube"></i></a>
          </div>
          <div class="col-md-6 col-xs-12">
            <small>2018 &copy; All rights reserved. Made by <a href="http://templune.com/" target="blank" class="external-links">Templune</a></small>
          </div>
      </div>
    </div>
  </footer>
  <!--  E N D  F O O T E R  -->
    

    <!-- External JavaScripts -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
  </form>
      </body>
</html>
