using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class DTH_Recharge : System.Web.UI.Page
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
            dbc.InsertData("insert into DthRecharge values('" + ddoperator.Text + "','" + txtsubscriberId.Text + "','" + txtamount.Text + "')");
            Response.Write("<script>alert('Your SubscriberID is ')</script>");
            
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string i = DropDownList1.SelectedItem.Value;
        switch (i)
        {
            case "1":
                Image1.ImageUrl = "~/dth recharge/AirtelDthRechargeplan.html";
                break;
            case "2":
                Image1.ImageUrl = "~/Images/login.jpg";
                break;
            case "3":
                Image1.ImageUrl = "http://localhost:44811/Images/createaccount_button.png";
                break;
            default :
                Image1.ImageUrl = "~/Images/login.jpg";
                break;
        }
    }
}