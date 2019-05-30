using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using RentalSoftware.DAL;

namespace RentalSoftware.BAL
{
    public class CustomerDetails
    {
        DbConnection db = new DbConnection();
        public int InsertCustomer(string cname, string caddress, string cphone, string ccity, string cemail)
        {
            string sql = "insert into customers_tbl(CustomerName,CustomerAddress,CustomerPhoneNo,CustomerCity,CustomerEmail) values( '" + cname + "','" + caddress + "','" +cphone + "','" + ccity+ "','" + cemail + "')";
            int i = db.InsertData(sql);
            return i;
        }
        public DataTable GetAllCustomers()
        {

            string sql = "select * from customer_tbl";
            return db.GetData(sql);

        }
    }
}