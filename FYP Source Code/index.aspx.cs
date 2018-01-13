using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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
        /*using (SqlConnection con= new SqlConnection(connectionString)){
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from User where username=@username and password=@password", con);

            cmd.Parameters.AddWithValue("@username", Username.Text.Trim());

            cmd.Parameters.AddWithValue("@password", Password.Text.Trim());

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            da.Fill(dt);

            if (dt.Rows.Count > 0)

            {

                string type = (dt.Rows[0]["type"]).ToString().Trim();

                // store your type row cell value in variable to check condition



                if (type == "Student")

                {

                    Session["USERID"] = TextBox1.Text;

                    Response.Redirect("Manager.aspx");

                }

                else if (type == "Salesperson")

                {

                    Session["USERID"] = TextBox1.Text;

                    Response.Redirect("Salesperson.aspx");

                }



                else if (type == "SoftwareEngineer")

                {

                    Session["USERID"] = TextBox1.Text;

                    Response.Redirect("Engineer.aspx");



                }

                else

                {

                    Response.Write("Not Exists");

                }

            }

            else

            {

                ClientScript.RegisterStartupScript(Page.GetType(),"validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");

            }
        }*/
    }
}