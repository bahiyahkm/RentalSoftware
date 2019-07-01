using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace RentalSoftware.DAL
{
    public class DbConnection
    {
        public SqlConnection con;
        public DbConnection() { }
        public SqlConnection GetConnection()
        {
           
                string ConStr = ConfigurationManager.ConnectionStrings["c1"].ToString();

                con = new SqlConnection(ConStr);
                return con;
            
           
        }
        public DataTable GetData(string sql)
        {

            SqlDataAdapter adp = new SqlDataAdapter(sql, GetConnection());
            DataTable dt = new DataTable();
            adp.Fill(dt);
            return dt;
        }
        
        public int InsertData(string sql)
        { 
            SqlCommand cmd = new SqlCommand(sql, GetConnection());
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;

        }
    }
   
   

}
