using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class MList : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=182.50.133.110;Initial Catalog=PcChat;Persist Security Info=True;User ID=PcChat;Password=Kka4#33m");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["fname"] != "user")
        {
            Response.Redirect("MLogin.aspx");
        }

        SqlDataAdapter da = new SqlDataAdapter("Select ID,Name1,Image1,Flag,Name2,Image2 from PCContact where ID = '" + Session["mid"].ToString() + "' OR Name1 = '" + Session["mname"].ToString() + "' Order By Flag", con);
        DataSet ds = new DataSet();
        da.Fill(ds);

        int count = ds.Tables[0].Rows.Count;

        load(count, ds);
    }

    public void load(int cou, DataSet ds)
    {
        string n1 = Session["mname"].ToString();
        clear();

        if (cou >= 1)
        {
            if (n1 == ds.Tables[0].Rows[0][4].ToString())
            {
                Name1.Text = ds.Tables[0].Rows[0][1].ToString();
                Image1.ImageUrl = ds.Tables[0].Rows[0][2].ToString();
            }
            else
            {
                Name1.Text = ds.Tables[0].Rows[0][4].ToString();
                Image1.ImageUrl = ds.Tables[0].Rows[0][5].ToString();
            }

            if (ds.Tables[0].Rows[0][3].ToString() == "A")
            {
                Mark1.Visible = true;
            }
            else
            {
                Mark1.Visible = false;
            }
            Panel1.Visible = true;
        }
        if (cou >= 2)
        {
            if (n1 == ds.Tables[0].Rows[1][4].ToString())
            {
                Name2.Text = ds.Tables[0].Rows[1][1].ToString();
                Image2.ImageUrl = ds.Tables[0].Rows[1][2].ToString();
            }
            else
            {
                Name2.Text = ds.Tables[0].Rows[1][4].ToString();
                Image2.ImageUrl = ds.Tables[0].Rows[1][5].ToString();
            }
            if (ds.Tables[0].Rows[1][3].ToString() == "A")
            {
                Mark2.Visible = true;
            }
            else
            {
                Mark2.Visible = false;
            }
            Panel2.Visible = true;
        }
        if (cou >= 3)
        {
            if (n1 == ds.Tables[0].Rows[2][4].ToString())
            {
                Name3.Text = ds.Tables[0].Rows[2][1].ToString();
                Image3.ImageUrl = ds.Tables[0].Rows[2][2].ToString();
            }
            else
            {
                Name3.Text = ds.Tables[0].Rows[2][4].ToString();
                Image3.ImageUrl = ds.Tables[0].Rows[2][5].ToString();
            }
            if (ds.Tables[0].Rows[2][3].ToString() == "A")
            {
                Mark3.Visible = true;
            }
            else
            {
                Mark3.Visible = false;
            }
            Panel3.Visible = true;
        }
        if (cou >= 4)
        {
            if (n1 == ds.Tables[0].Rows[3][4].ToString())
            {
                Name4.Text = ds.Tables[0].Rows[3][1].ToString();
                Image4.ImageUrl = ds.Tables[0].Rows[3][2].ToString();
            }
            else
            {
                Name4.Text = ds.Tables[0].Rows[3][4].ToString();
                Image4.ImageUrl = ds.Tables[0].Rows[3][5].ToString();
            }

            if (ds.Tables[0].Rows[3][3].ToString() == "A")
            {
                Mark4.Visible = true;
            }
            else
            {
                Mark4.Visible = false;
            }
            Panel4.Visible = true;
        }
        if (cou >= 5)
        {
            if (n1 == ds.Tables[0].Rows[4][4].ToString())
            {
                Name5.Text = ds.Tables[0].Rows[4][1].ToString();
                Image5.ImageUrl = ds.Tables[0].Rows[4][2].ToString();
            }
            else
            {
                Name5.Text = ds.Tables[0].Rows[4][4].ToString();
                Image5.ImageUrl = ds.Tables[0].Rows[4][5].ToString();
            }

            if (ds.Tables[0].Rows[4][3].ToString() == "A")
            {
                Mark5.Visible = true;
            }
            else
            {
                Mark5.Visible = false;
            }
            Panel5.Visible = true;
        }
        if (cou >= 6)
        {
            if (n1 == ds.Tables[0].Rows[5][4].ToString())
            {
                Name6.Text = ds.Tables[0].Rows[5][1].ToString();
                Image6.ImageUrl = ds.Tables[0].Rows[5][2].ToString();
            }
            else
            {
                Name6.Text = ds.Tables[0].Rows[5][4].ToString();
                Image6.ImageUrl = ds.Tables[0].Rows[5][5].ToString();
            }

            if (ds.Tables[0].Rows[5][3].ToString() == "A")
            {
                Mark6.Visible = true;
            }
            else
            {
                Mark6.Visible = false;
            }
            Panel6.Visible = true;
        }
        if (cou >= 7)
        {
            if (n1 == ds.Tables[0].Rows[6][4].ToString())
            {
                Name7.Text = ds.Tables[0].Rows[6][1].ToString();
                Image7.ImageUrl = ds.Tables[0].Rows[6][2].ToString();
            }
            else
            {
                Name7.Text = ds.Tables[0].Rows[6][4].ToString();
                Image7.ImageUrl = ds.Tables[0].Rows[6][5].ToString();
            }

            if (ds.Tables[0].Rows[6][3].ToString() == "A")
            {
                Mark7.Visible = true;
            }
            else
            {
                Mark7.Visible = false;
            }
            Panel7.Visible = true;
        }
        if (cou >= 8)
        {
            if (n1 == ds.Tables[0].Rows[7][4].ToString())
            {
                Name8.Text = ds.Tables[0].Rows[7][1].ToString();
                Image8.ImageUrl = ds.Tables[0].Rows[7][2].ToString();
            }
            else
            {
                Name8.Text = ds.Tables[0].Rows[7][4].ToString();
                Image8.ImageUrl = ds.Tables[0].Rows[7][5].ToString();
            }

            if (ds.Tables[0].Rows[7][3].ToString() == "A")
            {
                Mark8.Visible = true;
            }
            else
            {
                Mark8.Visible = false;
            }
            Panel8.Visible = true;
        }
        if (cou >= 9)
        {
            if (n1 == ds.Tables[0].Rows[8][4].ToString())
            {
                Name9.Text = ds.Tables[0].Rows[8][1].ToString();
                Image9.ImageUrl = ds.Tables[0].Rows[8][2].ToString();
            }
            else
            {
                Name9.Text = ds.Tables[0].Rows[8][4].ToString();
                Image9.ImageUrl = ds.Tables[0].Rows[8][5].ToString();
            }

            if (ds.Tables[0].Rows[8][3].ToString() == "A")
            {
                Mark9.Visible = true;
            }
            else
            {
                Mark9.Visible = false;
            }
            Panel9.Visible = true;
        }
        if (cou >= 10)
        {
            if (n1 == ds.Tables[0].Rows[9][4].ToString())
            {
                Name10.Text = ds.Tables[0].Rows[9][1].ToString();
                Image10.ImageUrl = ds.Tables[0].Rows[9][2].ToString();
            }
            else
            {
                Name10.Text = ds.Tables[0].Rows[9][4].ToString();
                Image10.ImageUrl = ds.Tables[0].Rows[9][5].ToString();
            }

            if (ds.Tables[0].Rows[9][3].ToString() == "A")
            {
                Mark10.Visible = true;
            }
            else
            {
                Mark10.Visible = false;
            }
            Panel10.Visible = true;
        }
    }

    public void clear()
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
        Panel9.Visible = false;
        Panel10.Visible = false;
    }

    protected void Name1_Click(object sender, EventArgs e)
    {
        string com = "SELECT CId FROM PCContact WHERE (Name1 = '" + Session["mname"].ToString() + "') AND (Name2 = '" + Name1.Text + "') OR (Name1 = '" + Name1.Text + "') AND (Name2 = '" + Session["mname"].ToString() + "')";
        SqlCommand cmd = new SqlCommand(com, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Session["C_ID"] = dr[0].ToString();
        con.Close();
        Response.Redirect("MChat.aspx");
    }
    protected void Name2_Click(object sender, EventArgs e)
    {
        string com = "SELECT CId FROM PCContact WHERE (Name1 = '" + Session["mname"].ToString() + "') AND (Name2 = '" + Name2.Text + "') OR (Name1 = '" + Name2.Text + "') AND (Name2 = '" + Session["mname"].ToString() + "')";
        SqlCommand cmd = new SqlCommand(com, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Session["C_ID"] = dr[0].ToString();
        con.Close();
        Response.Redirect("MChat.aspx");
    }
    protected void Name3_Click(object sender, EventArgs e)
    {
        string com = "SELECT CId FROM PCContact WHERE (Name1 = '" + Session["mname"].ToString() + "') AND (Name2 = '" + Name3.Text + "') OR (Name1 = '" + Name3.Text + "') AND (Name2 = '" + Session["mname"].ToString() + "')";
        SqlCommand cmd = new SqlCommand(com, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Session["C_ID"] = dr[0].ToString();
        con.Close();
        Response.Redirect("MChat.aspx");
    }
    protected void Name4_Click(object sender, EventArgs e)
    {
        string com = "SELECT CId FROM PCContact WHERE (Name1 = '" + Session["mname"].ToString() + "') AND (Name2 = '" + Name4.Text + "') OR (Name1 = '" + Name4.Text + "') AND (Name2 = '" + Session["mname"].ToString() + "')";
        SqlCommand cmd = new SqlCommand(com, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Session["C_ID"] = dr[0].ToString();
        con.Close();
        Response.Redirect("MChat.aspx");
    }

    protected void Name5_Click(object sender, EventArgs e)
    {
        string com = "SELECT CId FROM PCContact WHERE (Name1 = '" + Session["mname"].ToString() + "') AND (Name2 = '" + Name5.Text + "') OR (Name1 = '" + Name5.Text + "') AND (Name2 = '" + Session["mname"].ToString() + "')";
        SqlCommand cmd = new SqlCommand(com, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Session["C_ID"] = dr[0].ToString();
        con.Close();
        Response.Redirect("MChat.aspx");
    }
    protected void Name6_Click(object sender, EventArgs e)
    {
        string com = "SELECT CId FROM PCContact WHERE (Name1 = '" + Session["mname"].ToString() + "') AND (Name2 = '" + Name6.Text + "') OR (Name1 = '" + Name6.Text + "') AND (Name2 = '" + Session["mname"].ToString() + "')";
        SqlCommand cmd = new SqlCommand(com, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Session["C_ID"] = dr[0].ToString();
        con.Close();
        Response.Redirect("MChat.aspx");
    }
    protected void Name7_Click(object sender, EventArgs e)
    {
        string com = "SELECT CId FROM PCContact WHERE (Name1 = '" + Session["mname"].ToString() + "') AND (Name2 = '" + Name7.Text + "') OR (Name1 = '" + Name7.Text + "') AND (Name2 = '" + Session["mname"].ToString() + "')";
        SqlCommand cmd = new SqlCommand(com, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Session["C_ID"] = dr[0].ToString();
        con.Close();
        Response.Redirect("MChat.aspx");
    }
    protected void Name8_Click(object sender, EventArgs e)
    {
        string com = "SELECT CId FROM PCContact WHERE (Name1 = '" + Session["mname"].ToString() + "') AND (Name2 = '" + Name8.Text + "') OR (Name1 = '" + Name8.Text + "') AND (Name2 = '" + Session["mname"].ToString() + "')";
        SqlCommand cmd = new SqlCommand(com, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Session["C_ID"] = dr[0].ToString();
        con.Close();
        Response.Redirect("MChat.aspx");
    }
    protected void Name9_Click(object sender, EventArgs e)
    {
        string com = "SELECT CId FROM PCContact WHERE (Name1 = '" + Session["mname"].ToString() + "') AND (Name2 = '" + Name9.Text + "') OR (Name1 = '" + Name9.Text + "') AND (Name2 = '" + Session["mname"].ToString() + "')";
        SqlCommand cmd = new SqlCommand(com, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Session["C_ID"] = dr[0].ToString();
        con.Close();
        Response.Redirect("MChat.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string com = "SELECT CId FROM PCContact WHERE (Name1 = '" + Session["mname"].ToString() + "') AND (Name2 = '" + Name10.Text + "') OR (Name1 = '" + Name10.Text + "') AND (Name2 = '" + Session["mname"].ToString() + "')";
        SqlCommand cmd = new SqlCommand(com, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Session["C_ID"] = dr[0].ToString();
        con.Close();
        Response.Redirect("MChat.aspx");
    }
}