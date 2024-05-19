using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataHelper;

namespace Alonzo_LongQuiz
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DataAccess myData = new DataAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblEmail.Text = Session["UserName"] as String;
            lblLastName.Text = Session["Lastname"] as String;
            lblFirstName.Text = Session["Firstname"] as String;
            lblMiddleInitial.Text = Session["MiddleInitial"] as String;
            lblPhoneNumber.Text = Session["PhoneNumber"] as String;
            lblAddress.Text = Session["UserAddress"] as String;
            DateTime Birthday = Convert.ToDateTime(Session["Birthday"]);
            lblBirthday.Text = Birthday.ToString("yyyy-MM-dd");
            lblGender.Text = Session["Gender"] as String;
        }

        protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Session.Abandon();
            FormsAuthentication.SignOut();
            Response.Redirect("~/Log-In.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string address, phonenumber;
            string password = "";
            if (txtAddress.Text == "")
            {
                address = Session["UserAddress"] as String;
            }
            else
            {
                address = txtAddress.Text;
            }
           
            if(txtPassword.Text == "")
            {
                password = Session["Password"] as String;
            }
            else
            {
                password = myData.EncryptData(txtPassword.Text);
            }

            if(txtPhoneNumber.Text == "")
            {
                phonenumber = Session["PhoneNumber"] as String;
            }
            else
            {
                phonenumber = txtPhoneNumber.Text;
            }
            myData.ChangeDetails(Convert.ToString(Session["UserName"]), password, address, phonenumber);
        }
    }
}