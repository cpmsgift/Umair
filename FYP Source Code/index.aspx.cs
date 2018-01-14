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

            SqlCommand cmd = new SqlCommand("select * from Studen where st_id=@username and st_password=@password", con);
            SqlCommand cmd1 = new SqlCommand("select * from Supervisor where st_id=@username and st_password=@password", con);
            SqlCommand cmd2 = new SqlCommand("select * from Coordinator where st_id=@username and st_password=@password", con);
            SqlCommand cmd3 = new SqlCommand("select * from Faculty where st_id=@username and st_password=@password", con);

            cmd.Parameters.AddWithValue("@username", Username.Text.Trim());

            cmd.Parameters.AddWithValue("@password", Password.Text.Trim());

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
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


                else

                {

                    Response.Write("Not Exists");

                }

        }*/
    }

    protected void reg_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (reg.SelectedValue == "2") {
            Response.Redirect("SupervisorRegister.aspx");
        }
    }
}