using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using RentalSoftware.DAL;

namespace RentalSoftware.BAL
{
    public class Item
    {
        DbConnection db = new DbConnection();
        public int InsertItem(string itemname, int rentrate, int quantity)
        {
            string sql = "insert into items_tbl(ItemName,RentRate,Quantity) values( '" + itemname + "'," + rentrate + "," + quantity + ")";
            int i = db.InsertData(sql);
            return i;

        }
        public DataTable GetAllItem()
        {
            string sql = "select * from  items_tbl";
            return db.GetData(sql);
        }
        public DataTable GetItemById(int itemid)
        {
            string sql = "select * from items_tbl where ItemId=" + itemid+ "";
            return db.GetData(sql);
        }
    }
}