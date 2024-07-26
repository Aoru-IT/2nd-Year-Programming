using DataHelperArL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataHelperArL;

namespace Alonzo_OOP
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        DataAccess MyData = new DataAccess();
        DataTable MyDataTable = new DataTable();


        bool signedIn = false;
        protected void Page_Load(object sender, EventArgs e)
        { 
            if (DataAccess.SignedIn)
            {
                Panel1.Visible = true;
                signInRequired.Visible = false;
            }
            else
            {
                signInRequired.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DataAccess.CustomerID.Contains(inpEmail.Text))
            {
                int index = DataAccess.CustomerID.IndexOf(inpEmail.Text);

                txtResult0.Text = "User Found!";
                MyDataTable.Columns.Add("User Name", typeof(string));
                MyDataTable.Columns.Add("Client First Name", typeof(string));
                MyDataTable.Columns.Add("Client Last Name", typeof(string));
                MyDataTable.Columns.Add("Client Password", typeof(string));
                MyDataTable.Columns.Add("Client Type", typeof(string));

                MyDataTable.Rows.Add(DataAccess.CustomerID[index].ToString(),
                DataAccess.CustomerFirstName[index].ToString(),
                DataAccess.CustomerLastName[index].ToString(),
                DataAccess.CustomerPassword[index].ToString(),
                DataAccess.CustomerType[index].ToString());

                GridView1.DataSource = MyDataTable;
                GridView1.DataBind();
            }
            else
            {
                txtResult0.Text = "User not Found!";
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
        }
    }
}