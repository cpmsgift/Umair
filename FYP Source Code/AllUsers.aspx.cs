using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class FYP_Source_Code_AllUsers : System.Web.UI.Page
{
    string connectionString = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void registerButton_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            string query = "insert into Users(user_id,user_name,user_role,user_description,user_password)values(@id,@name,@role,@description,@password)";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            cmd.Parameters.AddWithValue("@id", id.Text.Trim());
            cmd.Parameters.AddWithValue("@name", name.Text.Trim());
            cmd.Parameters.AddWithValue("@role", role.SelectedValue.Trim());
            cmd.Parameters.AddWithValue("@description", Description.Text.Trim());
            cmd.Parameters.AddWithValue("@password", Password.Text.Trim());
            cmd.ExecuteNonQuery();
            conn.Close();
            string user_id = id.Text.Trim();
            //Clear();
            if (user_id == "")
                SuccessMessage.Text = "Saved!";
        }
    }

}