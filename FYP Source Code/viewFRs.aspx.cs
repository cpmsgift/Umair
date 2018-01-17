using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class viewFRs : System.Web.UI.Page
{
    SqlConnection sqlCon = new SqlConnection(@"Data Source=(local)\sqlexpress;Initial Catalog=CPMS;Integrated security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            FillGridView();
        }
    }

    protected void gvFr_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    void FillGridView()
    {
        if (sqlCon.State == System.Data.ConnectionState.Closed)
            sqlCon.Open();
        SqlDataAdapter sqlDa = new SqlDataAdapter("ViewFr", sqlCon);
        sqlDa.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
        System.Data.DataTable dtbl = new System.Data.DataTable();
        sqlDa.Fill(dtbl);
        gvFr.DataSource = dtbl;
        gvFr.DataBind();

    }
    protected void lnk_OnClick(object Sender, EventArgs e)
    {
        int fr_id = Convert.ToInt32((Sender as LinkButton).CommandArgument);
        if (sqlCon.State == System.Data.ConnectionState.Closed)
            sqlCon.Open();
        SqlDataAdapter sqlDa = new SqlDataAdapter("ViewFrByID", sqlCon);
        sqlDa.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
        sqlDa.SelectCommand.Parameters.AddWithValue("@fr_id", fr_id);
        System.Data.DataTable dtbl = new System.Data.DataTable();
        sqlDa.Fill(dtbl);
       
    }
}