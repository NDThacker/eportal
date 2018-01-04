using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_portal.student
{
    public partial class sem_attendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Loggedin"] is null || (!(Session["Role"] is null) && Session["Role"].ToString() != "S"))
            {
                Response.Redirect("~/login.aspx");
            }
            string loginID = Session["Loggedin"].ToString();

            Label12.Text = Page.Request.QueryString["sem"];

            string roll = "", year = "", dept = "";
            try
            {
                String s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = s;
                String queryString = "select * from student where login_Id=@Id";
                SqlCommand cmd = new SqlCommand(queryString, con);

                cmd.Parameters.AddWithValue("@Id", loginID);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {

                    Label5.Text = dr["name"].ToString();
                    Label10.Text = dr["batch_year"].ToString();
                    //sem = dr["sem"].ToString();
                    Label10.Text = dr["dept_name"].ToString();
                    roll = dr["roll_no"].ToString();
                    Label7.Text = dr["login_Id"].ToString();
                }
                con.Close();
                dept = Label10.Text;

                queryString = "select count(Id) from subject where sem=@sem and dept_name=@dept";
                SqlCommand cmd1 = new SqlCommand(queryString, con);
                cmd1.Parameters.AddWithValue("@sem", Label12.Text);
                cmd1.Parameters.AddWithValue("@dept", Label10.Text);

                con.Open();
                Int32 count = (Int32)cmd1.ExecuteScalar();
                int co = (int)count;

                con.Close();
                Label13.Text = co + " ";

                if (co > 0)
                {
                    queryString = "SELECT Subject.code,Subject.name,res_att.theory_obt,res_att.theory_total,res_att.lab_obt,res_att.lab_total FROM res_att join Subject on res_att.std_id=@std_id and Subject.code=res_att.sub_id and res_att.sem=@sem and Subject.dept_name=@dept";
                    SqlCommand cmd2 = new SqlCommand(queryString, con);
                    cmd2.Parameters.AddWithValue("@sem", Label12.Text);
                    cmd2.Parameters.AddWithValue("@dept", Label10.Text);
                    cmd2.Parameters.AddWithValue("@std_id", loginID);

                    con.Open();

                    SqlDataAdapter sda = new SqlDataAdapter(cmd2);
                    DataSet ds = new DataSet();
                    sda.Fill(ds, "rdata");

                    foreach (DataRow row in ds.Tables["rdata"].Rows)
                    {
                        TableRow trow = new TableRow();

                        TableCell cell1 = new TableCell();
                        cell1.Text = row["code"].ToString();
                        trow.Cells.Add(cell1);

                        TableCell cell2 = new TableCell();
                        cell2.Text = row["name"].ToString();
                        trow.Cells.Add(cell2);

                        TableCell cell3 = new TableCell();
                        cell3.Text = row["theory_obt"].ToString().Equals("") ? "- -" : row["theory_obt"].ToString();
                        trow.Cells.Add(cell3);

                        TableCell cell4 = new TableCell();
                        cell4.Text = row["theory_total"].ToString().Equals("") ? "- -" : row["theory_total"].ToString();
                        trow.Cells.Add(cell4);

                        TableCell cell5 = new TableCell();
                        cell5.Text = row["lab_obt"].ToString().Equals("") ? "- -" : row["lab_obt"].ToString();
                        trow.Cells.Add(cell5);

                        TableCell cell6 = new TableCell();
                        cell6.Text = row["lab_total"].ToString().Equals("") ? "- -" : row["lab_total"].ToString();
                        trow.Cells.Add(cell6);

                        Table1.Rows.Add(trow);
                    }
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Label13.Text = ex.ToString();
            }
        }
    }
}