using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class register : System.Web.UI.Page
{
    string connectionString = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;  
    protected void Page_Load(object sender, EventArgs e)
    {
        bindProject();//function call to bind 
    }

    //binding of dropdown list in the form
    protected void bindProject()
    {
        SqlConnection strcon1 = new SqlConnection(connectionString);
        strcon1.Open();
        string ADDStr = "SELECT proj_id,proj_name FROM Project";
        SqlCommand ADDCmd = new SqlCommand(ADDStr, strcon1);
        DataTable table = new DataTable();


        SqlDataAdapter adapter = new SqlDataAdapter(ADDCmd);

        adapter.Fill(table);

        
        propID.DataSource = table;
        propID.DataValueField = "proj_id"; //The Value of the DropDownList, to get it you should call ddlDepartments.SelectedValue;
        //propID.DataTextField = "proj_name"; //The Name shown of the DropDownList.
        propID.DataBind();

    }

    //Query execution
    protected void registerButton_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            string query = "insert into student(st_id,st_name,credit_hours,cgpa,st_password,proj_id) values(@id,@name,@creditHours,@cgpa,@password,@projectId)";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            cmd.Parameters.AddWithValue("@id", id.Text.Trim());
            cmd.Parameters.AddWithValue("@name", name.Text.Trim());
            cmd.Parameters.AddWithValue("@creditHours", creditHr.Text.Trim());
            cmd.Parameters.AddWithValue("@cgpa", cgpa.Text.Trim());
            cmd.Parameters.AddWithValue("@password", Password.Text.Trim());
            cmd.Parameters.AddWithValue("@projectId", propID.Text.Trim());
            cmd.ExecuteNonQuery();
        }
    }
}