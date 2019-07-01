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
        public int InsertRentItem(string rentno, int itemid, int custid, DateTime sdate,DateTime edate,int price)
        {
            string sql = "insert into rental_tbl(TransactionNo,ItemId,CustomerId,StartDate,EndDate,Price) values ('" + rentno + "'," + itemid + "," + custid + ",'" + sdate + "','" + edate + "',"+price+")";
            int i = db.InsertData(sql);
            return i;
        }
        public DataTable GetAllRentDetailsById(int id)
        {

            string sql = "select rental_tbl.RentId, rental_tbl.TransactionNo,item_tbl.ItemName,customer_tbl.CustomerName,rental_tbl.StartDate,rental_tbl.EndDate,rental_tbl.Price from rental_tbl inner join item_tbl on item_tbl.ItemId=rental_tbl.ItemId inner join  customer_tbl on customer_tbl.CustomerId=rental_tbl.CustomerId where rental_tbl.RentId='"+id+"' ";
            return db.GetData(sql);

        }
        public DataTable GetAllRentDetails()
        {
            string sql = "select rental_tbl.RentId, rental_tbl.TransactionNo,item_tbl.ItemName,customer_tbl.CustomerName,rental_tbl.StartDate,rental_tbl.EndDate,rental_tbl.Price from rental_tbl inner join item_tbl on item_tbl.ItemId=rental_tbl.ItemId inner join  customer_tbl on customer_tbl.CustomerId=rental_tbl.CustomerId ";
            return db.GetData(sql);
        }
        public DataTable GetRentToGrid(int itemid)
        {
            string sql= "select  rental_tbl.TransactionNo,item_tbl.ItemName,customer_tbl.CustomerName,rental_tbl.StartDate,rental_tbl.EndDate,rental_tbl.Price from rental_tbl inner join item_tbl on item_tbl.ItemId=rental_tbl.ItemId inner join  customer_tbl on customer_tbl.CustomerId=rental_tbl.CustomerId where rental_tbl.ItemId="+itemid+" ";
            return db.GetData(sql);
        }
        public DataTable GetNameToGrid(string customer)
        {
            string sql = "select  rental_tbl.RentId,rental_tbl.TransactionNo,item_tbl.ItemName,customer_tbl.CustomerName,rental_tbl.StartDate,rental_tbl.EndDate,rental_tbl.Price from rental_tbl inner join item_tbl on item_tbl.ItemId=rental_tbl.ItemId inner join  customer_tbl on customer_tbl.CustomerId=rental_tbl.CustomerId where customer_tbl.CustomerName LIKE '" + customer+"%' ";
            return db.GetData(sql);
        }

        
    }
}