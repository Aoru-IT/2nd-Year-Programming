using System;
using System.Collections.Generic;
using System.Configuration.Internal;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginPage
{
    public partial class RegistratioN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (errorCheck())
            {
                return;
            }

            Session["StudentID"] = studentIDInput.Text;
            Session["StudentName"] = studentNameInput.Text;
            Session["CYS"] = studentCYSInput.Text;
            Session["Email"] = emailInput.Text;
            Session["Birthday"] = birthdayInput.Text;
            Session["Password"] = passwordInput.Text;
            Session["ConfirmPassword"] = confirmPassword.Text;

            Response.Redirect("MyLoging.aspx");
        }
        bool errorCheck()
        {
            bool errorDetected = false;
            if (string.IsNullOrEmpty(studentIDInput.Text)) {
                errorStudentID.Text = "Please enter your Student ID";
                errorDetected = true;
            }
            else if (studentIDInput.Text.Any(Char.IsPunctuation) || studentIDInput.Text.Any(Char.IsSymbol) || studentIDInput.Text.Any(Char.IsLetter)) {
                errorStudentID.Text = "Student ID contains letters/special characters.";
                errorDetected = true;
            }
            else {
                errorStudentID.Text = "";
            }



            if (string.IsNullOrEmpty(studentNameInput.Text)) {
                errorStudentName.Text = "Please enter your Name";
                errorDetected = true;
            }
            else if (!studentNameInput.Text.Any(Char.IsDigit) && studentNameInput.Text.Any(Char.IsWhiteSpace)) {
                errorStudentName.Text = "Name contains numbers";
                errorDetected = true;
            }
            else {
                errorStudentName.Text = "";
            }

            if (string.IsNullOrEmpty(studentCYSInput.Text)) {
                errorCYS.Text = "Please enter your Course/Year/Section.";
                errorDetected = true;
            }
            else if (!studentCYSInput.Text.Any(Char.IsLetter) || !studentCYSInput.Text.Any(Char.IsDigit)) {
                errorCYS.Text = "CYS contains special characters";
                errorDetected = true;
            }
            else {
                errorCYS.Text = "";
            }

            if (string.IsNullOrEmpty(emailInput.Text)) {
                errorEmail.Text = "Please enter your Email.";
                errorDetected = true;
            }
            else  {
                errorEmail.Text = "";
            }

            if(string.IsNullOrEmpty(birthdayInput.Text))  {
                errorBirthday.Text = "Please enter your Birthday.";
                errorDetected = true;
            }
            else {
                DateTime birthday = DateTime.Parse(birthdayInput.Text);
                if(DateTime.Now.Subtract(birthday).Days < 6570) {
                    errorBirthday.Text = "User must be 18 Years Old and Above.";
                    errorDetected = true;
                }
                else  {
                    errorBirthday.Text = "";
                }

            }

            if (string.IsNullOrEmpty(passwordInput.Text)) {
                errorPassword.Text = "Please enter your Password";
                errorDetected = true;
            }
            else {
                errorPassword.Text = "";
            }

            if (string.IsNullOrEmpty(confirmPassword.Text)) {
                errorConfirmPassword.Text = "Please Confirm your Password";
                errorDetected = true;
            }
            else if(confirmPassword.Text != passwordInput.Text) {
                errorConfirmPassword.Text = "Passwords don't match.";
                errorDetected = true;
            }
            else {
                errorConfirmPassword.Text = "";
            }
            return errorDetected;
        }
    }
}