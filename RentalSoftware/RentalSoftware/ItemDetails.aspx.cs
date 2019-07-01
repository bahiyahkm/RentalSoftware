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

        protected void GridViewItem_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int ItemId = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "dlt")
            {
                string sql = "delete from item_tbl where ItemId='" + ItemId+ "'";
                Item objItem = new Item();
                int i = objItem.DeleteItem(sql);
                if (i > 0)
                {
                    
                    Bind();

                }
            }
            //if (e.CommandName == "edt")
            //{
            //    GridViewItem.EditIndex = 0;
            //    Bind();

            //}else if (e.CommandName == "update")
            //{
            //    GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
            //    TextBox txtName = row.FindControl("txtEditItemName") as TextBox;
            //    string sql = "update item_tbl set ItemName='" + txtName.Text + "' where ItemId='" + ItemId + "'";
            //    Item objItem = new Item();
            //    int i = objItem.UpdateItem(sql);
            //    if (i > 0)
            //    {
            //        GridViewItem.EditIndex = -1;
            //        Bind();

            //    }

            //}
        }

        protected void GridViewItem_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewItem.EditIndex = e.NewEditIndex;
            Bind();

        }

        protected void GridViewItem_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox txtName = GridViewItem.Rows[e.RowIndex].FindControl("txtEditItemName") as TextBox;
            TextBox txtRate = GridViewItem.Rows[e.RowIndex].FindControl("txtrentrate") as TextBox;
            TextBox txtQty = GridViewItem.Rows[e.RowIndex].FindControl("txtquantity") as TextBox;
            HiddenField hdId = GridViewItem.Rows[e.RowIndex].FindControl("hdItemId") as HiddenField;
            
            string sql = "update item_tbl set ItemName='" + txtName.Text + "',RentRate="+txtRate.Text+",Quantity="+txtQty.Text+" where ItemId='" + hdId.Value + "'";
          
            Item objItem = new Item();
            int i = objItem.UpdateItem(sql);
            if (i > 0)
            {
                GridViewItem.EditIndex = -1;
                Bind();

            }

        }

       
    }
}