using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class conductMeeting : System.Web.UI.Page
{
    string connectionString = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        bindProject();
    }

    protected void bindProject()
    {
        SqlConnection strcon1 = new SqlConnection(connectionString);
        strcon1.Open();
        string ADDStr = "SELECT proj_id,proj_name FROM Project";
        SqlCommand ADDCmd = new SqlCommand(ADDStr, strcon1);
        DataTable table = new DataTable();


        SqlDataAdapter adapter = new SqlDataAdapter(ADDCmd);

        adapter.Fill(table);


        MeetingCall.DataSource = table;
        MeetingCall.DataValueField = "proj_id"; //The Value of the DropDownList, to get it you should call ddlDepartments.SelectedValue;
        MeetingCall.DataTextField = "proj_name"; //The Name shown of the DropDownList.
        MeetingCall.DataBind();
    }
}