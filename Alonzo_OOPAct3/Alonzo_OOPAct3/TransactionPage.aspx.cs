using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using MyClassLibrary;

namespace Alonzo_OOPAct3
{
    public partial class TransactionPage : System.Web.UI.Page
    {
        DataHelper myData = new DataHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblFirstName.Text = Session["FirstName"] as String;
            lblLastName.Text = Session["LastName"] as String;
            lblBirthday.Text = Session["Birthday"] as String;
            lblMemberID.Text = Session["MemberID"] as String;

            lblMemberType.Text = Session["MemberType"] as String;
            lblNumOfItems.Text = Session["Quantity"].ToString();
            boughtItems.Text = Session["BoughtItems"] as String;

            lblTotalAmount.Text = Session["TotalAmount"].ToString();
            lblAppliedDiscount.Text =  Session["AppliedDiscount"].ToString();
            lblGrandTotal.Text = Session["GrandTotal"].ToString();
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RegistrationPage.aspx");
        }
    }
}