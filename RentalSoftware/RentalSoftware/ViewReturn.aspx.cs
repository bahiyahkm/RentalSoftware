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
            int id = Convert.ToInt32(Request.QueryString["id"]);
            hdRentId.Value = id.ToString();
           
            

            TxtCurrentdate.Text = DateTime.Now.ToLongDateString();
            DataTable dt = objrent.GetAllRentDetailsById(id);
            if (dt.Rows.Count > 0)
            {
                TxtEntrydate.Text = dt.Rows[0]["StartDate"].ToString();
                TxtDuedate.Text = dt.Rows[0]["EndDate"].ToString();
                TxtItemprice.Text = dt.Rows[0]["Price"].ToString();
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
         




            string sql = "update rental_tbl set Status=1 where RentId=" + hdRentId.Value + "";
            int i = objrent.UpdateRent(sql);
            if (i > 0)
            {

                Response.Redirect("Rent.aspx");
            }
        }
    }
}