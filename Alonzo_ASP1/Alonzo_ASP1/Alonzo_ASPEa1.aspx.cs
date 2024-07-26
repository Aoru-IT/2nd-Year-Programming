using System;
using System.EnterpriseServices.Internal;
using System.Linq;
using System.Web.UI.WebControls;

namespace Alonzo_ASP1
{
    public partial class Alonzo_ASPEa1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["Returnee"]))
            {
                idInput.Text = Session["StudentID"].ToString();
                nameInput.Text = Session["StudentName"].ToString();
                courseList.SelectedIndex = Convert.ToInt32(Session["CourseIndex"]);
                enrolledUnits.Text = Session["UnitsEnrolled"].ToString();
                downPaymentList.SelectedIndex = Convert.ToInt32(Session["DownPayment"]);
                Session["Returnee"] = false;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(ErrorDetection())
            {
                return;
            }

            Session["StudentID"] = idInput.Text;
            Session["StudentName"] = nameInput.Text;
            Session["Course"] = courseList.SelectedItem.Text;
            Session["CourseIndex"] = courseList.SelectedIndex;
            Session["UnitsEnrolled"] = enrolledUnits.Text;
            Session["DownPayment"] = downPaymentList.SelectedIndex;

            Response.Redirect("~/OutputPage.aspx");
        }
    
        bool ErrorDetection()
        {
            bool errorDetected = false;
            if (string.IsNullOrEmpty(idInput.Text))
            {
                studentIDError.Text = "Please enter your Student ID.";
                errorDetected = true;
            }
            else if(idInput.Text.Any(ch => !char.IsDigit(ch)))
            {
                studentIDError.Text = "Student ID entered has letters/special characters!";
                errorDetected = true;
            }
            else
            {
                studentIDError.Text = "";
            }

            if (string.IsNullOrEmpty(nameInput.Text))
            {
                nameError.Text = "Please enter your name.";
                errorDetected = true;
            }
            else if (nameInput.Text.Any(ch => !char.IsLetter(ch) && !char.IsWhiteSpace(ch)))
            {
                nameError.Text = "Name entered contains numbers/special characters!";
                errorDetected = true;
            }
            else
            {
                nameError.Text = "";
            }

            if (string.IsNullOrEmpty(enrolledUnits.Text))
            {
                unitsError.Text = "Please enter # of units enrolled.";
                errorDetected = true;
            }
            else if(enrolledUnits.Text.Any(ch => !char.IsDigit(ch)))
            {
                unitsError.Text = "Units entered contains letters/special characters!";
                errorDetected = true;
            }
            else if (Int32.Parse(enrolledUnits.Text) > 24)
            {
                unitsError.Text = "Units has exceeded!";
                errorDetected = true;
            }
            else
            {
                unitsError.Text = "";
            }

            if (courseList.SelectedIndex == 0)
            {
                courseNotSelected.Visible = true;
                errorDetected = true;
            }
            else
            {
                courseNotSelected.Visible = false;  
            }

            if (downPaymentList.SelectedIndex == -1)
            { 
                downPaymentNotSelected.Visible = true;
                errorDetected = true;
            }
            else
            {
                downPaymentNotSelected.Visible = false;     
            }

            return errorDetected;
        }

        protected void clearAll_Click(object sender, EventArgs e)
        {
            idInput.Text = "";
            nameInput.Text = "";
            courseList.SelectedIndex = 0;
            enrolledUnits.Text = "";
            downPaymentList.SelectedIndex = -1;

            studentIDError.Text = "";
            nameError.Text = "";
            courseNotSelected.Visible = false;
            unitsError.Text = "";
            courseNotSelected.Visible = false;
            downPaymentNotSelected.Visible = false;

            Session["StudentID"] = null;
            Session["StudentName"] = null;
            Session["Course"] = null;
            Session["CourseIndex"] = null;
            Session["UnitsEnrolled"] = null;
            Session["DownPayment"] = null;
            Session["Returnee"] = false;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void unitsExceeded_TextChanged(object sender, EventArgs e)
        {

        }

        protected void courseList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


    }
}