using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class submitFRs : System.Web.UI.Page
{
    SqlConnection sqlCon = new SqlConnection(@"Data Source=(local);Initial Catalog=CPMS;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            btnDelete.Enabled = false;
            FillGridView();
        }

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        Clear();
    }
    public void Clear()
    {
        hffr_id.Value = "";
        txtName.Text = txtDescription.Text = "";
        lblSuccessMessage.Text = lblErrorMessage.Text = "";
        btnSave.Text = "Save";
        btnDelete.Enabled = false;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (sqlCon.State == System.Data.ConnectionState.Closed)
            sqlCon.Open();
        SqlCommand sqlCmd = new SqlCommand("AddFr", sqlCon);
        sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
        sqlCmd.Parameters.AddWithValue("@fr_id", hffr_id.Value == "" ? 0 : Convert.ToInt32(hffr_id.Value));  
        sqlCmd.Parameters.AddWithValue("@fr_name", txtName.Text.Trim());
        sqlCmd.Parameters.AddWithValue("@fr_description", txtDescription.Text.Trim());
        sqlCmd.ExecuteNonQuery();
        sqlCon.Close();
        string fr_id = hffr_id.Value;
        Clear();
        if (fr_id == "")
            lblSuccessMessage.Text = "Saved!";
        else
            lblSuccessMessage.Text = "Updated!";
        FillGridView();
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
        hffr_id.Value = fr_id.ToString();
      
        txtName.Text = dtbl.Rows[0]["fr_name"].ToString();
        txtDescription.Text = dtbl.Rows[0]["fr_description"].ToString();
        
        btnSave.Text = "Update";
        btnDelete.Enabled = true;
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        if (sqlCon.State == System.Data.ConnectionState.Closed)
            sqlCon.Open();
        SqlCommand sqlCmd = new SqlCommand("DeleteFr", sqlCon);
        sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
        sqlCmd.Parameters.AddWithValue("@fr_id", Convert.ToInt32(hffr_id.Value));
        sqlCmd.ExecuteNonQuery();
        sqlCon.Close();
        Clear();
        FillGridView();
        lblSuccessMessage.Text = "Deleted!";
    }
}