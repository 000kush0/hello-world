using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Homepage : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
         if (Session["EmailId"] !=null)
        {
            Label1.Text = Session["EmailId"].ToString();
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
}