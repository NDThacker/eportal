using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_portal.student
{
    public partial class result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Loggedin"] is null || (!(Session["Role"] is null) && Session["Role"].ToString() != "S"))
            {
                Response.Redirect("~/login.aspx");
            }
            Label2.Text = Menu1.SelectedValue;

            string loginID = Session["Loggedin"].ToString();

            string sem = "", roll = "",year="";
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
                    year = dr["batch_year"].ToString();
                    sem = dr["sem"].ToString();
                    Label10.Text = dr["dept_name"].ToString();
                    roll = dr["roll_no"].ToString();
                    Label7.Text = dr["login_Id"].ToString();
                }
                con.Close();

                Label9.Text = year;

                int semester = Int32.Parse(sem);

                if (semester > 0)
                {
                    for(int i = 0; i < semester; i++)
                    {
                        TableRow trow = new TableRow();

                        TableCell cell1 = new TableCell();
                        HyperLink link1 = new HyperLink();
                        link1.NavigateUrl = "~/student/sem-result.aspx?sem=" + (i + 1).ToString();
                        link1.Text = "View";
                        cell1.Controls.Add(link1);
                        trow.Cells.Add(cell1);

                        TableCell cell2 = new TableCell();
                        cell2.Text = (i+1).ToString();
                        trow.Cells.Add(cell2);

                        TableCell cell3 = new TableCell();
                        cell3.Text = year;
                        trow.Cells.Add(cell3);

                        TableCell cell4 = new TableCell();
                        cell4.Text = roll;
                        trow.Cells.Add(cell4);

                        TableCell cell5 = new TableCell();
                        cell5.Text = "P / F";
                        trow.Cells.Add(cell5);

                        Table1.Rows.Add(trow);
                    }
                }
                
            }
            catch (Exception ex)
            {
                Label48.Text = ex.ToString();
            }

            /*switch (sem)
            {
                case "1":
                    this.row2.Visible = false;
                    this.row3.Visible = false;
                    this.row4.Visible = false;
                    this.row5.Visible = false;
                    this.row6.Visible = false;
                    this.row7.Visible = false;
                    this.row8.Visible = false;
                    break;

                case "2":
                    this.row3.Visible = false;
                    this.row4.Visible = false;
                    this.row5.Visible = false;
                    this.row6.Visible = false;
                    this.row7.Visible = false;
                    this.row8.Visible = false;
                    break;

                case "3":
                    this.row4.Visible = false;
                    this.row5.Visible = false;
                    this.row6.Visible = false;
                    this.row7.Visible = false;
                    this.row8.Visible = false;
                    break;

                case "4":
                    this.row5.Visible = false;
                    this.row6.Visible = false;
                    this.row7.Visible = false;
                    this.row8.Visible = false;
                    break;

                case "5":
                    this.row6.Visible = false;
                    this.row7.Visible = false;
                    this.row8.Visible = false;
                    break;

                case "6":
                    this.row7.Visible = false;
                    this.row8.Visible = false;
                    break;

                case "7":
                    this.row8.Visible = false;
                    break;

                case "8":
                    break;
            }*/
        }
    }
}