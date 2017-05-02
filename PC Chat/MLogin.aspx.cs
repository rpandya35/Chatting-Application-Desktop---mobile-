using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=182.50.133.110;Initial Catalog=PcChat;Persist Security Info=True;User ID=PcChat;Password=Kka4#33m");
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        err.Text = "";
        SqlCommand cmd;
        SqlDataReader dr;
        string s = "select Pass,Name from PCMember where id='" + TextBox1.Text + "'";
        con.Open();
        cmd = new SqlCommand(s, con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            if (TextBox2.Text == Convert.ToString(dr[0]))
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Login Successful !!!');", true);
                Session["fname"] = "user";
                Session["mid"] = TextBox1.Text;
                Session["mname"] = dr[1].ToString();
                con.Close();
                Response.Redirect("MList.aspx");
            }
            else
            {
                con.Close();
                err.Text = " Error  : Invalid Password";
            }
        }
        else
        {
            con.Close();
            err.Text = " Error  : Invalid ID";
        }
    }
}