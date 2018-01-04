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
    public partial class WebForm1 : System.Web.UI.Page
    {
        string loginID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Loggedin"] is null || (!(Session["Role"] is null) && Session["Role"].ToString() != "F"))
            {
                Response.Redirect("~/login.aspx");
            }
            loginID = Session["Loggedin"].ToString();
            try
            {
                String s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = s;
                String queryString = "select sub_code,sem,dept from sub_assign where faculty_id=@Id and year=@year";
                SqlCommand cmd = new SqlCommand(queryString, con);

                cmd.Parameters.AddWithValue("@Id", loginID);
                cmd.Parameters.AddWithValue("@year", DateTime.Now.Year.ToString());
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Label7.Text = dr["sem"].ToString();
                    Label20.Text = dr["dept"].ToString();
                    Label22.Text = dr["sub_code"].ToString();
                }
                Label5.Text = DateTime.Now.Year.ToString();
                Label8.Text = loginID;
                con.Close();
            }
            catch (Exception ex)
            {
                Label7.Text = ex.Message;
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Panel1.Visible = true;
            TextBox1.Text = GridView2.SelectedValue.ToString();
            TextBox2.Text = Label22.Text.Trim();
            TextBox3.Text = Label7.Text;

            try
            {
                String s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = s;
                String queryString = "select * from res_att where std_id=@stdId and sub_id=@subid";
                SqlCommand cmd = new SqlCommand(queryString, con);

                cmd.Parameters.AddWithValue("@stdId", TextBox1.Text);
                cmd.Parameters.AddWithValue("@subid", TextBox2.Text);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox4.Text = dr["total_mark"].ToString();
                    TextBox5.Text = dr["obt_mark"].ToString();
                    TextBox6.Text = dr["lab_total"].ToString();
                    TextBox7.Text = dr["lab_obt"].ToString();
                    TextBox8.Text = dr["theory_total"].ToString();
                    TextBox9.Text = dr["theory_obt"].ToString();
                    //DropDownList1.SelectedIndex = dr["result"].ToString().Equals("P") ? 0 : 1;
                    Button3.Visible = true;
                    Button2.Visible = false;
                }
                else
                {
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                    Button2.Visible = true;
                    Button3.Visible = false;
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Label7.Text = ex.Message;
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                String s = WebConfigurationManager.ConnectionStrings["conString"].ConnectionString;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = s;
                String queryString = "UPDATE res_att SET  total_mark=@tm,obt_mark=@om,lab_total=@lta,lab_obt=@loa,theory_total=@tta,theory_obt=@toa,result=@result where std_id=@stdid and sub_id=@subid and sem=@sem";
                SqlCommand cmd = new SqlCommand(queryString, con);

                cmd.Parameters.AddWithValue("@stdid", TextBox1.Text);
                cmd.Parameters.AddWithValue("@subid", TextBox2.Text);
                cmd.Parameters.AddWithValue("@sem", TextBox3.Text);
                cmd.Parameters.AddWithValue("@tm", TextBox4.Text);
                cmd.Parameters.AddWithValue("@om", TextBox5.Text);
                cmd.Parameters.AddWithValue("@lta", TextBox6.Text);
                cmd.Parameters.AddWithValue("@loa", TextBox7.Text);
                cmd.Parameters.AddWithValue("@tta", TextBox8.Text);
                cmd.Parameters.AddWithValue("@toa", TextBox9.Text);
                cmd.Parameters.AddWithValue("@result", DropDownList1.SelectedValue);

                con.Open();
                int i = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Label4.Text = ex.Message;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                String s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = s;
                String queryString = "insert into res_att (std_id,sub_id,sem,total_mark,obt_mark,lab_total,lab_obt,theory_total,theory_obt,result) values (@stdid,@subid,@sem,@tm,@om,@lta,@loa,@tta,@toa,@result)";
                SqlCommand cmd = new SqlCommand(queryString, con);

                cmd.Parameters.AddWithValue("@stdid", TextBox1.Text);
                cmd.Parameters.AddWithValue("@subid", TextBox2.Text);
                cmd.Parameters.AddWithValue("@sem", TextBox3.Text);
                cmd.Parameters.AddWithValue("@tm", TextBox4.Text);
                cmd.Parameters.AddWithValue("@om", TextBox5.Text);
                cmd.Parameters.AddWithValue("@lta", TextBox6.Text);
                cmd.Parameters.AddWithValue("@loa", TextBox7.Text);
                cmd.Parameters.AddWithValue("@tta", TextBox8.Text);
                cmd.Parameters.AddWithValue("@toa", TextBox9.Text);
                cmd.Parameters.AddWithValue("@result", DropDownList1.SelectedValue);

                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                Label7.Text = ex.Message;
            }
        }
    }
}