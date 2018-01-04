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
    public partial class faculty_info : System.Web.UI.Page
    {
        
        string s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Loggedin"] is null || (!(Session["Role"] is null) && Session["Role"].ToString() != "F"))
            {
                Response.Redirect("~/login.aspx");
            }
            string loginId = Session["Loggedin"].ToString();
            //Label2.Text = Menu1.SelectedValue;
            Label30.Text = Page.Request.QueryString["msg"];
            SqlConnection con = new SqlConnection();
            con.ConnectionString = s;
            String queryString = "select * from faculty where login_Id=@Id";
            SqlCommand cmd = new SqlCommand(queryString, con);

            cmd.Parameters.AddWithValue("@Id", loginId);
            con.Open();
            SqlDataReader dr = null;
            try
            {
                dr = cmd.ExecuteReader();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
            if (dr.Read())
            {
                Label16.Text = dr["Id"].ToString();
                Label40.Text = dr["login_Id"].ToString();
                Label17.Text = dr["name"].ToString();
                Label19.Text = dr["DOB"].ToString();
                Label27.Text = dr["dept_name"].ToString();
                Label18.Text = dr["email"].ToString();
                Label20.Text = dr["c_no"].ToString();
                Label38.Text = dr["status"].ToString();
                Label22.Text = dr["address"].ToString();
                Label23.Text = dr["city"].ToString();
                Label24.Text = dr["pincode"].ToString();

            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string loginId = Session["Loggedin"].ToString();
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            TextBox4.Visible = true;
            TextBox5.Visible = true;

            Label29.Visible = true;
            Button2.Visible = true;
            Button3.Visible = true;
            Label31.Visible = true;
            Label32.Visible = true;
            Label33.Visible = true;
            Label34.Visible = true;
            Label35.Visible = true;
            Label36.Visible = true;

            Button1.Enabled = false;

            SqlConnection con = new SqlConnection();
            con.ConnectionString = s;
            String queryString = "select * from faculty where login_Id=@Id";
            SqlCommand cmd = new SqlCommand(queryString, con);

            cmd.Parameters.AddWithValue("@Id", loginId);
            con.Open();
            SqlDataReader dr = null;
            try
            {
                dr = cmd.ExecuteReader();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
            if (dr.Read())
            {
                TextBox1.Text = dr["email"].ToString();
                TextBox2.Text = dr["c_no"].ToString();
                TextBox3.Text = dr["address"].ToString();
                TextBox4.Text = dr["city"].ToString();
                TextBox5.Text = dr["pincode"].ToString();
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string loginId = Session["Loggedin"].ToString();
            try
            {
                //String s = WebConfigurationManager.ConnectionStrings["conString"].ConnectionString;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = s;
                String queryString = "UPDATE faculty SET email=@email,address=@address,c_no=@cno,city=@city,pincode=@pincode where login_Id=@id";
                SqlCommand cmd = new SqlCommand(queryString, con);

                cmd.Parameters.AddWithValue("@id", loginId);
                cmd.Parameters.AddWithValue("@email", TextBox1.Text);
                cmd.Parameters.AddWithValue("@cno", TextBox2.Text);
                cmd.Parameters.AddWithValue("@address", TextBox3.Text);
                cmd.Parameters.AddWithValue("@city", TextBox4.Text);
                cmd.Parameters.AddWithValue("@pincode", TextBox5.Text);
                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();

                TextBox1.Visible = false;
                TextBox2.Visible = false;
                TextBox3.Visible = false;
                TextBox4.Visible = false;
                TextBox5.Visible = false;

                Label31.Visible = false;
                Label32.Visible = false;
                Label33.Visible = false;
                Label34.Visible = false;
                Label35.Visible = false;
                Label36.Visible = false;
                Label29.Visible = false;
                Button2.Visible = false;
                Button3.Visible = false;

                Button1.Enabled = true;
                Label29.Text = "Success";
                Response.Redirect("faculty-info.aspx?msg=FacultyId+" + loginId + "'s+Details+Updated+successfully");
            }
            catch (Exception ex)
            {
                Label30error.Text = ex.ToString();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string loginId = Session["Loggedin"].ToString();
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;

            Label29.Visible = false;
            Label31.Visible = false;
            Label32.Visible = false;
            Label33.Visible = false;
            Label34.Visible = false;
            Label35.Visible = false;
            Label36.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;

            Button1.Enabled = true;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}