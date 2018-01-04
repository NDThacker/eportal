using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_portal.admin
{
    public partial class sub_assign : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label10.Text = DateTime.Now.Year.ToString();
            if (Session["Loggedin"] is null || (!(Session["Role"] is null) && Session["Role"].ToString() != "A"))
            {
                Response.Redirect("~/login.aspx");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = s;
            String queryString = "SELECT login_Id,name FROM [faculty] WHERE ([dept_name] = @dept_name)";
            SqlCommand cmd = new SqlCommand(queryString, con);

            cmd.Parameters.AddWithValue("@dept_name", DropDownList1.SelectedValue);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds, "rdata");
            int i = 0;
            DropDownList2.Items.Clear();
            
            foreach (DataRow row in ds.Tables["rdata"].Rows)
            {
                string l = row["login_Id"].ToString();
                string n = row["name"].ToString();
                //Label5.Text = a;
                DropDownList2.Items.Insert(i, new ListItem(l, l));
                i++;
                
            }
            con.Close();


            String query = "SELECT code,name FROM [Subject] WHERE ([dept_name] = @dept_name)";
            SqlCommand cmd1 = new SqlCommand(query, con);

            cmd1.Parameters.AddWithValue("@dept_name", DropDownList1.SelectedValue);
            con.Open();
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1, "rdata1");
            i = 0;
            DropDownList3.Items.Clear();

            foreach (DataRow row in ds1.Tables["rdata1"].Rows)
            {
                string l = row["code"].ToString();
                string n = row["name"].ToString();
                //Label5.Text = a;
                DropDownList3.Items.Insert(i, new ListItem(l+" - "+n, l));
                i++;

            }
            con.Close();
            Panel1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                String s = WebConfigurationManager.ConnectionStrings["conString"].ConnectionString;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = s;
                String queryString = "insert into sub_assign (year,faculty_id,sub_code,dept,P_T,sem) values (@year,@faculty_id,@sub_code,@dept,@pt,@sem)";
                SqlCommand cmd = new SqlCommand(queryString, con);
                cmd.Parameters.AddWithValue("@year", DateTime.Now.Year.ToString());
                cmd.Parameters.AddWithValue("@faculty_id", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@sub_code", DropDownList3.SelectedValue);
                cmd.Parameters.AddWithValue("@sem", DropDownList4.SelectedValue);
                cmd.Parameters.AddWithValue("@dept", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@pt", DropDownList5.SelectedItem.Value);

                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();
                //Response.Redirect("sub_assign.aspx");
                GridView1.DataBind();
            }
            catch(Exception ex)
            {
                Label11.Text = "faculty is already assign with this subject..";
            }
            
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            String s = WebConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = s;
            String queryString = "SELECT code,name FROM [Subject] WHERE ([dept_name] = @dept_name) and sem=@sem";
            SqlCommand cmd = new SqlCommand(queryString, con);
            cmd.Parameters.AddWithValue("@sem", DropDownList4.SelectedValue);
            cmd.Parameters.AddWithValue("@dept_name", DropDownList1.SelectedValue);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds, "rdata");
            int i = 0;
            DropDownList3.Items.Clear();

            foreach (DataRow row in ds.Tables["rdata"].Rows)
            {
                string l = row["code"].ToString();
                string n = row["name"].ToString();
                //Label5.Text = a;
                DropDownList3.Items.Insert(i, new ListItem(l+" - "+n, l));
                i++;

            }
            con.Close();
        }
    }
}