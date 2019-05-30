using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RentalSoftware.BAL;



namespace RentalSoftware
{
    public partial class NewRent : System.Web.UI.Page
    {
        Item objitem = new Item();
        RentDetails objrent = new RentDetails();
        CustomerDetails objcust = new CustomerDetails();
        protected void Page_Load(object sender, EventArgs e)
        {
            CommonFunction objcmn = new CommonFunction();
            TxtRentTransno.Text = objcmn.GenerateRentTransNo();
        }
        public void clear()
        {
            CommonFunction objcmn = new CommonFunction();
            TxtRentTransno.Text = objcmn.GenerateRentTransNo();
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            try
            {
                int i=objrent.
            }
            catch(Exception ex)
            {

            }
        }
    }
}