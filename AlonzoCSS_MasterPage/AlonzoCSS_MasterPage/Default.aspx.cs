using DataHelper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlonzoCSS_MasterPage
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (DataAccess.SignedIn)
            {
                lblWelcome.Text = Session["firstName"] as String;
            }
            else
            {
                lblWelcome.Text = "";
            }
        }
    }
}