<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="ACT3CSS.Transaction" %>

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
            width: 60%;
            margin-left: 0px;
        }
        .auto-style4 {
            height: 20px;
            width: 189px;
        }
        .auto-style2 {
            height: 20px;
            width: 292px;
        }
        .auto-style18 {
            height: 20px;
        }
        .auto-style6 {
            height: 23px;
            width: 189px;
        }
        .auto-style19 {
            height: 23px;
            width: 292px;
        }
        .auto-style8 {
            height: 22px;
            width: 189px;
        }
        .auto-style20 {
            height: 22px;
            width: 292px;
        }
        .auto-style9 {
            height: 22px;
        }
        .auto-style21 {
            margin-left: 0px;
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


        </ul>
      </div>
    </div>
  </nav>
  <!-- E N D  N A V B A R -->


 <!-- H E R O -->
 <section id="hero">
   <div class="container">
     <div class="row">
       <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
         <img src="images/imagecheck.png" class="img-fluid" alt="Demo image">
       </div>
       <div class="col-md-7 content-box hero-content">
           <span>ORDER SUCCESSFUL!    </span>
         <h1><b>Here are the details:</b></h1>
           <p>
               <table class="auto-style1" id="transactionTable">
                   <tr>
                       <td class="auto-style4" style="padding: 4px;">First Name: </td>
                       <td class="auto-style2" style="padding: 4px;">
                           <asp:Label ID="lblFirstName" runat="server" Font-Bold="True"></asp:Label>
                       </td>
                       <td class="auto-style18"></td>
                   </tr>
                   <tr>
                       <td class="auto-style6" style="padding: 4px;">Last Name:</td>
                       <td class="auto-style19" style="padding: 4px;">
                           <asp:Label ID="lblLastName" runat="server" Font-Bold="True"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style6" style="padding: 4px;">Birthday:</td>
                       <td class="auto-style19" style="padding: 4px;">
                           <asp:Label ID="lblBirthday" runat="server" Font-Bold="True"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style6" style="padding: 4px;">Member&#39;s ID:</td>
                       <td class="auto-style19" style="padding: 4px;">
                           <asp:Label ID="lblMemberID" runat="server" Font-Bold="True"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style8" style="padding: 4px;">Membership Type:</td>
                       <td class="auto-style20" style="padding: 4px;">
                           <asp:Label ID="lblMemberType" runat="server" Font-Bold="True"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style8" style="padding: 4px;">Bought Items:</td>
                       <td class="auto-style20" style="padding: 4px;">
                           <asp:Label ID="lblBoughtItems" runat="server" Font-Bold="True"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style6" style="padding: 4px;">No. of Items:</td>
                       <td class="auto-style19" style="padding: 4px;">
                           <asp:Label ID="lblNumOfItems" runat="server" Font-Bold="True"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style6" style="padding: 4px;"></td>
                       <td class="auto-style19" style="padding: 4px;"></td>
                   </tr>
                   <tr>
                       <td class="auto-style6" style="padding: 4px;">Total Amount:</td>
                       <td class="auto-style19" style="padding: 4px;">
                           <asp:Label ID="lblTotalAmount" runat="server" Font-Bold="True"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style6" style="padding: 4px;">Applied Discount:</td>
                       <td class="auto-style19" style="padding: 4px;">
                           <asp:Label ID="lblAppliedDiscount" runat="server" Font-Bold="True"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style6" style="padding: 4px;">Grand Total:</td>
                       <td class="auto-style19" style="padding: 4px;">
                           <asp:Label ID="lblGrandTotal" runat="server" Font-Bold="True"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style6" style="text-align: right; padding-right: 10px;">&nbsp;</td>
                       <td class="auto-style19">&nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style8" style="text-align: right"></td>
                       <td class="auto-style20"><asp:Button ID="btnClear" runat="server" BackColor="Red" BorderStyle="None" CssClass="auto-style21" Font-Bold="True" ForeColor="White" Height="48px" Text="Return" Width="224px" OnClick="btnClear_Click"/>
                       </td>
                       <td class="auto-style9"></td>
                   </tr>
               </table>
           </p>
        <!-- <a href="#" class="btn btn-regular">Learn more</a> -->
       </div>
     </div>
   </div>
 </section>
 <!-- E N D  H E R O -->



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
 </form> </body>
</html>
