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
    public partial class Admin_registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label2.Text = Menu1.SelectedValue + " -> ";
            if (Session["Loggedin"] is null || (!(Session["Role"] is null) && Session["Role"].ToString() != "A"))
            {
                Response.Redirect("~/login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string newLoginId = DateTime.Now.Year.ToString() + "A" + IDGenerater();
                

                String s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = s;
                String queryString = "insert into admin (login_Id,name,password,DOB,email,c_no,address,city,pincode) values (@loginId,@name,@password,@dob,@email,@cno,@address,@city,@pincode)";
                SqlCommand cmd = new SqlCommand(queryString, con);

                cmd.Parameters.AddWithValue("@loginId", newLoginId);
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@password", TextBox3.Text);
                cmd.Parameters.AddWithValue("@address", TextBox6.Text);
                cmd.Parameters.AddWithValue("@pincode", TextBox8.Text);
                cmd.Parameters.AddWithValue("@city", TextBox7.Text);
                cmd.Parameters.AddWithValue("@cno", TextBox4.Text);
                cmd.Parameters.AddWithValue("@email", TextBox2.Text);
                cmd.Parameters.AddWithValue("@dob", TextBox3.Text);
                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();


                Response.Redirect("admin-register.aspx?msg=new+Admin+registration+done+with+LoginID+" + newLoginId);
            }
            catch (Exception ex)
            {
                errorlabel.Text = ex.ToString();
            }
        }

        public string IDGenerater()
        {
            String count = "";

            String s = WebConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = s;
            String queryString = "select count(login_Id) as c from admin";
            SqlCommand cmd = new SqlCommand(queryString, con);

            con.Open();
            
            Int32 co = 0;
            try
            {
                
                co = (Int32)cmd.ExecuteScalar();
                
            }
            catch (Exception ex)
            {
                errorlabel.Text = ex.ToString();
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