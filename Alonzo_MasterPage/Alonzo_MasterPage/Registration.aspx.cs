using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Timers;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using DataHelperArL;
using System.Data.SqlTypes;


namespace Alonzo_OOP
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
            {

            }
            DataAccess MyData = new DataAccess();

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (DataAccess.CustomerID.Contains(inpEmailAddress.Text))
            {
                errorRegistered.Visible = true;
                return;
            }
            else
            {
                errorRegistered.Visible = false;
            }
            MyData.userSignedIn();
            MyData.SaveRecord(inpEmailAddress.Text, inpFirstName.Text, inpLastName.Text, inpPassword.Text, dropCustomerType.SelectedValue);
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            inpFirstName.Text = string.Empty;
            inpLastName.Text = string.Empty;
            inpEmailAddress.Text = string.Empty;
            dropCustomerType.SelectedIndex = -1;
            inpPassword.Text = string.Empty;
            inpConfirmPassword.Text = string.Empty;
            errorRegistered.Visible = false;
        }

        protected void dropCustomerType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}