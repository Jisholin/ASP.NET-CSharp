using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login
{
    public partial class Responsive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    SqlConnection conn = new SqlConnection("Data Source=LAPTOP-6QVJ4QJ9\\SQLEXPRESS;Initial Catalog=Test;Integrated Security=True;");
        //    string query = "SELECT COUNT(1) FROM [dbo].[Login] WHERE UserName = @UserName AND Password = @Password";
        //    SqlCommand cmd = new SqlCommand(query, conn);
        //    cmd.Parameters.AddWithValue("@UserName", TextBox1.Text.Trim());
        //    cmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());
        //    int count = Convert.ToInt32(cmd.ExecuteScalar());
        //    if (count == 1)
        //    {
        //        Session["@UserName"] = TextBox1.Text.Trim();
        //        Response.Redirect("Sample.aspx");
        //    }
        //    else
        //    {
        //        lblErrorMessage.Visible = true;
        //    }

        //}

        protected void Btn_reset_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-6QVJ4QJ9\\SQLEXPRESS01;Initial Catalog=Test;Integrated Security=True;");
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from AGENTS",conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("Sucessfully Updated");
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-6QVJ4QJ9\\SQLEXPRESS01;Initial Catalog=Test;Integrated Security=True;");
            string query = "SELECT COUNT(1) FROM [dbo].[Login] WHERE User_Name = @UserName AND Password = @Password";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@UserName", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            if (count == 1)
            {
                Session["@UserName"] = TextBox1.Text.Trim();
                Response.Redirect("Sample.aspx");
            }
            else
            {
                lblErrorMessage.Visible = true;
            }
        }
    }
}