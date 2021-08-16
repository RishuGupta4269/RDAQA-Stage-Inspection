using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SIDB_connection"].ConnectionString);
            conn.Open();
            int f;
            int k=Convert.ToInt32(TextBox3.Text);
            if(DropDownList1.SelectedItem.ToString().Equals("HAL QC")){
                f=1;
            }
            else
                f=2;

            string checkUser=@"select count(*) from Users where Department='"+f+"' and EID='"+k+"'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Label1.Text = "USER ALREADY EXISTS";
            }
            conn.Close();
        }
    }

    protected int Util(String s){
        int f;
        if (DropDownList1.SelectedItem.ToString().Equals("HAL QC"))
        {
                f=1;
            }
            else
                f=2;

        return f;
    }



    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SIDB_connection"].ConnectionString);
            conn.Open();
            string insertQuery = @"insert into Users(Name,Department,EID,Password) values(@v1,@v2,@v3,@v4)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@v1", TextBox1.Text);
            com.Parameters.AddWithValue("@v2", Util(DropDownList1.SelectedItem.ToString()));
            com.Parameters.AddWithValue("@v3", Convert.ToInt32(TextBox3.Text));
            com.Parameters.AddWithValue("@v4", Password1.Text);
            com.ExecuteNonQuery();
            Response.Write("Registration Successful");
            Response.Redirect("Login.aspx");
            conn.Close();
        }
        catch (Exception ex)
        {
           // Response.Write(ex);
            Label1.Text = "USER ALREADY EXISTS";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("Login.aspx");
        }
        catch(Exception excp)
        {
            Response.Redirect("Login.aspx");
        }
    }
}