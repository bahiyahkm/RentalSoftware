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
        public int InsertRentItem(string rentno, int custid, int itemid, DateTime sdate, DateTime edate, int price)
        {
            string sql = "insert into rental_tbl(rental_tbl.TransactionNo,customer_tbl.CustomerId,item_tbl.ItemId,rental_tbl.StartDate,rental_tbl.EndDate,item_tbl.Price)";
            int i = db.InsertData(sql);
            return i;
        }
    }
}