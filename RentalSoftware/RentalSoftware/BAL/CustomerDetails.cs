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
            string sql = "insert into customer_tbl(CustomerName,CustomerAddress,CustomerPhoneNo,CustomerCity,CustomerEmail) values( '" + cname + "','" + caddress + "','" +cphone + "','" + ccity+ "','" + cemail + "')";
            int i = db.InsertData(sql);
            return i;
        }
        public DataTable GetAllCustomers()
        {

            string sql = "select * from customer_tbl";
            return db.GetData(sql);

        }
        public DataTable GetCustomerByName(int CustomerId)
        {
            string sql = "select * from customer_tbl where CustomerId=" + CustomerId + "";
            return db.GetData(sql);
        }
        public DataTable GetCustomerById(int custid)
        {
            string sql = "select * from customer_tbl where CudtomerId=" + custid + "";
            return db.GetData(sql);
        }
       public DataTable GetCustomerDataToGrid()
        {
            string sql = "select * from customer_tbl";
            return db.GetData(sql);
        }
        public DataTable GetNameToGrid(int custid)
        {
            string sql = "select * from customer_tbl where CustomerName=" + custid + "";
            return db.GetData(sql);
        }
    }
}