﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EncuestaUH
{
    public partial class R1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bcontinuar_Click(object sender, EventArgs e)
        {
            Persona.R1 = DropDownList1.SelectedValue;
            Response.Redirect("R2.aspx");
        }

       
    }
}