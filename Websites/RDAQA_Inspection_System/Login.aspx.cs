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
    static String ADMIN_PW = "RISHU";
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected int Dept(String str)
    {
        if(str.Equals("HAL QC"))
        {
            return 1;
        }   
        else if(str.Equals("ADMIN"))
        {
            return 3;
        }
        else
        {
                return 2;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SIDB_connection"].ConnectionString);
            conn.Open();
            int eid, did;
            eid = Convert.ToInt32(TextBox2.Text);
            did = Dept(DropDownList1.SelectedItem.ToString());
            if (did != 3)
            {
                String checkUser = "select count(*) from Users where EID ='" + eid + "' and Department='" + did + "'";
                SqlCommand com = new SqlCommand(checkUser, conn);
                int t = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();
                if (t == 1)
                {
                    conn.Open();
                    String checkPass = "select Password from Users where EID='" + eid + "' and Department='" + did + "'";
                    SqlCommand passcom = new SqlCommand(checkPass, conn);
                    String pw = passcom.ExecuteScalar().ToString();
                    if (pw.Equals(TextBox3.Text))
                    {
                        Session["New"] = eid + "#" + did;
                        Response.Write("PW is correct");
                        if (did == 1)
                            Response.Redirect("QC_USER.aspx");
                        else
                            if (did == 2)
                                Response.Redirect("DGAQA_User.aspx");
                    }
                    else
                    {
                        // Response.Write("Password incorrect");
                        Label1.Text = "INCORRECT LOGIN CREDENTIALS";
                    }
                }
                else
                {
                    // Response.Write("User not registered");
                    Label1.Text = "INCORRECT LOGIN CREDENTIALS";
                }
            }
            
            else
            {
                if (ADMIN_PW.Equals(TextBox3.Text))
                {
                    Response.Redirect("ADMIN.aspx");
                }
                else
                {
                    Label1.Text = "UNAUTHORIZED ACCESS!";
                }
                
            }

        }
        catch (Exception excp)
        {
            Label1.Text = "INCORRECT LOGIN CREDENTIALS";
        }
    }
}