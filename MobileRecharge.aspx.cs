using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MobileRecharge : System.Web.UI.Page
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
            dbc.InsertData("insert into MobileRecharge values('" + txtmbno.Text + "','" + ddloperator.Text + "','" + ddlcountry.Text + "','" + txtamount.Text + "')");
            Response.Write("<script>alert('Your MobileNumber is' + txtmobno.Text )</script>");
            txtmbno.Text = String.Empty;
            ddloperator.DataTextField = "--Select--";
            ddlcountry.DataTextField = "--Select--";
            txtamount.Text = String.Empty;
            
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }

    protected void rb1_CheckedChanged(object sender, EventArgs e)
    {
        string Services = string.Empty;
        if (rb1.Checked)
        {
            Services = "PrePaid";
        }
        else if (rb2.Checked)
        {
            Services = "PostPaid";
        }
    }
    protected void rb2_CheckedChanged(object sender, EventArgs e)
    {
        string Services = string.Empty;
        if (rb1.Checked)
        {
            Services = "PrePaid";
        }
        else if (rb2.Checked)
        {
            Services = "PostPaid";
        }
    }
    protected void rb3_CheckedChanged(object sender, EventArgs e)
    {
        string RechargeType = string.Empty;
        if (rb3.Checked)
        {
            RechargeType = "TopUp";
        }
        else if (rb4.Checked)
        {
            RechargeType = "Special";
        }
    }
    protected void rb4_CheckedChanged(object sender, EventArgs e)
    {
        string RechargeType = string.Empty;
        if (rb3.Checked)
        {
            RechargeType = "TopUp";
        }
        else if (rb4.Checked)
        {
            RechargeType = "Special";
        }
    }
}