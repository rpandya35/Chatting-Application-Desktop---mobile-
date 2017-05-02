using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

public partial class NewChat : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=182.50.133.110;Initial Catalog=PcChat;Persist Security Info=True;User ID=PcChat;Password=Kka4#33m");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            C_ID.Text = Session["C_ID"].ToString();
            P_Name.Text = Session["mname"].ToString();

            SqlDataAdapter da = new SqlDataAdapter("Select Chat,Flag,Name1,Name2 from PCChats Where Case_ID='" + C_ID.Text + "' Order By Date,Time Desc", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int rows = ds.Tables[0].Rows.Count;

            if (rows != 0)
            {
                Label3.Text = "";
                var txt = new StringBuilder();
                for (int i = 0; i < rows; i++)
                {
                    txt.Append(ds.Tables[0].Rows[i][0].ToString() + "<br/><br/>");
                }
                Label3.Text = txt.ToString();

                SqlCommand cmd = new SqlCommand("Update PCChats set Flag = 'No' where Case_ID='" + C_ID.Text + "' ", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                cmd = new SqlCommand("Update PCContact set Flag='B' where CId='" + C_ID.Text + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        int cou = Convert.ToInt32(Label2.Text);
        Label2.Text = "" + (cou + 1);
        DateTime dt = DateTime.Now;
        string cdate = String.Format("{0:dd-MM-yy}", dt);


        SqlDataAdapter da = new SqlDataAdapter("Select Chat,Flag from PCChats Where Case_ID='" + C_ID.Text + "' Order By Date,Time Desc", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        int rows = ds.Tables[0].Rows.Count;

        if (rows != 0)
        {

            Label3.Text = "";
            var txt = new StringBuilder();
            for (int i = 0; i < rows; i++)
            {
                txt.Append(ds.Tables[0].Rows[i][0].ToString() + "<br/><br/>");
            }
            Label3.Text = txt.ToString();

            SqlCommand cmd = new SqlCommand("Update PCChats set Flag = 'No' where Case_ID='" + C_ID.Text + "' ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            cmd = new SqlCommand("Update PCContact set Flag='B' where CId='" + C_ID.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime dt = DateTime.Now;
        string cdate = String.Format("{0:dd-MM-yy}", dt);
        string ctime = String.Format("{0:HH:mm:ss}", dt);

        SqlCommand cmd = new SqlCommand("Insert into PCChats (Case_Id,Chat,Date,Time,Flag) Values ('" + C_ID.Text + "','" + P_Name.Text + " :  " + TextBox1.Text + "','" + cdate + "','" + ctime + "','Yes')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox1.Text = "";

        cmd = new SqlCommand("Update PCContact set Flag='A' where CId='" + C_ID.Text + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
}