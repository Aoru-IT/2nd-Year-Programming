using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyClassLibrary;

namespace Alonzo_OOPAct3
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataHelper myData = new DataHelper();
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Session["FirstName"] = firstName.Text;
            Session["LastName"] = lastName.Text;
            Session["Birthday"] = birthDay.Text;
            Session["MemberID"] = memberID.Text;

            Session["MemberType"] = dropMemberType.SelectedItem.Text;
            Session["BoughtItems"] = boughtItems.Text;

            myData.Quantity = numOfItems;
            Session["Quantity"] = numOfItems;
           
            myData.MemberTypeDiscount = Double.Parse(dropMemberType.SelectedValue);
            Session["TotalAmount"] = myData.TotalPrice;
            Session["AppliedDiscount"] = myData.processAppliedDiscount();
            Session["GrandTotal"] = myData.processGrandTotal();

            numOfItems = 0;
            myData.TotalPrice = 0;
            Response.Redirect("~/TransactionPage.aspx");
        }

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(firstName.Text) || !string.IsNullOrEmpty(lastName.Text))
            {
                memberID.Text = myData.AccountID(firstName.Text.Substring(0, 1) + lastName.Text.Substring(0, 1));
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            firstName.Text = string.Empty;
            lastName.Text = string.Empty;
            birthDay.Text = string.Empty;
            memberID.Text = string.Empty;
            dropMemberType.SelectedIndex = 0;
            dropProduct.SelectedIndex = 0;
            numOfItems = 0;
            boughtItems.Text = string.Empty;
            myData.TotalPrice = 0;
        }

        static int numOfItems = 0;
        protected void btnAddList_Click(object sender, EventArgs e)
        {
            if (boughtItems.Text == "") {
                boughtItems.Text += dropProduct.SelectedItem.Text + ": " + dropProduct.SelectedValue;
                numOfItems++;
                myData.Price = Double.Parse(dropProduct.SelectedValue);
                myData.processTotalAmount();
             }
            else
            {
                boughtItems.Text += "\n" + dropProduct.SelectedItem.Text + ": " + dropProduct.SelectedValue;
                numOfItems++;
                myData.Price = Double.Parse(dropProduct.SelectedValue);
                myData.processTotalAmount();
            }
            
        }

        protected void dropProduct_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}