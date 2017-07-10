using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Data.Sql;
using System.Configuration;

public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, System.EventArgs e)
    {
        string username = "";
        string password = "";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["messi"].ConnectionString;
        string s = TextBox1.Text.ToString();
     
        SqlCommand com = new SqlCommand("select username, password from login where email=@Email", con);
        com.Parameters.AddWithValue("email", TextBox1.Text);
        con.Open();
        SqlDataReader reader = com.ExecuteReader();
        while (reader.Read())
        {
            username = reader["username"].ToString();
            password = reader["password"].ToString();


        }
        con.Close();

        if (!string.IsNullOrEmpty(password))
        {




            MailMessage msg = new MailMessage();
            msg.From = new System.Net.Mail.MailAddress("leoshovo@gmail.com");
          
            msg.To.Add(TextBox1.Text);
            msg.Subject = " Recover your Password";
            msg.Body = ("Your Username is:" + username + "<br/><br/>" + "Your Password is:" + password);
            msg.IsBodyHtml = true;
            
            SmtpClient smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            ntwd.UserName = "leoshovo@gmail.com"; //Your Email ID  
            ntwd.Password = "01727998366"; // Your Password  
            smt.UseDefaultCredentials = true;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            try
            {
                smt.Send(msg);
                smt.EnableSsl = true;
                abcd.Text = "Username and Password Sent Successfully";
                abcd.ForeColor = System.Drawing.Color.ForestGreen;
            }
            catch
            {
                abcd.Text = "Authetication is not Valid";
                abcd.ForeColor = System.Drawing.Color.Red;
            }
        }
        else
        {
            abcd.Text = "Something Went Wrong";
            abcd.ForeColor = System.Drawing.Color.Red;
        }
  
    }
    protected void TextBox1_TextChanged(object sender, System.EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, System.EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}