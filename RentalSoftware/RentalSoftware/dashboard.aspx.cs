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
    public partial class dashboard : System.Web.UI.Page
    {
        CustomerDetails objcust = new CustomerDetails();
        Item objitem = new Item();
        protected void Page_Load(object sender, EventArgs e)
        {

            DataTable dt = objcust.GetAllCustomers();
            Label1.Text = dt.Rows.Count.ToString();

            DataTable dt_itm = objitem.GetAllItem();
            Label2.Text = dt_itm.Rows.Count.ToString();

        }
    }
}