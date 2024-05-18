using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using DataHelper;


namespace Alonzo_Long_Quiz
{
    public partial class Log_In : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataAccess myData = new DataAccess();
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (myData.CheckUser(txtUserName.Text, myData.EncryptData(txtUserPassword.Text)))
            {
                Session["getUserName"] = myData.UserName;
                FormsAuthentication.RedirectFromLoginPage(Session["getUserName"].ToString(), false);
                Response.Redirect("~/Default.aspx");
            }

            
        }
    }
}