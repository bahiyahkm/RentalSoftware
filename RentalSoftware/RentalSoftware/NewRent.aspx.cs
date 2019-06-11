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
    public partial class NewRent : System.Web.UI.Page
    {
        Item objitem = new Item();
        RentDetails objrent = new RentDetails();
        CustomerDetails objcust = new CustomerDetails();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               
            CommonFunction objcmn = new CommonFunction();
            TxtRentTransno.Text = objcmn.GenerateRentTransNo();
            CustomerDetails objcust = new CustomerDetails();
            DataTable dt = objcust.GetAllCustomers();
            DataRow row = dt.NewRow();
            row["CustomerId"] = 0;
            row["CustomerName"] = "--Select Customer--";
            dt.Rows.InsertAt(row, 0);
            DropDownList2.DataSource = dt;
                DropDownList2.DataTextField = "CustomerName";
            DropDownList2.DataValueField="CustomerId";
            DropDownList2.DataBind();
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

                
            }
        }
        

       

        public void clear()
        {
            CommonFunction objcmn = new CommonFunction();
            TxtRentTransno.Text = objcmn.GenerateRentTransNo();
            DropDownList1.Text = "-----Select ItemName-------";
            DropDownList2.Text = "------Select CustomerName-----";
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            try
            {

                int Itemid = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
                DataTable dt = objitem.GetItemById(Itemid);
                if (dt.Rows.Count > 0)
                {
                    Lblitem.Text = dt.Rows[0]["RentRate"].ToString();
                }
                int CustId = Convert.ToInt32(DropDownList2.SelectedValue.ToString());

                int i = objrent.InsertRentItem(TxtRentTransno.Text, Itemid, CustId, Convert.ToDateTime(TxtStart.Text), Convert.ToDateTime(TxtEnd.Text), Convert.ToInt32(Lblitem.Text));
                if (i > 0)
                {
                    Response.Write("Data Added Succesfully");
                    clear();
                }
                else
                {
                    Response.Write("Failed to add Data");
                }
            }
            catch(Exception ex)
            {
                
            }

                       
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("RentalSystem.aspx");
        }
    }
}