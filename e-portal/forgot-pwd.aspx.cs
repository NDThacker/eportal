using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_portal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label6.Text = DropDownList1.SelectedValue;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String s = WebConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = s;

            String queryString = "select email,pincode from student where login_Id=@Id";
            if (DropDownList1.SelectedIndex == 1)
                queryString = "select email,pincode from faculty where login_id=@Id";

            SqlCommand cmd = new SqlCommand(queryString, con);

            cmd.Parameters.AddWithValue("@Id", TextBox1.Text);
            con.Open();
            SqlDataReader dr = null;
            try
            {
                dr = cmd.ExecuteReader();
            }
            catch (Exception ex)
            {
                Label3.Text = ex.ToString();
            }

            string eml = "",p = "";
            if (dr.Read())
            {
                eml = dr["email"].ToString();
                p = dr["pincode"].ToString();
            }
            con.Close();

            if(eml.Contains(TextBox2.Text) && p.Contains(TextBox3.Text) && TextBox2.Text!="" && TextBox3.Text != "" && TextBox1.Text != "")
            {
                Panel1.Enabled = false;
                Panel2.Visible = true;
            }
            else
            {
                Label3.Text = "No match found,Please enter Correct value..";
            }
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (TextBox4.Text.Length >= 8 && TextBox4.Text.Length <= 16 && TextBox4.Text == TextBox5.Text)
            {
                try
                {
                    String s = WebConfigurationManager.ConnectionStrings["conString"].ConnectionString;
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = s;

                    String queryString = "UPDATE student SET password=@pwd where login_id=@id";
                    if (DropDownList1.SelectedIndex == 1)
                        queryString = "UPDATE faculty SET pwd=@pwd where login_id=@Id";
                    SqlCommand cmd = new SqlCommand(queryString, con);

                    cmd.Parameters.AddWithValue("@id", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@pwd", TextBox4.Text);

                    con.Open();
                    int i = cmd.ExecuteNonQuery();
                    con.Close();

                    Label3.Text = "password changed successfully..!!";
                }
                catch (Exception ex)
                {
                    Label18.Text = ex.ToString();

                }

            }
            else
            {
                Label3.Text = "both value must be same ,not empty and contain 8 to 16 charactor.";
            }
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("forgot-pwd.aspx");
        }
    }
}