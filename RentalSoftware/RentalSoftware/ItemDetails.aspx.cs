using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentalSoftware
{
    public partial class ItemDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
                Bind();
                
        }
        public void Bind()
        {
            DataTable dt = objname.GetAllDetails();
            GridViewItem.DataSource = dt;
            DataBind();

            
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect();
        }
    }
}