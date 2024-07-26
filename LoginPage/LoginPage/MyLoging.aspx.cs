using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginPage
{
    public partial class MyLoging : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (ErrorCheck())
            {
                return;
            }

            Response.Redirect("MyWebsite.aspx");
        }
        bool ErrorCheck()
        {
            bool errorDetected = false;
            string username = Session["StudentID"].ToString();
            string password = Session["Password"].ToString();

            if (string.IsNullOrEmpty(userNameInput.Text))
            {
                errorUsername.Text = "Please enter your username.";
                errorDetected = true;
            }   
            else if(username != userNameInput.Text)
            {
                errorUsername.Text = "Invalid username, please try again";
                errorDetected = true;
            }
            else
            {
                errorUsername.Text = "";
            }

            if (string.IsNullOrEmpty (passwordInput.Text))
            {
                errorPassword.Text = "Please enter your password";
                errorDetected = true;
            }
            else if (password != passwordInput.Text) {
                errorPassword.Text = "Invalid password, please try again";
                errorDetected = true;
            }
            else
            {
                errorPassword.Text = "";
            }
            return errorDetected;
        }

    }
}