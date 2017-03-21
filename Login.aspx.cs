using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    DatabaseConnection dbc = new DatabaseConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetImageUrl();
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {

        SetImageUrl();
    }

    private void SetImageUrl()
    {
        Random _rand = new Random();
        int i = _rand.Next(1, 7);
        Image1.ImageUrl = "~/slider/" + i.ToString() + ".jpg";
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("www.facebook.com");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("www.gmail.com");
    }
    protected void bttnregister_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
    protected void bttnlogin_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dbc.getConnect("select EmailId from Register where EmailId='" + txtemailid.Text + "' and Password='" + txtpswrd.Text + "'", dt);
        if (dt.Rows.Count.ToString() == "1")
        {
            Session["EmailId"] = txtemailid.Text;
            Session["Password"] = txtpswrd.Text;
            Response.Redirect("Homepage.aspx");
        }
        else
        {
            Label1.Text = "Please Login With Correct EmailId And Password !";
        }
        
        
    }
}