using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Collections.Generic;
using System.Linq;

using System.Data;
using System.Data.Sql;
using System.Configuration;

using System.Text;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

        }
       
    }

   


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["messi"].ConnectionString;
        con.Open();
        SqlCommand select = new SqlCommand();
        select.Connection = con;

        select.CommandText = "select username from login where username = '" + TextBox1.Text + "' ";
        SqlDataReader reader = select.ExecuteReader();

        if (reader.Read())
        {
            Label1.Text = "User Name is Already Exist";
            this.Label1.ForeColor = Color.Red;
        }
        else
        {
            Label1.Text = "UserName is Available";
            this.Label1.ForeColor = Color.Green;
        }
        con.Close();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

       
        {
            

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["messi"].ConnectionString;
            con.Open();
            String str = "insert into login values('" + TextBox1.Text + "','" + TextBox5.Text + "','" + TextBox2.Text + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();

            TextBox1.Text = null;
            TextBox5.Text = null;
            TextBox2.Text = null;
            Label1.Text = "";
           Label22.Font.Size = 10;
            
            Label22.ForeColor = System.Drawing.Color.Green;
            Label22.Text = "                    Your Registration was Successfull";
            Session["name"] = TextBox1.Text;
            
            con.Close();
        }
       
    }

}