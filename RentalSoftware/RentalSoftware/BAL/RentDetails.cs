using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using RentalSoftware.DAL;

namespace RentalSoftware.BAL
{
    public class RentDetails
    {
        DbConnection db = new DbConnection();
        public int InsertRentItem(string rentno, int custid, int itemid,DateTime sdate,DateTime edate,int price)
        {
            string sql = "insert into rented_tbl(TransactionNo,CustomerId,ItemId,StartDate,EndDate,Price) values ('" + rentno + "'," + custid + "," + itemid + "," + sdate + "," + edate + ",'"+price+"')";
            int i = db.InsertData(sql);
            return i;
        }
        public DataTable GetAllRentDetails()
        {

            string sql = "select * from rented_tbl";
            return db.GetData(sql);

        }
    }
}