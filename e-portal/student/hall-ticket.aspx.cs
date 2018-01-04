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
    public partial class hall_ticket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Loggedin"] is null || (!(Session["Role"] is null) && Session["Role"].ToString() != "S"))
            {
                Response.Redirect("~/login.aspx");
            }
            Label2.Text = Menu1.SelectedValue;


            string loginID = Session["Loggedin"].ToString();
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
                string name = "", year = "", sem = "", dept = "", roll = "";
                if (dr.Read())
                {
                    name = dr["name"].ToString();
                    year = dr["batch_year"].ToString();
                    sem = dr["sem"].ToString();
                    dept = dr["dept_name"].ToString();
                    roll = dr["roll_no"].ToString();
                    //Label7.Text = dr["login_Id"].ToString();
                }
                con.Close();

                Label6.Text = dept;
                Label25.Text = name;
                Label33.Text = roll;
                Label27.Text = loginID;
                Label29.Text = sem;
                Label31.Text = year;


                queryString = "SELECT Exam.exam_date,Subject.code,Subject.name FROM Exam join Subject on Subject.code=Exam.sub_code and Exam.sem=@sem and Subject.dept_name=@dept and Exam.year=@year";
                SqlCommand cmd2 = new SqlCommand(queryString, con);
                cmd2.Parameters.AddWithValue("@year", DateTime.Now.Year.ToString());
                cmd2.Parameters.AddWithValue("@sem", sem);
                cmd2.Parameters.AddWithValue("@dept", dept);

                con.Open();

                SqlDataAdapter sda = new SqlDataAdapter(cmd2);
                DataSet ds = new DataSet();
                sda.Fill(ds, "rdata");
                int i = 0;
                foreach (DataRow row in ds.Tables["rdata"].Rows)
                {
                    TableRow trow = new TableRow();

                    TableCell cell1 = new TableCell();
                    cell1.Text = (++i).ToString();
                    trow.Cells.Add(cell1);

                    TableCell cell2 = new TableCell();
                    cell2.Text = row["exam_date"].ToString().Substring(0, 9);
                    trow.Cells.Add(cell2);

                    TableCell cell3 = new TableCell();
                    cell3.Text = "10:30 AM".ToString();
                    trow.Cells.Add(cell3);

                    TableCell cell4 = new TableCell();
                    cell4.Text = row["code"].ToString().Equals("") ? "- -" : row["code"].ToString();
                    trow.Cells.Add(cell4);

                    TableCell cell5 = new TableCell();
                    cell5.Text = row["name"].ToString().Equals("") ? "- -" : row["name"].ToString();
                    trow.Cells.Add(cell5);

                    TableCell cell6 = new TableCell();
                    cell6.Text = "".ToString();
                    trow.Cells.Add(cell6);

                    Table1.Rows.Add(trow);
                }

                con.Close();
            }
            catch (Exception ex)
            {
                Label34.Text = ex.Message;
            }
        }
    }
}