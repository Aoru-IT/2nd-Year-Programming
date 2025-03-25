using DataHelper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Alonzo_LongQuiz
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataAccess myData = new DataAccess();

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (myData.CheckType(txtUserName.Text))
            {
                lblSuccess.Visible = false;
                lblUserError.Visible = true;
                return;
            }

            DateTime birthDate = DateTime.Parse(txtBirthday.Text);
            DateTime today = DateTime.Today;
            int age = today.Year - birthDate.Year;
            if (birthDate.Date > today.AddYears(-age)) age--;

            if (age < 18)
            {
                lblSuccess.Visible = false;
                lblAgeError.Visible = true;
                return;
            }

            lblUserError.Visible = false;
            lblAgeError.Visible = false; 
            lblSuccess.Visible = true;
            myData.SaveNewAccount(txtUserName.Text, txtPassword.Text, txtLastName.Text, txtFirstName.Text, txtMiddleInitial.Text
            , txtPhoneNumber.Text, txtAddress.Text, DateTime.Parse(txtBirthday.Text), txtGender.Text, radioUserType.SelectedItem.Text);

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            txtUserName.Text = String.Empty;
            txtPassword.Text = String.Empty;
            txtLastName.Text = String.Empty;
            txtFirstName.Text = String.Empty;
            txtMiddleInitial.Text = String.Empty;
            txtPhoneNumber.Text = String.Empty;
            txtAddress.Text = String.Empty;
            txtBirthday.Text = String.Empty;
            txtGender.Text = String.Empty;
            radioUserType.SelectedIndex = -1;
            lblSuccess.Visible = false;
            lblUserError.Visible = false;
            lblAgeError.Visible = false;
        }

    }
}