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
    public partial class faculty_update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label2.Text = Menu1.SelectedValue + " -> ";
            if (Session["Loggedin"] is null || (!(Session["Role"] is null) && Session["Role"].ToString() != "A"))
            {
                Response.Redirect("~/login.aspx");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label5.Text = DropDownList1.SelectedValue;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                String str = TextBox1.Text;
                String s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                SqlConnection con = new SqlConnection();
                con.ConnectionString = s;
                String queryString = "select * from faculty where login_Id=@Id";
                switch (DropDownList1.SelectedValue)
                {
                    case "Login-ID":
                        queryString = "select * from faculty where login_Id=@Id";
                        break;

                    case "Name":
                        queryString = "select * from faculty where name=@Id";
                        break;

                    case "Email-ID":
                        queryString = "select * from faculty where email=@Id";
                        break;
                }

                SqlCommand cmd = new SqlCommand(queryString, con);

                cmd.Parameters.AddWithValue("@Id", str);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    //Panel1.Visible = true;
                    Label16.Text = dr["Id"].ToString();
                    Label17.Text = dr["name"].ToString();
                    Label18.Text = dr["email"].ToString();
                    Label19.Text = dr["DOB"].ToString();
                    Label20.Text = dr["c_no"].ToString();
                    Label27.Text = dr["dept_name"].ToString();
                    Label38.Text = dr["status"].ToString();
                    Label22.Text = dr["address"].ToString();
                    Label23.Text = dr["city"].ToString();
                    Label24.Text = dr["pincode"].ToString();
                    Label48.Text = dr["pwd"].ToString();
                    Label46.Text = dr["login_id"].ToString();
                }
                con.Close();
                if (!Label16.Text.Equals("Id"))
                {
                    Panel1.Visible = true;
                }
            }
            catch (Exception ex)
            {
                Label47.Text = ex.ToString();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("faculty-update.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox7.Visible = true;
            TextBox6.Visible = true;
            TextBox8.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            TextBox4.Visible = true;
            TextBox5.Visible = true;
            TextBox9.Visible = true;

            DropDownList2.Visible = true;
            DropDownList3.Visible = true;

            Button2.Visible = true;
            Button3.Visible = true;

            Label43.Visible = true;
            Label36.Visible = true;
            Label44.Visible = true;
            Label35.Visible = true;
            Label34.Visible = true;
            Label33.Visible = true;
            Label32.Visible = true;
            Label49.Visible = true;

            Label31.Visible = true;

            Button1.Enabled = false;

            TextBox7.Text = Label17.Text;
            TextBox6.Text = Label18.Text;
            TextBox8.Text = Label19.Text;
            TextBox2.Text = Label20.Text;
            TextBox3.Text = Label22.Text;
            TextBox4.Text = Label23.Text;
            TextBox5.Text = Label24.Text;
            TextBox9.Text = Label48.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                String s = WebConfigurationManager.ConnectionStrings["conString"].ConnectionString;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = s;
                String queryString = "UPDATE faculty SET name=@name,email=@email,DOB=@dob,c_no=@cno,address=@address,city=@city,pincode=@pincode,pwd=@pwd,dept_name=@dname,status=@status where Id=@id";
                SqlCommand cmd = new SqlCommand(queryString, con);

                cmd.Parameters.AddWithValue("@id", Label16.Text);
                cmd.Parameters.AddWithValue("@name", TextBox7.Text);
                cmd.Parameters.AddWithValue("@email", TextBox6.Text);
                cmd.Parameters.AddWithValue("@dob", TextBox8.Text);
                cmd.Parameters.AddWithValue("@cno", TextBox2.Text);
                cmd.Parameters.AddWithValue("@dname", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@status", DropDownList3.SelectedValue);
                cmd.Parameters.AddWithValue("@address", TextBox3.Text);
                cmd.Parameters.AddWithValue("@city", TextBox4.Text);
                cmd.Parameters.AddWithValue("@pincode", TextBox5.Text);
                cmd.Parameters.AddWithValue("@pwd", TextBox9.Text);
                con.Open();
                int i = cmd.ExecuteNonQuery();
                //con.Close();

                TextBox7.Visible = false;
                TextBox6.Visible = false;
                TextBox8.Visible = false;
                TextBox2.Visible = false;
                TextBox3.Visible = false;
                TextBox4.Visible = false;
                TextBox5.Visible = false;
                TextBox9.Visible = false;

                Label43.Visible = false;
                Label36.Visible = false;
                Label35.Visible = false;
                Label44.Visible = false;
                Label34.Visible = false;
                Label33.Visible = false;
                Label32.Visible = false;
                Label49.Visible = false;
                Label31.Visible = false;

                DropDownList2.Visible = false;
                DropDownList3.Visible = false;

                Button2.Visible = false;
                Button3.Visible = false;

                Button1.Enabled = true;
                Label30.Text = "Faculty ID " + Label46.Text + "'s Details Updated Successfully..!!";
                
                queryString = "select * from faculty where Id=@Id";
                SqlCommand cmd1 = new SqlCommand(queryString, con);

                cmd1.Parameters.AddWithValue("@Id", Label16.Text);
                //con.Open();
                SqlDataReader dr = cmd1.ExecuteReader();

                if (dr.Read())
                {
                    Label16.Text = dr["Id"].ToString();
                    Label17.Text = dr["name"].ToString();
                    Label18.Text = dr["email"].ToString();
                    Label19.Text = dr["DOB"].ToString();
                    Label20.Text = dr["c_no"].ToString();
                    Label27.Text = dr["dept_name"].ToString();
                    Label38.Text = dr["status"].ToString();
                    Label22.Text = dr["address"].ToString();
                    Label23.Text = dr["city"].ToString();
                    Label24.Text = dr["pincode"].ToString();
                    Label48.Text = dr["pwd"].ToString();
                    Label46.Text = dr["login_id"].ToString();
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Label30.Text = ex.ToString();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox7.Visible = false;
            TextBox6.Visible = false;
            TextBox8.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            TextBox9.Visible = false;

            DropDownList2.Visible = false;
            DropDownList3.Visible = false;

            Button2.Visible = false;
            Button3.Visible = false;

            Label43.Visible = false;
            Label36.Visible = false;
            Label44.Visible = false;
            Label35.Visible = false;
            Label34.Visible = false;
            Label33.Visible = false;
            Label32.Visible = false;
            Label49.Visible = false;

            Label31.Visible = false;

            Button1.Enabled = true;
        }
    }
}