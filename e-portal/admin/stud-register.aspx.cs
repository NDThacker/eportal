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
    public partial class stud_register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label2.Text = Menu1.SelectedValue+" -> ";
            TextBox9.Text = DateTime.Now.Year.ToString();
            Label30.Text = Page.Request.QueryString["msg"];
            if (Session["Loggedin"] is null || (!(Session["Role"] is null) && Session["Role"].ToString() != "A"))
            {
                Response.Redirect("~/login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string newLoginId = DropDownList1.SelectedValue + TextBox9.Text + "S" + IDGenerater();
                string roll = DropDownList1.SelectedValue + IDGenerater();

                String s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = s;
                String queryString = "insert into student (login_Id,name,password,address,city,pincode,S_C_no,P_C_no,batch_year,email,DOB,sem,roll_no,dept_name) values (@loginId,@name,@password,@address,@city,@pincode,@cno,@p_cno,@batch_year,@email,@dob,@sem,@roll_no,@dept)";
                SqlCommand cmd = new SqlCommand(queryString, con);
                
                cmd.Parameters.AddWithValue("@loginId", newLoginId);
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@password", TextBox3.Text);
                cmd.Parameters.AddWithValue("@address", TextBox6.Text);
                cmd.Parameters.AddWithValue("@pincode", TextBox8.Text);
                cmd.Parameters.AddWithValue("@city", TextBox7.Text);
                cmd.Parameters.AddWithValue("@cno", TextBox4.Text);
                cmd.Parameters.AddWithValue("@p_cno", TextBox5.Text);
                cmd.Parameters.AddWithValue("@batch_year", TextBox9.Text);
                cmd.Parameters.AddWithValue("@email", TextBox2.Text);
                cmd.Parameters.AddWithValue("@dob", TextBox3.Text);
                cmd.Parameters.AddWithValue("@sem", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@roll_no", roll);
                cmd.Parameters.AddWithValue("@dept", DropDownList1.SelectedValue);
                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();

                
                Response.Redirect("stud-register.aspx?msg=new+Student+registration+done+with+LoginID+" + newLoginId);
            }
            catch (Exception ex)
            {
                errorlabel.Text = ex.ToString();
            }
        }


        public string IDGenerater()
        {
            //String loginID = DropDownList2.SelectedValue + TextBox9.Text + "S";
            String count = "";

            String s = WebConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = s;
            String queryString = "select count(login_Id) as c from student where batch_year=@batch_year and dept_name=@dept_name";
            SqlCommand cmd = new SqlCommand(queryString, con);

            cmd.Parameters.AddWithValue("@batch_year", TextBox9.Text);
            cmd.Parameters.AddWithValue("@dept_name", DropDownList1.SelectedValue);

            con.Open();
            //SqlDataReader dr = null;
            Int32 co = 0;
            try
            {
                //count = Convert.ToString(cmd.ExecuteScalar());
                co = (Int32)cmd.ExecuteScalar();
                errorlabel1.Text = ""+co;
            }
            catch (Exception ex)
            {
                errorlabel1.Text = ex.ToString();
            }
            
                
            
            con.Close();

            int c = co;
            c++;
            count = c.ToString();

            switch (count.Length)
            {
                case 1:
                    count = "00" + count;
                    break;
                case 2:
                    count = "0" + count;
                    break;
            }
            
            return count;
        }
    }
}