using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    DatabaseConnection dbc = new DatabaseConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetImageUrl();
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        dbc.InsertData("insert into Register values('" + txtname.Text + "','" + txtEmailId.Text + "','" + txtmobileno.Text + "','" + txtpswrd.Text + "')");
        Response.Redirect("Login.aspx");
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
}