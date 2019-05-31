using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RentalSoftware.BAL;

namespace RentalSoftware
{
    public partial class Login1 : System.Web.UI.Page
    {
        
        Accounts objaccount = new Accounts();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = objaccount.Login(TxtUsername.Text, TxtPassword.Text);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("RentalSystem.aspx");
                TxtUsername.Text = " ";
                TxtPassword.Text = "";
            }

            else
            {
                Response.Write("Login Failed");
            }
        }
    }
}