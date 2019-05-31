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
    public partial class ItemDetails : System.Web.UI.Page
    {
        Item objitem = new Item();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                Bind();
                
        }
        public void Bind()
        {
            DataTable dt = objitem.GetAllItem();
            GridViewItem.DataSource = dt;
            DataBind();

            
        }

      

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddItem.aspx");
        }
    }
}