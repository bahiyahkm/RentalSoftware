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
    public partial class ViewReturn : System.Web.UI.Page
    {
        RentDetails objrent = new RentDetails();

        protected void Page_Load(object sender, EventArgs e)
        {
            TxtCurrentdate.Text = DateTime.Now.ToLongDateString();
            // TxtEntrydate.Text =objrent.GetAllRentDetails()
            DataTable dt = objrent.GetAllRentDetails();
            if (dt.Rows.Count > 0)
            {
                TxtEntrydate.Text = dt.Rows[0]["StartDate"].ToString();
            }
            DataTable dt_due = objrent.GetAllRentDetails();
            if (dt_due.Rows.Count > 0)
            {
                TxtDuedate.Text = dt_due.Rows[0]["EndDate"].ToString();
            }
            DataTable dt_price = objrent.GetAllRentDetails();
            if (dt_price.Rows.Count > 0)
            {
                TxtItemprice.Text = dt_price.Rows[0]["Price"].ToString();
            }
            DateTime firtsDate = Convert.ToDateTime(TxtCurrentdate.Text);
            DateTime secondDate = Convert.ToDateTime(TxtEntrydate.Text);
            TimeSpan diffresult = firtsDate.Subtract(secondDate);
            Lblcurrentdate.Text = Convert.ToInt32(diffresult.TotalDays).ToString();
            Lblprice.Text =TxtItemprice.Text;
            int due = Convert.ToInt32(Lblcurrentdate.Text) * Convert.ToInt32(TxtItemprice.Text);
                 TxtDueamount.Text = due.ToString();
               


        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            Lblstatus.Text = "Returned the item"; 
            
        }
    }
}