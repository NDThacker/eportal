using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_portal.student
{
    public partial class feev : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Loggedin"] is null || (!(Session["Role"] is null) && Session["Role"].ToString() != "S"))
            {
                Response.Redirect("~/login.aspx");
            }
            Label2.Text = Menu1.SelectedValue;

            string loginID = Session["Loggedin"].ToString();
            try
            {
                String s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = s;
                String queryString = "select * from student where login_Id=@Id";
                SqlCommand cmd = new SqlCommand(queryString, con);

                cmd.Parameters.AddWithValue("@Id", loginID);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                string name = "", year = "", sem = "", dept = "";
                if (dr.Read())
                {
                    name = dr["name"].ToString();
                    year = dr["batch_year"].ToString();
                    sem = dr["sem"].ToString();
                    dept = dr["dept_name"].ToString();
                    //roll = dr["roll_no"].ToString();
                    //Label7.Text = dr["login_Id"].ToString();
                }
                con.Close();

                Label6.Text = dept;
                Label34.Text = dept;

                Label25.Text = name;
                Label53.Text = name;

                Label27.Text = loginID;
                Label55.Text = loginID;

                Label29.Text = sem;
                Label57.Text = sem;
            }
            catch (Exception ex)
            {
                Label59.Text = ex.Message;
            }
        }
    }
}