using System;
using System.Data;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-6QVJ4QJ9\\SQLEXPRESS;Initial Catalog=Test;Integrated Security=True;");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Task1]([Name],[Phone_Number],[address],[Task_Name],[Task_Status]) VALUES('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+DropDownList1.Text+"')", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Submitted Sucessfully");
            BindGrid();
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-6QVJ4QJ9\\SQLEXPRESS;Initial Catalog=Test;Integrated Security=True;");
            conn.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[Task1] WHERE Name = '" + TextBox1.Text + "'", conn);
            cmd.ExecuteNonQuery();
            Response.Write("Removed Sucessfully");
            BindGrid();
            conn.Close();
        }

            private void BindGrid()
            {
                SqlConnection conn = new SqlConnection("Data Source=LAPTOP-6QVJ4QJ9\\SQLEXPRESS;Initial Catalog=Test;Integrated Security=True;");
            SqlCommand cmd = new SqlCommand("select distinct Name, Phone_Number,address,Task_Name,Task_Status from [dbo].[Task1]", conn);
            conn.Open();
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
           

        }

     
    }
}