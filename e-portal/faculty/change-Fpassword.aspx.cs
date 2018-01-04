using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_portal.faculty
{
    public partial class change_Fpassword : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Loggedin"] is null || (!(Session["Role"] is null) && Session["Role"].ToString() != "F"))
            {
                Response.Redirect("~/login.aspx");
            }
            // Label3.Text = Menu1.SelectedValue + " -> ";
            Label6.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("faculty-info.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Length >= 8 && TextBox1.Text.Length <= 16 && TextBox2.Text == TextBox1.Text)
            {
                string loginId = Session["Loggedin"].ToString();
                try
                {
                    String s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = s;
                    String queryString = "UPDATE faculty SET pwd=@pwd where login_Id=@id";
                    SqlCommand cmd = new SqlCommand(queryString, con);

                    cmd.Parameters.AddWithValue("@id", loginId);
                    cmd.Parameters.AddWithValue("@pwd", TextBox1.Text);

                    con.Open();
                    int i = cmd.ExecuteNonQuery();
                    con.Close();

                    Label6.Text = "Success";
                    Response.Redirect("faculty-info.aspx?msg=FacultyID+"+loginId+"'s+Password+changed+successfully");
                }
                catch (Exception ex)
                {
                    Label6.Text = ex.ToString();
                    Label6.Visible = true;
                }

            }
            else
            {
                Label6.Visible = true;
            }
        }
    }
}