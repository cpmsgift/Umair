using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class supervisorHome1 : System.Web.UI.Page
{
    string connectionString = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        bindSupervisor();
    }
    protected void bindSupervisor()
    {
        SqlConnection strcon1 = new SqlConnection(connectionString);
        strcon1.Open();
        string ADDStr = "SELECT sup_id FROM Supervisor";
        SqlCommand ADDCmd = new SqlCommand(ADDStr, strcon1);
        DataTable table = new DataTable();


        SqlDataAdapter adapter = new SqlDataAdapter(ADDCmd);

        adapter.Fill(table);


        supDropdown.DataSource = table;
        supDropdown.DataValueField = "sup_id"; //The Value of the DropDownList, to get it you should call ddlDepartments.SelectedValue;
        supDropdown.DataTextField = "sup_id"; //The Name shown of the DropDownList.
        supDropdown.DataBind();
    }


    protected void supDropdown_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            String query = "SELECT proj_id as ID,proj_name as Title,proj_description as Description FROM [Project] WHERE sup_id = @sup_id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@sup_id", Convert.ToInt32(supDropdown.SelectedValue));
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            if (sdr.HasRows)
            {
                dt.Load(sdr);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["projectId"] = GridView1.SelectedRow.Cells[0].Text.Trim();
        Response.Redirect("projectProgress1.aspx");
    }
}