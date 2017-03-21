using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class DataCard : System.Web.UI.Page
{
    DatabaseConnection dbc = new DatabaseConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["EmailId"] != null)
        {
            Label1.Text = Session["EmailId"].ToString();
        }
    }
    protected void bttnrecharge_Click(object sender, EventArgs e)
    {
        if (Label1.Text == "")
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            DataTable dt = new DataTable();
            dbc.InsertData("insert into DataCard values('" + ddloperator.Text + "','" + txtsubscriberId.Text + "','" + txtamount.Text + "')");
            Response.Write("<script>alert('Your SubscriberID is')</script>");
            
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
}