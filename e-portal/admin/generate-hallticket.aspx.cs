using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_portal.admin
{
    public partial class generate_hallticket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Loggedin"] is null || (!(Session["Role"] is null) && Session["Role"].ToString() != "A"))
            {
                Response.Redirect("~/login.aspx");
            }
            Label9.Text = DateTime.Now.Year.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && GridView1.SelectedValue != null)
            {
                try
                {
                    String s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = s;
                    String queryString = "insert into Exam (sem,year,sub_code,exam_date) values (@sem,@year,@sub,@edate)";
                    SqlCommand cmd = new SqlCommand(queryString, con);

                    cmd.Parameters.AddWithValue("@sem", DropDownList2.SelectedValue);
                    cmd.Parameters.AddWithValue("@year", DateTime.Now.Year.ToString());
                    cmd.Parameters.AddWithValue("@sub", GridView1.SelectedValue);
                    cmd.Parameters.AddWithValue("@edate", TextBox1.Text);

                    con.Open();
                    int i = cmd.ExecuteNonQuery();
                    con.Close();
                    Label7.Text = GridView1.SelectedValue + " 's exam on : " + TextBox1.Text;
                    GridView3.DataBind();
                }
                catch (Exception ex)
                {
                    Label7.Text = ex.ToString();
                }
            }
            else
            {
                Label7.Text = "please Enter date..";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label6.Visible = true;
            TextBox1.Visible = true;
            Button1.Visible = true;
        }
    }
}