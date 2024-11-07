using System;
using System.Data;
using System.Data.SqlClient;

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
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=LAPTOP-6QVJ4QJ9\\SQLEXPRESS01;Initial Catalog=Test;Integrated Security=True;");
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Task1]([Porter_ID],[Name],[Phone_Number],[address],[Task_Name],[Task_Status]) VALUES('" + TextBox5.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.Text + "')", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                Response.Write("Submitted Sucessfully");
                BindGrid();
                conn.Close();
            }
            catch
            {
                Response.Write("<script>alert('User ID already exist')</script>");
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-6QVJ4QJ9\\SQLEXPRESS01;Initial Catalog=Test;Integrated Security=True;");
            conn.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[Task1] WHERE Name = '" + TextBox5.Text + "'", conn);
            cmd.ExecuteNonQuery();
            Response.Write("Removed Sucessfully");
            BindGrid();
            conn.Close();
        }

        private void BindGrid()
        {
            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-6QVJ4QJ9\\SQLEXPRESS01;Initial Catalog=Test;Integrated Security=True;");
            SqlCommand cmd = new SqlCommand("select distinct Porter_ID,Name, Phone_Number,Address,Task_Name,Task_Status from [dbo].[Task1]", conn);
            conn.Open();
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-6QVJ4QJ9\\SQLEXPRESS01;Initial Catalog=Test;Integrated Security=True;");
            conn.Open();
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[Task1] SET [Task_Name] = '" + TextBox4.Text + "' where [Name] = '" + TextBox1.Text + "'", conn);
            cmd.ExecuteNonQuery();
            Response.Write("Sucessfully Updated");
            BindGrid();
            conn.Close();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-6QVJ4QJ9\\SQLEXPRESS01;Initial Catalog=Test;Integrated Security=True;");
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from [dbo].[Task1] where [Porter_ID] LIKE @SearchTerm", conn);
            cmd.ExecuteNonQuery();
            Response.Write("Your search data");
            BindGrid();
            conn.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-6QVJ4QJ9\\SQLEXPRESS01;Initial Catalog=Test;Integrated Security=True;");
            conn.Open();
            SqlCommand cmd = new SqlCommand("Exec dbo.[SetColumnToZero]", conn);
            cmd.ExecuteNonQuery();
            Response.Write("Your Data has been reset");
            conn.Close();
        }
    }
}