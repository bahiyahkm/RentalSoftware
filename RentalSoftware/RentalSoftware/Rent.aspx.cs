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
    public partial class Rent : System.Web.UI.Page
    {
        RentDetails objrent = new RentDetails();
        protected void Page_Load(object sender, EventArgs e)
        {
            Bind();
        }
        public void Bind()
        {
            DataTable dt = objrent.GetAllRentDetails();
            GridViewRental.DataSource = dt;
            DataBind();

        }

        protected void BtnNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewRent.aspx");
        }

        protected void GridViewRental_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}