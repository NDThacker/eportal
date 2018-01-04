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

namespace e_portal.student
{
    public partial class stud_studypost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Loggedin"] is null || (!(Session["Role"] is null) && Session["Role"].ToString() != "S"))
            {
                Response.Redirect("~/login.aspx");
            }
            Label2.Text = Menu1.SelectedValue;

            string constr = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = constr;
            string sqlq="select batch_year,dept_name from student where login_id=@id";
            SqlCommand cmd = new SqlCommand(sqlq, conn);
            cmd.Parameters.AddWithValue("@id", Session["Loggedin"]);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();


            try
            {
                conn.Open();
                sda.Fill(ds, "StudentBatchyear");
                conn.Close();
                foreach(DataRow r in ds.Tables["StudentBatchyear"].Rows)
                {
                    Label3.Text = r["batch_year"].ToString();
                    Label4.Text = r["dept_name"].ToString();
                }

            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }



        }
    }
}