using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RentalSoftware.BAL;

namespace RentalSoftware
{
    public partial class AddItem : System.Web.UI.Page
    {
        Item objitem = new Item();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                int i = objitem.InsertItem(TxtItemname.Text, Convert.ToInt32(TxtRentrate.Text), Convert.ToInt32(TxtQuantity.Text));
                if (i > 0)
                {
                    Response.Write("Item Added Succesfully");
                    clear();
                }
                else
                {
                    Response.Write("Item Adding Failed");
                }
            }
            catch(Exception ex)
            {

            }
        }
        public void clear()
        {
            TxtItemname.Text = "";
            TxtRentrate.Text = "";
            TxtQuantity.Text = "";
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("RentalSystem.aspx");
        }
    }
}