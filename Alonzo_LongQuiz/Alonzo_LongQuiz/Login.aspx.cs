using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using DataHelper;

namespace Alonzo_LongQuiz
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        DataAccess myData = new DataAccess();
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (myData.CheckUser(txtUserName.Text, myData.EncryptData(txtUserPassword.Text)))
            {
                if (myData.Usertype == "User")
                {
                    Session["UserName"] = myData.UserName;
                    Session["Lastname"] = myData.Lastname;
                    Session["Firstname"] = myData.Firstname;
                    Session["MiddleInitial"] = myData.Middleinitial;
                    Session["PhoneNumber"] = myData.Phonenumber;
                    Session["UserAddress"] = myData.Useraddress;
                    Session["Birthday"] = myData.Birthday;
                    Session["Gender"] = myData.Gender;

                    FormsAuthentication.RedirectFromLoginPage(Session["UserName"].ToString(), false);
                    Response.Redirect("~/Default.aspx");
                }

                if (myData.Usertype == "Admin")
                {
                    FormsAuthentication.RedirectFromLoginPage(Session["UserName"].ToString(), false);
                    Response.Redirect("~/ViewAll.aspx");
                }
            }
            else
            {
                Response.Redirect("Registration.aspx");
            }
}
    }
}
