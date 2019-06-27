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
        Item objitm = new Item();
        CustomerDetails objcust = new CustomerDetails();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Bind();
                CustomerDetails objcust = new CustomerDetails();
                DataTable dt = objcust.GetAllCustomers();
                DataRow row = dt.NewRow();
                Item objitem = new Item();
                DataTable dt_itm = objitem.GetAllItem();
                DataRow row1 = dt_itm.NewRow();
                row1["ItemId"] = 0;
                row1["ItemName"] = "--Select Item--";
                dt_itm.Rows.InsertAt(row1, 0);
                DropDownList1.DataSource = dt_itm;
                DropDownList1.DataTextField = "ItemName";
                DropDownList1.DataValueField = "ItemId";
                DropDownList1.DataBind();

                //DataTable dt_rent = objrent.GetRentToGrid();
                //GridViewRental.DataSource = dt_rent;
                


            }
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int item =Convert.ToInt32(DropDownList1.SelectedValue.ToString());

            DataTable dt = objrent.GetRentToGrid(item);
            GridViewRental.DataSource = dt;
            GridViewRental.DataBind();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
            DataTable dt = objrent.GetNameToGrid(TxtCustomerName.Text);
            GridViewRental.DataSource = dt;
            GridViewRental.DataBind();


        }

        protected void BtnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewReturn.aspx");
        }
    }
}