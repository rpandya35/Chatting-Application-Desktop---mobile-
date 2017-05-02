using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Drawing;
using System.Drawing.Imaging;


public partial class register : System.Web.UI.Page
{
    string path = "", image = "";
    SqlConnection con = new SqlConnection(@"Data Source=182.50.133.110;Initial Catalog=PcChat;Persist Security Info=True;User ID=PcChat;Password=Kka4#33m");
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd;
        string s = "select top 1 ID from PCMember order by ID desc";
        con.Open();
        cmd = new SqlCommand(s, con);
        object count = cmd.ExecuteScalar();
        int c = Convert.ToInt32(count);
        if (c != 0)
        {
            c = c + 1;
            TextBox1.Text = Convert.ToString(c);
            TextBox1.ReadOnly = true;
        }
        else
        {
            TextBox1.Text = "1001";
            TextBox1.ReadOnly = true;
        }
        con.Close();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('fill the blanks');", true);
        }
        else
        {
            SqlCommand cmd;
            string a = "insert into PCMember values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','"+Image1.ImageUrl+"')";
            con.Open();
            cmd = new SqlCommand(a, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Member added');", true);
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        image = FileUpload1.FileName;
        path = Server.MapPath("~\\img\\");
        path = path + image;
        System.Drawing.Bitmap bmpUploadedImage = new System.Drawing.Bitmap(FileUpload1.PostedFile.InputStream);
        System.Drawing.Image objImage = ScaleImage(bmpUploadedImage, 145);
        objImage.Save(path);
        Image1.ImageUrl = "img\\" + image;
    }


    public static System.Drawing.Image ScaleImage(System.Drawing.Image image, int maxImageHeight)
    {
        var ratio = (double)maxImageHeight / image.Height;
        var newWidth = (int)(image.Width * ratio);
        var newHeight = (int)(image.Height * ratio);
        var newImage = new Bitmap(newWidth, newHeight);
        using (var g = Graphics.FromImage(newImage))
        {
            g.DrawImage(image, 0, 0, newWidth, newHeight);
        }
        return newImage;
    }
}