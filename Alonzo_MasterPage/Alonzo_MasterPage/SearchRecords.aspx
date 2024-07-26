<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchRecords.aspx.cs" Inherits="Alonzo_OOP.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 80%;
        margin-left: 15px;
    }
    .auto-style2 {
        height: 23px;
        width: 389px;
    }
    .auto-style6 {
        height: 23px;
        width: 125px;
    }
    .auto-style10 {
        height: 22px;
        width: 389px;
    }
    .auto-style11 {
        margin-left: 0px;
    }
    .auto-style12 {
        height: 23px;
        width: 211px;
    }
    .auto-style14 {
        margin-left: 15px;
    }
        .auto-style16 {
            height: 22px;
            width: 137px;
        }
        .auto-style17 {
            height: 22px;
            width: 211px;
        }
        .auto-style18 {
            height: 22px;
            width: 125px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="signInRequired" runat="server" Font-Names="Bahnschrift" ForeColor="#CC0000" Text="Please Sign-In First!" Visible="False"></asp:Label>
    </p>
<asp:Panel ID="Panel1" runat="server" Font-Names="Bahnschrift" GroupingText="Search Records" Width="768px" Visible="False">
    <br />
    <table class="auto-style1" style="text-align: right">
        <tr>
            <td class="auto-style6" style="text-align: left">Enter Email:</td>
            <td class="auto-style12" style="text-align: left">
                <asp:TextBox ID="inpEmail" runat="server" CssClass="auto-style11" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style2" style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inpEmail" Display="Dynamic" ErrorMessage="* " Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="text-align: left"></td>
            <td class="auto-style17" style="text-align: left">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
            </td>
            <td class="auto-style10" style="text-align: left"></td>
        </tr>
        <tr>
            <td class="auto-style18" style="text-align: left">&nbsp;</td>
            <td class="auto-style17" style="text-align: left">&nbsp;</td>
            <td class="auto-style10" style="text-align: left"></td>
        </tr>
        <tr>
            <td class="auto-style18" style="text-align: left">Result:</td>
            <td class="auto-style17" style="text-align: left">
                <asp:Label ID="txtResult0" runat="server"></asp:Label>
            </td>
            <td class="auto-style10" style="text-align: left">&nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style14">
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
    <br />
    <br />
    <br />
</asp:Panel>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>
