using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;

namespace e_portal.faculty
{
    public partial class facultyview_studypost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Loggedin"] is null || (!(Session["Role"] is null) && Session["Role"].ToString() != "F"))
            {
                Response.Redirect("~/login.aspx");
            }
            string constr = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = constr;
            string sqlq = "select dept_name from faculty where login_id=@id";
            SqlCommand cmd = new SqlCommand(sqlq, conn);
            cmd.Parameters.AddWithValue("@id", Session["Loggedin"]);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();


            try
            {
                conn.Open();
                sda.Fill(ds, "facultybranch");
                conn.Close();
                foreach (DataRow r in ds.Tables["facultybranch"].Rows)
                {
                    Label2.Text = Session["Loggedin"].ToString();
                    Label1.Text = r["dept_name"].ToString();
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }


        }
    }
}