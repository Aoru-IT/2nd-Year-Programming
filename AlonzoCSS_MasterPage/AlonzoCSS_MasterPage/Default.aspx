<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AlonzoCSS_MasterPage.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            
<section id="hero">
  <div class="container">
    <div class="row">
      <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
        <img src="images/database.png" class="img-fluid" alt="Demo image">

      </div>
      <div class="col-md-7 content-box hero-content">
          <span class="auto-style1">HOME</span><h1>Welcome
              <asp:Label ID="lblWelcome" runat="server" Font-Bold="True" Font-Names="Bahnschrift" ForeColor="#000099"></asp:Label>
              to the <b>Records</b></h1>
        <p>Navigate and use the website through the navigation menu in the top-right.</p>
&nbsp;</div>
    </div>
  </div>
</section>
<!-- E N D  H E R O -->

</asp:Content>
