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

public partial class EditDeleteinfo : System.Web.UI.Page
{
   
   
        protected void Page_Load(object sender, EventArgs e)
    {
        

    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {    
 
        

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        GridViewRow row = GridView1.SelectedRow;

        
        string s= row.Cells[2].Text;

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

       

    }
    protected void DeleteBtn_click(object sender, EventArgs e)
    {

      


    }
    protected void EditBtn_click(object sender, EventArgs e)
    {





    }
}