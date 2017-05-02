using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Contacts : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=182.50.133.110;Initial Catalog=PcChat;Persist Security Info=True;User ID=PcChat;Password=Kka4#33m");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["fname"] != "user")
        {
            Response.Redirect("Login.aspx");
        }

        SqlDataAdapter da = new SqlDataAdapter("SELECT CID, Name2, Image2 FROM PCContact where Name1 = '" + Session["mname"].ToString() + "'  Order By Name2 ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        da = new SqlDataAdapter("SELECT CID, Name1, Image1 FROM PCContact where Name2 = '" + Session["mname"].ToString() + "' Order By Name1", con);
        ds = new DataSet();
        da.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind(); 
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = Session["mid"].ToString();
        SqlDataAdapter da = new SqlDataAdapter("SELECT CID, Name1, Image1 FROM PCContact WHERE (ID = '" + id + "') AND Name1 Like '%" + TextBox1.Text + "%' Order By Name1 ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        da = new SqlDataAdapter("SELECT CID, Name2, Image2 FROM PCContact where Name1 = '" + Session["mname"].ToString() + "' AND Name2 Like '%" + TextBox1.Text + "%' Order By Name2 ", con);
        ds = new DataSet();
        da.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Chat")
        {
            string i1 = Convert.ToString(e.CommandArgument.ToString());
            string com = "SELECT CId FROM PCContact WHERE (Name1 = '" + Session["mname"].ToString() + "') AND (Name2 = '" + i1 + "') OR (Name1 = '" + i1 + "') AND (Name2 = '" + Session["mname"].ToString() + "')";
            SqlCommand cmd = new SqlCommand(com, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            Session["C_ID"] = dr[0].ToString();
            con.Close();
            Response.Redirect("NewChat.aspx");
        }    
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Chat")
        {
            string i1 = Convert.ToString(e.CommandArgument.ToString());
            string com = "SELECT CId FROM PCContact WHERE (Name1 = '" + Session["mname"].ToString() + "') AND (Name2 = '" + i1 + "') OR (Name1 = '" + i1 + "') AND (Name2 = '" + Session["mname"].ToString() + "')";
            SqlCommand cmd = new SqlCommand(com, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            Session["C_ID"] = dr[0].ToString();
            con.Close();
            Response.Redirect("NewChat.aspx");
        }
    }
}