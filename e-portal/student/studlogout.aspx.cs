using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_portal.student
{
    public partial class studlogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Loggedin"] is null)
            {
                Response.Redirect("~/login.aspx");
            }
            Session.Remove("Loggedin");
            Session.Remove("Role");
            Response.Redirect("~/login.aspx");
        }
    }
}