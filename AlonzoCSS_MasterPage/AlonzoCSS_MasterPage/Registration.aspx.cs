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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            inpFirstName.Text = string.Empty;
            inpLastName.Text = string.Empty;
            inpEmailAddress.Text = string.Empty;
            dropCustomerType.SelectedIndex = -1;
            inpPassword.Text = string.Empty;
            inpConfirmPassword.Text = string.Empty;
            lblSuccess.Visible = false;
            errorRegistered.Visible = false;
        }

        DataAccess MyData = new DataAccess();
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (DataAccess.CustomerID.Contains(inpEmailAddress.Text))
            {
                errorRegistered.Visible = true;
                lblSuccess.Visible = false;
                return;
            }
            else
            {
                errorRegistered.Visible = false;
                lblSuccess.Visible = true;
            }

            MyData.SaveRecord(inpEmailAddress.Text, inpFirstName.Text, inpLastName.Text, inpPassword.Text, dropCustomerType.SelectedValue);
        }
    }
}