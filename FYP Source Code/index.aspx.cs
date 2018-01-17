using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class index : System.Web.UI.Page
{
    string connectionString = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void loginButton_Click(object sender, EventArgs e)
    {
        int count = 0;
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            string query = "SELECT COUNT(*) AS cnt FROM Users WHERE user_id=@id and user_password=@pwd ";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id", Username.Text.Trim());
            cmd.Parameters.AddWithValue("@pwd", Password.Text.Trim());
            conn.Open();

            //count = (int)cmd.ExecuteScalar();



        }
    }

    protected void lnkView_Click(object sender, EventArgs e)
    {
        Response.Redirect("AllUsers.aspx");
    }
}