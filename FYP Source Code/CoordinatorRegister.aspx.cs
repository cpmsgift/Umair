using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class FYP_Source_Code_CoordinatorRegister : System.Web.UI.Page
{
    string connectionString = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void reg_Click(object sender, EventArgs e)
    {

        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            string query = "insert into Coordinator(cord_id,cord_name,cord_password,session_id) values(@id,@name,@password,@session)";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            cmd.Parameters.AddWithValue("@id", id.Text.Trim());
            cmd.Parameters.AddWithValue("@name", name.Text.Trim());
            cmd.Parameters.AddWithValue("@password", Password.Text.Trim());
            cmd.Parameters.AddWithValue("@session", session.Text.Trim());
            cmd.ExecuteNonQuery();

        }
    }

    protected void login_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }
}