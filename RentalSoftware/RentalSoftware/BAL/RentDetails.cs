using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using RentalSoftware.DAL;

namespace RentalSoftware.BAL
{
    public class RentDetails
    {
        DbConnection db = new DbConnection();
        public int InsertRentItem(string purchasetno, int itemid, int rate, int quantity)
        {
            string sql = "insert into purchaseitem_tbl(PurchaseTransactionNo,ItemId,Rate,Quantity) values('" + purchasetno + "'," + itemid + "," + rate + "," + quantity + ")";
            int i = db.InsertData(sql);
            return i;
        }
    }
}