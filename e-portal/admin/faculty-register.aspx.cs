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
    public partial class Faculty_register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label2.Text = Menu1.SelectedValue + " -> ";
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
                string newLoginId = DropDownList1.SelectedValue + DateTime.Now.Year.ToString() + "F" + IDGenerater();
                //string roll = DropDownList1.SelectedValue + IDGenerater();

                String s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = s;
                String queryString = "insert into faculty (login_Id,name,c_no,email,DOB,pwd,dept_name,status,address,city,pincode) values (@loginId,@name,@cno,@email,@dob,@pwd,@dept_name,@status,@address,@city,@pincode)";
                SqlCommand cmd = new SqlCommand(queryString, con);

                /*TextBox1.Text = "abc";
                TextBox2.Text = "abc@gmail.com";
                TextBox3.Text = "15/10/2000";
                TextBox4.Text = "1234567890";
                //TextBox5.Text = "15/10/2000";
                TextBox6.Text = "nadiad";
                TextBox7.Text = "nadiad";
                TextBox8.Text = "152000";*/
                
                cmd.Parameters.AddWithValue("@loginId", newLoginId);
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@cno", TextBox4.Text);
                cmd.Parameters.AddWithValue("@email", TextBox2.Text);
                cmd.Parameters.AddWithValue("@dob", TextBox3.Text);
                cmd.Parameters.AddWithValue("@pwd", TextBox3.Text);
                cmd.Parameters.AddWithValue("@dept_name", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@status", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@address", TextBox6.Text);
                cmd.Parameters.AddWithValue("@city", TextBox7.Text);
                cmd.Parameters.AddWithValue("@pincode", TextBox8.Text);
                
                
                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();


                Response.Redirect("faculty-register.aspx?msg=new+Faculty+registration+done+with+LoginID+" + newLoginId);
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
            String queryString = "select count(login_Id) as c from faculty where dept_name=@dept_name";
            SqlCommand cmd = new SqlCommand(queryString, con);

            cmd.Parameters.AddWithValue("@dept_name", DropDownList1.SelectedValue);

            con.Open();
            //SqlDataReader dr = null;
            Int32 co = 0;
            try
            {
                //count = Convert.ToString(cmd.ExecuteScalar());
                co = (Int32)cmd.ExecuteScalar();
                //errorlabel1.Text = "" + co;
            }
            catch (Exception ex)
            {
                Label30.Text = ex.ToString();
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