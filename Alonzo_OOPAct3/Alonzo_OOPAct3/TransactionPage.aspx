<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TransactionPage.aspx.cs" Inherits="Alonzo_OOPAct3.TransactionPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 80%;
            margin-left: 30px;
        }
        .auto-style4 {
            height: 20px;
            width: 151px;
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
            width: 151px;
        }
        .auto-style19 {
            height: 23px;
            width: 292px;
        }
        .auto-style8 {
            height: 22px;
            width: 151px;
        }
        .auto-style20 {
            height: 22px;
            width: 292px;
        }
        .auto-style9 {
            height: 22px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Font-Names="Bahnschrift" GroupingText="Transaction Details">
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4" style="text-align: right; padding-right: 10px;">First Name: </td>
                        <td class="auto-style2">
                            <asp:Label ID="lblFirstName" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style18"></td>
                    </tr>
                    <tr>
                        <td class="auto-style6" style="text-align: right; padding-right: 10px;">Last Name:</td>
                        <td class="auto-style19">
                            <asp:Label ID="lblLastName" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6" style="text-align: right; padding-right: 10px;">Birthday:</td>
                        <td class="auto-style19">
                            <asp:Label ID="lblBirthday" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6" style="text-align: right; padding-right: 10px;">Member&#39;s ID:</td>
                        <td class="auto-style19">
                            <asp:Label ID="lblMemberID" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8" style="text-align: right; padding-right: 10px;">Membership Type:</td>
                        <td class="auto-style20">
                            <asp:Label ID="lblMemberType" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8" style="text-align: right; padding-right: 10px;">Bought Items:</td>
                        <td class="auto-style20">
                            <asp:TextBox ID="boughtItems" runat="server" Height="117px" ReadOnly="True" TextMode="MultiLine" Width="280px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6" style="text-align: right">No. of Items:</td>
                        <td class="auto-style19">
                            <asp:Label ID="lblNumOfItems" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6" style="text-align: right"></td>
                        <td class="auto-style19"></td>
                    </tr>
                    <tr>
                        <td class="auto-style6" style="text-align: right; padding-right: 10px;">Total Amount:</td>
                        <td class="auto-style19">
                            <asp:Label ID="lblTotalAmount" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6" style="text-align: right; padding-right: 10px;">Applied Discount</td>
                        <td class="auto-style19">
                            <asp:Label ID="lblAppliedDiscount" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6" style="text-align: right; padding-right: 10px;">Grand Total:</td>
                        <td class="auto-style19">
                            <asp:Label ID="lblGrandTotal" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6" style="text-align: right; padding-right: 10px;">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8" style="text-align: right"></td>
                        <td class="auto-style20">
                            <asp:Button ID="btnReturn" runat="server" Height="33px" Text="Return" Width="85px" OnClick="btnReturn_Click" />
                        </td>
                        <td class="auto-style9"></td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
