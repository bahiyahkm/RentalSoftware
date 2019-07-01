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

        protected void GridViewcustomer_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewcustomer.EditIndex = e.NewEditIndex;
            Bind();
        }

        protected void GridViewcustomer_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox txtName = GridViewcustomer.Rows[e.RowIndex].FindControl("Txtcustname") as TextBox;
            TextBox txtAddress = GridViewcustomer.Rows[e.RowIndex].FindControl("Txtcustaddress") as TextBox;
            TextBox txtPhone = GridViewcustomer.Rows[e.RowIndex].FindControl("Txtcustphone") as TextBox;
            TextBox txtCity= GridViewcustomer.Rows[e.RowIndex].FindControl("Txtcustcity") as TextBox;
            TextBox txtEmail= GridViewcustomer.Rows[e.RowIndex].FindControl("Txtcustemail") as TextBox;
            HiddenField hdId = GridViewcustomer.Rows[e.RowIndex].FindControl("hdCustId") as HiddenField;

            string sql = "update customer_tbl set CustomerName='" + txtName.Text + "',CustomerAddress='" + txtAddress.Text + "',CustomerPhoneNo='" + txtPhone.Text +"',CustomerCity='"+txtCity.Text+"',CustomerEmail='"+txtEmail.Text+"' where CustomerId='" + hdId.Value + "'";

            CustomerDetails objcust = new CustomerDetails();
            int i = objcust.UpdateCustomer(sql);
            if (i > 0)
            {
                GridViewcustomer.EditIndex = -1;
                Bind();

            }

        }

        protected void GridViewcustomer_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int CustomerId = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "dlt")
            {
                string sql = "delete from customer_tbl where CustomerId='" + CustomerId + "'";
                CustomerDetails objcust = new CustomerDetails();
                int i = objcust.DeleteCustomer(sql);
                if (i > 0)
                {

                    Bind();

                }
            }
        }

        protected void GridViewcustomer_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}