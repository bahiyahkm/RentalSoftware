using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RentalSoftware.BAL;

namespace RentalSoftware
{
    public partial class AddCustomer : System.Web.UI.Page
    {
        CustomerDetails objcust = new CustomerDetails();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            try
            {

                int i = objcust.InsertCustomer(TxtCustomername.Text, TxtAddress.Text, TxtPhoneNo.Text, TxtCity.Text, TxtEmail.Text);
                if (i > 0)
                {
                    Response.Write("Customer Added Successfully");
                    clear();
                }
                else
                {
                    Response.Write("Fail to Add Customer");
                }
            }
            catch(Exception ex)
            {
               
            }
        }
        public void clear()
        {
            TxtCustomername.Text = "";
            TxtAddress.Text = "";
            TxtPhoneNo.Text = "";
            TxtCity.Text = "";
            TxtEmail.Text = "";
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {

            Response.Redirect("RentalSystem.aspx");


        }
            
    }
}