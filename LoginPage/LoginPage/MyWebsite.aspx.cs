using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginPage
{
    public partial class MyWebsite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblStudentID.Text = Session["StudentID"] as String;
            lblStudentName.Text = Session["StudentName"] as String;
            lblCourseYrSec.Text = Session["CYS"] as String;
        }
    }
}