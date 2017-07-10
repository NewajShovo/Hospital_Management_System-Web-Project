using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;
using System.Web.Security;
using System.Data;
using System.IO;

public partial class Ajax : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlCommand cmd1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("home.aspx");
        }

    }
    protected void submitted(object sender, EventArgs e)
    {
        string s = Request.Form["txt1"];

        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["messi"].ConnectionString;
        con.Open(); //
        cmd = new SqlCommand("Select * from doctorinfo where doctorsname=" + "'" + s + "'", con);
        SqlDataReader reader = cmd.ExecuteReader();

        int i = 1;                     
       if (reader.Read())
       {
           byte[] bytes = (byte[])reader["imagedata"];
           string strBase64 = Convert.ToBase64String(bytes);
           //Image1.ImageUrl = "data:Image/png;base64," + strBase64;


           Image img = new Image();
           img.ID = "img" + i.ToString();
           img.ImageUrl = "data:Image/jpg;base64," + strBase64;
           //img.Height = 64;
           img.Width = 200;


           Label objLabel = new Label();
           objLabel.ID = "label" + i.ToString();
           objLabel.ForeColor = System.Drawing.Color.Green;
           objLabel.Font.Bold = true;
           objLabel.Text = "<br/>" + reader["Doctorsname"].ToString() + "<br/>";
           Label objLabel2 = new Label();
           objLabel2.Font.Size = 10;
           objLabel2.ForeColor = System.Drawing.Color.Black;
           objLabel2.ID = "lblQ" + i.ToString();
           objLabel2.Text = "Qualification: " + reader["Qualification"].ToString() + "<br/>";

           Label objLabel3 = new Label();
           objLabel3.ID = "lblD" + i.ToString();
           objLabel3.Font.Size = 10;
           objLabel3.ForeColor = System.Drawing.Color.Black;
           objLabel3.Text = "<b>Department</b>: " + reader["Department"].ToString() + "<br/>";

           Label objLabel4 = new Label();
           objLabel4.ID = "lblS" + i.ToString();
           objLabel4.Font.Size = 10;
           objLabel4.ForeColor = System.Drawing.Color.Black;
           objLabel4.Text = "<b>Specialisation</b>: " + reader["Specialization"].ToString() + "<br/>";

           Label objLabel5 = new Label();
           objLabel5.ForeColor = System.Drawing.Color.Black;
           objLabel5.Font.Size = 10;
           objLabel5.ID = "lblC" + i.ToString();
           objLabel5.Text = "<b>Contact</b>: " + reader["Contact"].ToString() + "<br/>";


           Placeholder1.Controls.Add(img);
           Placeholder1.Controls.Add(objLabel);
           Placeholder1.Controls.Add(objLabel2);
           Placeholder1.Controls.Add(objLabel3);
           Placeholder1.Controls.Add(objLabel4);
           Placeholder1.Controls.Add(objLabel5);
           Placeholder1.Controls.Add(new LiteralControl("<hr />"));



       }
       else
       {
           con.Close();
           SqlConnection con1 = new SqlConnection();
           con1.ConnectionString = ConfigurationManager.ConnectionStrings["messi"].ConnectionString;
           con1.Open();
           SqlDataReader reader1;
           cmd1 = new SqlCommand("Select * from app where firstname=" + "'" + s + "'", con1);
           reader1 = cmd1.ExecuteReader();
            i = 1;
           if (reader1.Read())
           {

               Label objLabel1 = new Label();
               objLabel1.Font.Size = 15;
               objLabel1.ForeColor = System.Drawing.Color.Green;
               objLabel1.ID = "lblQ" + i.ToString();
               objLabel1.Text = "Firstname: " + reader1["firstname"].ToString() + "<br/>";
               
               Label objLabel2 = new Label();
               objLabel2.Font.Size = 15;
               objLabel2.ForeColor = System.Drawing.Color.Black;
               objLabel2.ID = "lblQ" + i.ToString();
               objLabel2.Text = "Lastname: " + reader1["lastname"].ToString() + "<br/>";

               Label objLabel3 = new Label();
               objLabel3.ID = "lblD" + i.ToString();
               objLabel3.Font.Size = 15;
               objLabel3.ForeColor = System.Drawing.Color.Black;
               objLabel3.Text = "<b>Gender: </b>: " + reader1["gender"].ToString() + "<br/>";

               Label objLabel4 = new Label();
               objLabel4.ID = "lblS" + i.ToString();
               objLabel4.Font.Size = 15;
               objLabel4.ForeColor = System.Drawing.Color.Black;
               objLabel4.Text = "<b>Problem: </b>: " + reader1["problem"].ToString() + "<br/>";

               Label objLabel5 = new Label();
               objLabel5.ForeColor = System.Drawing.Color.Black;
               objLabel5.Font.Size = 15;
               objLabel5.ID = "lblC" + i.ToString();
               objLabel5.Text = "<b>Doctor: </b>: " + reader1["doctor"].ToString() + "<br/>";

               Label objLabel6 = new Label();
               objLabel6.ForeColor = System.Drawing.Color.Black;
               objLabel6.Font.Size = 15;
               objLabel6.ID = "lblC" + i.ToString();
               objLabel6.Text = "<b>Nationality: </b>: " + reader1["nationality"].ToString() + "<br/>";

               Label objLabel7 = new Label();
               objLabel7.ForeColor = System.Drawing.Color.Black;
               objLabel7.Font.Size = 15;
               objLabel7.ID = "lblC" + i.ToString();
               objLabel7.Text = "<b>Contact: </b>: " + reader1["contact"].ToString() + "<br/>";


               Placeholder1.Controls.Add(objLabel1);
               Placeholder1.Controls.Add(objLabel2);
               Placeholder1.Controls.Add(objLabel3);
               Placeholder1.Controls.Add(objLabel4);
               Placeholder1.Controls.Add(objLabel5);
               Placeholder1.Controls.Add(objLabel6);
               Placeholder1.Controls.Add(objLabel7);
               Placeholder1.Controls.Add(new LiteralControl("<hr />"));














           }
           else
           {

               int x = 1;
               Label objLabel10 = new Label();
               objLabel10.ForeColor = System.Drawing.Color.Red;
               objLabel10.Font.Size = 15;
               objLabel10.ID = "lblQ"+x.ToString();
               objLabel10.Text = "<b>Nothing Found In the Database Like The Given Input</b>";
               Placeholder1.Controls.Add(objLabel10);

           }













       }
       con.Close();
    
    
    }
}