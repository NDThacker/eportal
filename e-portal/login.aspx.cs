using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;


namespace e_portal
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!(Session["Loggedin"] is null))
            {
                if(Session["Role"].ToString()=="S")
                {
                    Response.Redirect("~/student/student-info.aspx");
                }
                else if (Session["Role"].ToString() == "F")
                {
                    Response.Redirect("~/faculty/faculty-info.aspx");
                }
                else if (Session["Role"].ToString() == "A")
                {
                    Response.Redirect("~/admin/admin-info.aspx");
                }
            }

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Text = RadioButtonList1.SelectedValue+" ID: ";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = RadioButtonList1.SelectedValue;
            string constr = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = constr;
            string sqlq;
            string path;
            string role = "";
            if (user == "Student")
            {
                sqlq = "select password as pwd from Student where login_id=@id";
                path = "~/student/student-info.aspx";
                role = "S";
            }
            else if (user == "Faculty")
            {
                sqlq = "select pwd as pwd from faculty where login_id=@id";
                path = "~/faculty/faculty-info.aspx";
                role = "F";
            }
            else
            {
                sqlq = "select password as pwd from Admin where login_id=@id";
                path = "~/admin/admin-info.aspx";
                role = "A";
            }
            
            SqlCommand cmd = new SqlCommand(sqlq, conn);
            cmd.Parameters.AddWithValue("@id", TextBox1.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();

            try
            {
                conn.Open();
                sda.Fill(ds, "Logins");
                int i = 0;
               
                foreach(DataRow r in ds.Tables["Logins"].Rows)
                {
                    if(TextBox2.Text.Equals(r["pwd"].ToString().Trim()))
                    {
                        i++;
                    }
                   

                }
                if(i==1)
                {
                    Session["Loggedin"]=TextBox1.Text;
                    Session["Role"] = role;
                    Response.Redirect(path);
                }
                else
                {
                    Label10error.Text = "Wrong Credentials";
                }
                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}