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
    public partial class faculty_studypost : System.Web.UI.Page
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
            if (TextArea1.InnerText != "" && TextBox1.Text != "" && TextBox2.Text != "")
            {
                string constr = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = constr;
                string sqlq = "insert into studypost values(@fac,@content,@branch,@year)";

                SqlCommand cmd = new SqlCommand(sqlq, conn);
                cmd.Parameters.AddWithValue("@fac", Session["Loggedin"].ToString());
                cmd.Parameters.AddWithValue("@content", TextArea1.InnerText);
                cmd.Parameters.AddWithValue("@branch", TextBox1.Text);
                cmd.Parameters.AddWithValue("@year", TextBox2.Text);



                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Label1.Text = "Posted...!";

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            else
            {
                Label1.Text = "Fill up Required Fields..";
            }
        }

        
    }
}