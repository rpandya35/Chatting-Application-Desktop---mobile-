using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Convert.ToString(Session["fname"]) == "user")
        {
            Panel2.Visible = true;
        }
        else
        {
            Panel2.Visible = false;
        }
    }
}
