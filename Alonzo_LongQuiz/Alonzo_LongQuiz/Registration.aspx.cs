using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataHelper;

namespace Alonzo_LongQuiz
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataAccess myData = new DataAccess();

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (myData.CheckType(txtUserName.Text))
            {
                lblSuccess.Visible = false;
                lblUserError.Visible = true;
                Panel2.Visible = false;
                btnRegister.Visible = false;
                return;
            }
            lblUserError.Visible = false;
            Panel2.Visible = true;
            btnRegister.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            myData.SaveNewAccount(txtUserName.Text, txtPassword.Text, txtLastName.Text, txtFirstName.Text, txtMiddleInitial.Text
            , txtPhoneNumber.Text, txtAddress.Text, DateTime.Parse(txtBirthday.Text), txtGender.Text, radioUserType.SelectedItem.Text);

        }
    }
}