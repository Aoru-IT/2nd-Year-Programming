using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataHelperArL;

namespace Alonzo_OOP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (DataAccess.SignedIn)
            {
                signInRequired.Visible = false;
                Panel1.Visible = true;
                lblWelcome.Text = "Welcome, " + Session["firstName"];

                lblFirstName.Text =  Session["firstName"] as String;
                lblLastName.Text = Session["LastName"] as String;
                lblEmail.Text = Session["Email"] as String;
                lblCustomerType.Text = Session["CustomerType"] as String;
                lblPassword.Text = Session["Password"] as String;
            }
            else
            {
                signInRequired.Visible = true;
                Panel1.Visible = false;
            }
        }
    }
}