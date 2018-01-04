using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Security.AccessControl;

namespace e_portal.faculty
{
    public partial class faculty_elibview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Loggedin"] is null || (!(Session["Role"] is null) && Session["Role"].ToString() != "F"))
            {
                Response.Redirect("~/login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string selectedbook = DropDownList1.SelectedValue;


            SqlConnection con = new SqlConnection();
            string st = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            con.ConnectionString = st;
            String queryString = "select server_path,name from book where name=@name";

            SqlCommand cmd = new SqlCommand(queryString, con);
            cmd.Parameters.AddWithValue("@name", selectedbook);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();

            con.Open();
            sda.Fill(ds, "selserverp");
            con.Close();
            string slepath="",slname="";

            foreach(DataRow r in ds.Tables["selserverp"].Rows)
            {
                slepath = r["server_path"].ToString();
                slname = r["name"].ToString();

               
            }

            
            
           

          
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename="+slname+".pdf");
            Response.TransmitFile(Server.MapPath(slepath));
            Response.End();


        }
    }
}