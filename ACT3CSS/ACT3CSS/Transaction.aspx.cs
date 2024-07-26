using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACT3CSS
{
    public partial class Transaction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblFirstName.Text = Session["FirstName"] as String;
            lblLastName.Text = Session["LastName"] as String;
            lblBirthday.Text = Session["Birthday"] as String;
            lblMemberID.Text = Session["MemberID"] as String;

            lblMemberType.Text = Session["MemberType"] as String;
            lblNumOfItems.Text = Session["Quantity"].ToString();

            int[] bought = (int[]) Session["BoughtItems"];

            if (bought[0] > 0)
            {
                lblBoughtItems.Text += "Laptop: " + bought[0] + "\n";
            }

            if (bought[1] > 0)
            {
                lblBoughtItems.Text += "<br/>Desktop: " + bought[1];
            }

            if (bought[2] > 0)
            {
                lblBoughtItems.Text += "<br/>Printer (dot matrix): " + bought[2];
            }

            if (bought[3] > 0)
            {
                lblBoughtItems.Text += "<br/>Printer (ink jet): " + bought[3];
            }

            lblTotalAmount.Text = Session["TotalAmount"].ToString();
            lblAppliedDiscount.Text = Session["AppliedDiscount"].ToString();
            lblGrandTotal.Text = Session["GrandTotal"].ToString();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
           Response.Redirect("~/Registration.aspx");
        }
    }
}