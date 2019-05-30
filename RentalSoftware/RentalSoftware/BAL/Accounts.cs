using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using RentalSoftware.DAL;

namespace RentalSoftware.BAL
{
    public class Accounts
    {
        DbConnection db = new DbConnection();
        public DataTable Login(string username,string password)
        {
            string sql = "select * from login_tbl where UserName='" + username + "' and Password='" + password + "'";
            DataTable dt = db.GetData(sql);
            return dt;

        }
    }
}