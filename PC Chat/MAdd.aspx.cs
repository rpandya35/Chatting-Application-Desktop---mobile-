using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class MAdd : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=182.50.133.110;Initial Catalog=PcChat;Persist Security Info=True;User ID=PcChat;Password=Kka4#33m");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["fname"] != "user")
        {
            Response.Redirect("MLogin.aspx");
        }

        if (Session["AddN"] == "Yes")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('New Contact Added Successfully !!!');", true);
        }

        string id = Session["mid"].ToString();
        SqlDataAdapter da = new SqlDataAdapter("SELECT Name, Mobile FROM PCMember WHERE (ID <> '" + id + "') AND (Name NOT IN (SELECT Name2 FROM PCContact WHERE (Name1 = '" + Session["mname"].ToString() + "'))) AND (Name NOT IN (SELECT Name1 FROM PCContact WHERE Name2 = '" + Session["mname"].ToString() + "'))", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Add")
        {
            string id = Session["mid"].ToString();
            string i1 = Convert.ToString(e.CommandArgument.ToString());
            SqlCommand cmd = new SqlCommand("Select Image from PCMember where Name ='" + i1 + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            string img = dr[0].ToString();
            con.Close();


            string nid = "";
            cmd = new SqlCommand("select top 1 CId From PCContact ORDER BY CId Desc", con);
            con.Open();
            object count = cmd.ExecuteScalar();
            if (count != null)
            {
                int i = Convert.ToInt32(count);
                i++;
                nid = i.ToString();
            }
            else
            {
                nid = "10001";
            }
            con.Close();


            string name = Session["mname"].ToString();
            string im = Session["mimg"].ToString();

            cmd = new SqlCommand("Insert into PCContact Values ('" + id + "','" + nid + "','" + i1 + "','" + img + "','" + name + "','" + im + "','B')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Session["AddN"] = "Yes";
            Response.Redirect("AddFriend.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = Session["mid"].ToString();
        SqlDataAdapter da = new SqlDataAdapter("SELECT Name, Mobile FROM PCMember WHERE (ID <> '" + id + "') AND (Name Like '%" + TextBox1.Text + "%') AND (Name NOT IN (SELECT Name2 FROM PCContact WHERE (Name1 = '" + Session["mname"].ToString() + "'))) AND (Name NOT IN (SELECT Name1 FROM PCContact WHERE Name2 = '" + Session["mname"].ToString() + "'))", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}