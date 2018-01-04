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
    public partial class admin_info : System.Web.UI.Page
    {

        
        String s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Loggedin"] is null || (!(Session["Role"] is null) && Session["Role"].ToString()!="A"))
            {
                Response.Redirect("~/login.aspx");
            }
            String loginID = Session["Loggedin"].ToString();
            //Label2.Text = Menu1.SelectedValue;
            Label30.Text = Page.Request.QueryString["msg"];
            SqlConnection con = new SqlConnection();
            con.ConnectionString = s;
            String queryString = "select * from admin where login_Id=@Id";
            SqlCommand cmd = new SqlCommand(queryString, con);

            cmd.Parameters.AddWithValue("@Id", loginID);
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
                Label41.Text = dr["login_Id"].ToString();
                Label17.Text = dr["name"].ToString();
                Label18.Text = dr["email"].ToString();
                Label19.Text = dr["DOB"].ToString();
                Label20.Text = dr["c_no"].ToString();
                Label22.Text = dr["address"].ToString();
                Label23.Text = dr["city"].ToString();
                Label24.Text = dr["pincode"].ToString();
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String loginID = Session["Loggedin"].ToString();
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            TextBox4.Visible = true;
            TextBox5.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            TextBox8.Visible = true;

            Button2.Visible = true;
            Button3.Visible = true;

            Label31.Visible = true;
            Label32.Visible = true;
            Label33.Visible = true;
            Label34.Visible = true;
            Label35.Visible = true;
            Label37.Visible = true;
            Label38.Visible = true;
            Label39.Visible = true;

            Button1.Enabled = false;

            TextBox2.Text = Label17.Text;
            TextBox3.Text = Label18.Text;
            TextBox4.Text = Label19.Text;
            TextBox5.Text = Label20.Text;
            TextBox6.Text = Label22.Text;
            TextBox7.Text = Label23.Text;
            TextBox8.Text = Label24.Text;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String loginID = Session["Loggedin"].ToString();
            try
            {
                //String s = WebConfigurationManager.ConnectionStrings["conString"].ConnectionString;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = s;
                String queryString = "UPDATE admin SET name=@name,email=@email,DOB=@dob,c_no=@cno,address=@address,city=@city,pincode=@pincode where login_Id=@id";
                SqlCommand cmd = new SqlCommand(queryString, con);

                cmd.Parameters.AddWithValue("@id", loginID);
                cmd.Parameters.AddWithValue("@name", TextBox2.Text);
                cmd.Parameters.AddWithValue("@email", TextBox3.Text);
                cmd.Parameters.AddWithValue("@dob", TextBox4.Text);
                cmd.Parameters.AddWithValue("@cno", TextBox5.Text);
                cmd.Parameters.AddWithValue("@address", TextBox6.Text);
                cmd.Parameters.AddWithValue("@city", TextBox7.Text);
                cmd.Parameters.AddWithValue("@pincode", TextBox8.Text);
                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();

                TextBox2.Visible = false;
                TextBox3.Visible = false;
                TextBox4.Visible = false;
                TextBox5.Visible = false;
                TextBox6.Visible = false;
                TextBox7.Visible = false;
                TextBox8.Visible = false;

                Label31.Visible = false;
                Label32.Visible = false;
                Label33.Visible = false;
                Label34.Visible = false;
                Label35.Visible = false;
                Label37.Visible = false;
                Label38.Visible = false;
                Label39.Visible = false;

                Button2.Visible = false;
                Button3.Visible = false;

                Button1.Enabled = true;
                Label30error.Text = "Success";
                Response.Redirect("admin-info.aspx?msg=AdminID+"+loginID+"'s+Details+Updated+successfully");
            }
            catch (Exception ex)
            {
                Label30error.Text = ex.ToString();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String loginID = Session["Loggedin"].ToString();
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;
            TextBox8.Visible = false;

            Label31.Visible = false;
            Label32.Visible = false;
            Label33.Visible = false;
            Label34.Visible = false;
            Label35.Visible = false;
            Label37.Visible = false;
            Label38.Visible = false;
            Label39.Visible = false;

            Button2.Visible = false;
            Button3.Visible = false;

            Button1.Enabled = true;
        }
    }
}