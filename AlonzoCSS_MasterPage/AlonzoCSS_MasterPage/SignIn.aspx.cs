using DataHelper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace AlonzoCSS_MasterPage
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataAccess myData = new DataAccess();
        protected void SignIn_Click(object sender, EventArgs e)
        {
            errorEmail.Visible = false;
            errorPassword.Visible = false;

            if (!DataAccess.CustomerID.Contains(txtEmail.Text))
            {
                errorEmail.Visible = true;
                return;
            }

            if (!Equals(DataAccess.CustomerPassword[DataAccess.CustomerID.IndexOf(txtEmail.Text)], txtPassword.Text))
            {
                errorPassword.Visible = true;
                return;
            }
            int index = DataAccess.CustomerID.IndexOf(txtEmail.Text);
            Session["firstName"] = DataAccess.CustomerFirstName[index];
            Session["LastName"] = DataAccess.CustomerLastName[index];
            Session["Email"] = DataAccess.CustomerID[index];
            Session["CustomerType"] = DataAccess.CustomerType[index];
            Session["Password"] = DataAccess.CustomerPassword[index];
            myData.userSignedIn();
            Response.Redirect("~/Default.aspx");
        }
    }
}