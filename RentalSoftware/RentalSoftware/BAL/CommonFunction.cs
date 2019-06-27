using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using RentalSoftware.DAL;

namespace RentalSoftware.BAL
{
    public class CommonFunction
    {
        public string GenerateRentTransNo()
        {
            string prefix = "REN";
            Random rand = new Random();
            int random = rand.Next(1, 1000);
            int day = DateTime.Now.Day;
            int Month = DateTime.Now.Month;
            int Year = DateTime.Now.Year;
            return "" + prefix + "" + random + "" + day + "" + Month + "" + Year + "";
        }
        

    }
}