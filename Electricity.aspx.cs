using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Electricity : System.Web.UI.Page
{
    DatabaseConnection dbc = new DatabaseConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["EmailId"] != null)
        {
            Label1.Text = Session["EmailId"].ToString();
        }

        if(!IsPostBack)
        {
            FillState();
        }

    }

    
    protected void bttnrecharge_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }

    private void FillState()
    { 
        string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using(SqlConnection conn = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("SELECT StateId, StateName from States",conn);
            conn.Open();
            ddlstate.DataSource=cmd.ExecuteReader();
            ddlstate.DataTextField="StateName";
            ddlstate.DataValueField="StateId";
            ddlstate.DataBind();
            ddlstate.Items.Insert(0,"---select---");
        }
    }

    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        int StateId = Convert.ToInt32(ddlstate.SelectedValue.ToString());
        FillCity(StateId);
    }

    private void FillCity(int StateId)
    {
        string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("SELECT CityId, CityName from City", conn);
            conn.Open();
            ddlcity.DataSource = cmd.ExecuteReader();
            ddlcity.DataTextField = "CityName";
            ddlcity.DataValueField = "CityId";
            ddlcity.DataBind();
            ddlcity.Items.Insert(0, "--select--");
        }
    }

    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        int Cityid = Convert.ToInt32(ddlcity.SelectedValue.ToString());
        FillArea(Cityid);
    }

    private void FillArea(int Cityid)
    {
        string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using(SqlConnection conn = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("SELECT AreaId, AreaName from Area",conn);
            conn.Open();
            ddlarea.DataSource=cmd.ExecuteReader();
            ddlarea.DataTextField="AreaName";
            ddlarea.DataValueField="AreaId";
            ddlarea.DataBind();
            ddlarea.Items.Insert(0,"--select--");
        }
    }


    public object CityId { get; set; }
}