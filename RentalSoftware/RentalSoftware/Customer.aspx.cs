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
    public partial class Customer : System.Web.UI.Page
    {
        CustomerDetails objcust = new CustomerDetails();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                Bind();
                
        }
        public void Bind()
        {
            DataTable dt = objcust.GetAllCustomers();
            GridViewcustomer.DataSource = dt;
            DataBind();
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCustomer.aspx");
        }

        protected void GridViewcustomer_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}