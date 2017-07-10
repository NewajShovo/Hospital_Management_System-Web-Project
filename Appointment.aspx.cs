using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class Appointment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["Login"] == null)
                {
                    Response.Redirect("Invalid.aspx");
                }
                else
                {
                    string constr = ConfigurationManager.ConnectionStrings["messi"].ToString();
                    SqlConnection con = new SqlConnection(constr);
                    con.Open();
                    SqlCommand com = new SqlCommand("select *from doctorinfo", con); // table name 
                    SqlDataAdapter da = new SqlDataAdapter(com);
                    DataSet ds = new DataSet();
                    da.Fill(ds);  // fill dataset
                    DropDownList2.DataTextField = ds.Tables[0].Columns["doctorsname"].ToString(); // text field name of table dispalyed in dropdown
                    //// DropDownList2.DataValueField = ds.Tables[0].Columns["id"].ToString();             // to retrive specific  textfield name 
                    DropDownList2.DataSource = ds.Tables[0];     //assigning datasource to the dropdownlist
                    DropDownList2.DataBind();  //binding dropdownlist



                }
            }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox4.Text == "" || TextBox6.Text == "" || TextBox7.Text == "")
        {
            Label6.Text = "Please Fill all the field";
        }
        else
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["messi"].ConnectionString;

            {
                
                SqlCommand cmd = new SqlCommand("INSERT INTO app (FirstName,LastName,Nationality,Gender,Contact,Problem,Doctor) VALUES (@Fname,@Lname,@Natio,@Gend,@Conta,@prob,@doc)", con);
                //cmd.CommandType = CommandType.StoredProcedure;
                // (@Fname,@Lname,@mail,@Natio,@Gender,@Conta,@prob,@doctor)
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                string s = DropDownList2.SelectedValue;
                cmd.Parameters.AddWithValue("@Fname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Lname", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Natio", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Gend", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@Conta", TextBox6.Text);
                cmd.Parameters.AddWithValue("@prob", TextBox7.Text);
                cmd.Parameters.AddWithValue("@doc", DropDownList2.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                TextBox1.Text = null;
                TextBox2.Text = null;
           
                TextBox4.Text = null;
                TextBox6.Text = null;
                TextBox7.Text = null;

                Label6.Text = "Appointment Booking Successful";

            }
        }
    }
}