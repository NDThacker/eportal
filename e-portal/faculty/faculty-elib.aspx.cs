using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace e_portal.faculty
{
    public partial class faculty_elib : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Loggedin"] is null || (!(Session["Role"] is null) && Session["Role"].ToString() != "F"))
            {
                Response.Redirect("~/login.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ext = "";
            if(FileUpload1.HasFile)
            {
                string filePath = FileUpload1.PostedFile.FileName;  
                string filename1 = Path.GetFileName(filePath);   
                ext = Path.GetExtension(filename1); 
            }
            if(FileUpload1.HasFile && TextBox1.Text!="" && ext==".pdf")
            {
                string s = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/E-LibBooks/" + s));
                Label1.Text = "Uploaded to E-Lib succesfully";

                string path = "~/E-LibBooks/" + s;
                SqlConnection con = new SqlConnection();
                string st = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                con.ConnectionString = st;
                String queryString = "insert into book values(@bname,@subid,@spath)";
                SqlCommand cmd = new SqlCommand(queryString, con);
                cmd.Parameters.AddWithValue("@bname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@subid", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@spath", path);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

            }
            else
            {
                Label1.Text = "Error..!";
            }


        }
    }
}