﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentalSoftware
{
    public partial class Control : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"]!=null)
            {
                Label1.Text = "Sorry your session has been expired";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}