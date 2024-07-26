using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using DataHelper;

namespace ACT3CSS
{
    public partial class WebForm3 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        DataAccess myData = new DataAccess();

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(firstName.Text) || string.IsNullOrEmpty(lastName.Text))
            {
                errorGenerate.Visible = true;
                return;
            }
            else
            {
                errorGenerate.Visible = false;
            }

            memberID.Text = myData.AccountID(firstName.Text.Substring(0, 1) + lastName.Text.Substring(0, 1));
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Page.Validate("Personal");
            Session["FirstName"] = firstName.Text;
            Session["LastName"] = lastName.Text;
            Session["Birthday"] = birthDay.Text;
            Session["MemberID"] = memberID.Text;

            Session["MemberType"] = radioMemberType.SelectedItem.Text;

            int numOfItems = Int32.Parse(txtDesktop.Text) + Int32.Parse(txtLaptop.Text) + Int32.Parse(txtPrinterInk.Text) + Int32.Parse(txtPrinterDot.Text);
            myData.Quantity = numOfItems;
            Session["Quantity"] = numOfItems;

            int[] bought = {Int32.Parse(txtDesktop.Text), Int32.Parse(txtLaptop.Text), Int32.Parse(txtPrinterInk.Text), Int32.Parse(txtPrinterDot.Text) };

            Session["BoughtItems"] = bought;

            myData.MemberTypeDiscount = Double.Parse(radioMemberType.SelectedValue);
            Session["TotalAmount"] = myData.processTotalAmount(Int32.Parse(txtDesktop.Text),Int32.Parse(txtLaptop.Text), Int32.Parse(txtPrinterInk.Text), Int32.Parse(txtPrinterDot.Text));
            Session["AppliedDiscount"] = myData.processAppliedDiscount();
            Session["GrandTotal"] = myData.processGrandTotal();

            Response.Redirect("~/Transaction.aspx");



        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            firstName.Text = string.Empty;
            lastName.Text = string.Empty;
            birthDay.Text = string.Empty;
            memberID.Text = string.Empty;
            radioMemberType.SelectedIndex = -1;
            txtLaptop.Text = "0";
            txtDesktop.Text = "0";
            txtPrinterDot.Text = "0";
            txtPrinterInk.Text = "0";   
        }
    } 
    }
