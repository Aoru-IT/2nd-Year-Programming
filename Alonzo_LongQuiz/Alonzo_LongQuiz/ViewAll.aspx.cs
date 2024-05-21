using DataHelper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Alonzo_LongQuiz
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        DataAccess myData = new DataAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = myData.ViewAll();
                GridView1.DataBind();
            }
        }
    }
}