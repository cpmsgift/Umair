using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class openIdea : System.Web.UI.Page
{
    string connectionString = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

       /* using (SqlConnection conn = new SqlConnection(connectionString))
        {
            string query = "select idea_name,idea_description from Project_ideas";
            SqlCommand cmd = new SqlCommand(query, conn);

            conn.Open();

        }*/
    }
}