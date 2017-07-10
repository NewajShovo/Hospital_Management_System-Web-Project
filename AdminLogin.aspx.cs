using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class Practice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
           Button1.BackColor = System.Drawing.Color.Green;
       
            if(Session["Login"] != null )
            {
                Response.Redirect("Cannot.aspx");

            }
            else if (Session["Admin"] != null)
            {
                Response.Redirect("AdminPage.aspx");
            }

        

    }
    protected void Button_Click1(object sender, EventArgs e)
    {
        
        



        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["messi"].ConnectionString;
        con.Open();

        SqlCommand select = new SqlCommand();
        select.Connection = con;

        select.CommandText = "select username from admin where username = '" + inputEmail.Text + "' and password = '" + inputPassword.Text + "' ";
        SqlDataReader reader = select.ExecuteReader();
        if (inputEmail.Text == "Enter username" || inputPassword.Text == "") ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "Func()", true);
        else if (reader.Read())
        {
            Session["Admin"] = inputEmail.Text;
            Response.Redirect("Adminpage.aspx");

        }
        else
            Label1.Text = "Invalid Login Data";
        reader.Close();
        con.Close();


    }

 
}