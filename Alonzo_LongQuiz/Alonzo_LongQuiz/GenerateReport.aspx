<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GenerateReport.aspx.cs" Inherits="Alonzo_LongQuiz.WebForm5" %><%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Font-Names="Bahnschrift SemiBold" CssClass="auto-style1">
    <h1 style="font-family: Bahnschrift; font-weight: bold; font-style: italic; color: #000080; letter-spacing: 0.1em;">REPORT GENERATION</h1>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="1165px">
    </rsweb:ReportViewer>
    <br />
</asp:Panel>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style1 {
        margin-left: 275px;
    }
</style>
</asp:Content>

