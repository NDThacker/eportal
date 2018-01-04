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
    public partial class stud_update : System.Web.UI.Page
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
                String queryString = "select * from student where login_Id=@Id";
                switch (DropDownList1.SelectedValue)
                {
                    case "Login-ID":
                        queryString = "select * from student where login_Id=@Id";
                        break;

                    case "Name":
                        queryString = "select * from student where name=@Id";
                        break;

                    case "Email-ID":
                        queryString = "select * from student where email=@Id";
                        break;
                }

                SqlCommand cmd = new SqlCommand(queryString, con);

                cmd.Parameters.AddWithValue("@Id", str);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Label16.Text = dr["Id"].ToString();
                    Label17.Text = dr["name"].ToString();
                    Label18.Text = dr["email"].ToString();
                    Label19.Text = dr["DOB"].ToString();
                    Label20.Text = dr["S_C_no"].ToString();
                    Label21.Text = dr["P_C_no"].ToString();
                    Label22.Text = dr["address"].ToString();
                    Label23.Text = dr["city"].ToString();
                    Label24.Text = dr["pincode"].ToString();
                    Label25.Text = dr["batch_year"].ToString();
                    Label26.Text = dr["sem"].ToString();
                    Label27.Text = dr["dept_name"].ToString();
                    Label28.Text = dr["roll_no"].ToString();
                    Label51.Text = dr["password"].ToString();
                    Label43.Text = dr["login_Id"].ToString();
                }
                con.Close();
                if (!Label16.Text.Equals("Id"))
                {
                    Panel1.Visible = true;
                }
            }
            catch (Exception ex)
            {
                Label30.Text = ex.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox7.Visible = true;
            TextBox6.Visible = true;
            TextBox8.Visible = true;
            TextBox2.Visible = true;
            TextBox9.Visible = true;
            TextBox3.Visible = true;
            TextBox4.Visible = true;
            TextBox5.Visible = true;
            TextBox12.Visible = true;
            TextBox11.Visible = true;
            TextBox13.Visible = true;

            DropDownList2.Visible = true;
            DropDownList3.Visible = true;

            Button2.Visible = true;
            Button3.Visible = true;

            Button1.Enabled = false;

            Label44.Visible = true;
            Label36.Visible = true;
            Label45.Visible = true;
            Label35.Visible = true;
            Label46.Visible = true;
            Label34.Visible = true;
            Label33.Visible = true;
            Label32.Visible = true;
            Label49.Visible = true;
            Label48.Visible = true;
            Label52.Visible = true;

            TextBox7.Text = Label17.Text;
            TextBox6.Text = Label18.Text;
            TextBox8.Text = Label19.Text;
            TextBox2.Text = Label20.Text;
            TextBox9.Text = Label21.Text;
            TextBox3.Text = Label22.Text;
            TextBox4.Text = Label23.Text;
            TextBox5.Text = Label24.Text;
            TextBox12.Text = Label25.Text;
            TextBox11.Text = Label28.Text;
            TextBox13.Text = Label51.Text;

            //DropDownList2.SelectedIndex = (Int32.Parse(Label26.Text) - 1);
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("stud-update.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                String s = WebConfigurationManager.ConnectionStrings["conString"].ConnectionString;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = s;
                String queryString = "UPDATE student SET name=@name,email=@email,DOB=@dob,S_C_no=@cno,P_C_no=@pcno,address=@address,city=@city,pincode=@pincode,password=@pwd,dept_name=@dname,batch_year=@batch_year,sem=@sem,roll_no=@roll where Id=@id";
                SqlCommand cmd = new SqlCommand(queryString, con);

                cmd.Parameters.AddWithValue("@id", Label16.Text);
                cmd.Parameters.AddWithValue("@name", TextBox7.Text);
                cmd.Parameters.AddWithValue("@email", TextBox6.Text);
                cmd.Parameters.AddWithValue("@dob", TextBox8.Text);
                cmd.Parameters.AddWithValue("@cno", TextBox2.Text);
                cmd.Parameters.AddWithValue("@pcno", TextBox9.Text);
                cmd.Parameters.AddWithValue("@address", TextBox3.Text);
                cmd.Parameters.AddWithValue("@city", TextBox4.Text);
                cmd.Parameters.AddWithValue("@pincode", TextBox5.Text);
                cmd.Parameters.AddWithValue("@batch_year", TextBox12.Text);
                cmd.Parameters.AddWithValue("@sem", DropDownList3.SelectedValue);
                cmd.Parameters.AddWithValue("@dname", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@roll", TextBox11.Text);
                cmd.Parameters.AddWithValue("@pwd", TextBox13.Text);
                con.Open();
                int i = cmd.ExecuteNonQuery();
                //con.Close();

                TextBox7.Visible = false;
                TextBox6.Visible = false;
                TextBox8.Visible = false;
                TextBox2.Visible = false;
                TextBox9.Visible = false;
                TextBox3.Visible = false;
                TextBox4.Visible = false;
                TextBox5.Visible = false;
                TextBox12.Visible = false;
                TextBox11.Visible = false;
                TextBox13.Visible = false;

                Label44.Visible = false;
                Label36.Visible = false;
                Label45.Visible = false;
                Label35.Visible = false;
                Label46.Visible = false;
                Label34.Visible = false;
                Label33.Visible = false;
                Label32.Visible = false;
                Label49.Visible = false;
                Label48.Visible = false;
                Label52.Visible = false;

                DropDownList2.Visible = false;
                DropDownList3.Visible = false;

                Button2.Visible = false;
                Button3.Visible = false;

                Button1.Enabled = true;
                Label30.Text = "Student ID " + Label43.Text + "'s Details Updated Successfully..!!";

                queryString = "select * from student where Id=@Id";
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
                    Label20.Text = dr["S_C_no"].ToString();
                    Label21.Text = dr["P_C_no"].ToString();
                    Label22.Text = dr["address"].ToString();
                    Label23.Text = dr["city"].ToString();
                    Label24.Text = dr["pincode"].ToString();
                    Label25.Text = dr["batch_year"].ToString();
                    Label26.Text = dr["sem"].ToString();
                    Label27.Text = dr["dept_name"].ToString();
                    Label28.Text = dr["roll_no"].ToString();
                    Label51.Text = dr["password"].ToString();
                    Label43.Text = dr["login_Id"].ToString();
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
            TextBox9.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            TextBox12.Visible = false;
            TextBox11.Visible = false;
            TextBox13.Visible = false;

            DropDownList2.Visible = false;
            DropDownList3.Visible = false;

            Button2.Visible = false;
            Button3.Visible = false;

            Button1.Enabled = true;

            Label44.Visible = false;
            Label36.Visible = false;
            Label45.Visible = false;
            Label35.Visible = false;
            Label46.Visible = false;
            Label34.Visible = false;
            Label33.Visible = false;
            Label32.Visible = false;
            Label49.Visible = false;
            Label48.Visible = false;
            Label52.Visible = false;
        }
    }
}