using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class projectProgress1 : System.Web.UI.Page
{
    string connectionString = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["projectId"] != null)
        {
            string id = Session["projectId"].ToString();
        }
    }
}