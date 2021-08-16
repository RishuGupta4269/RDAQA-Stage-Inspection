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
    static int eid1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            String eid = "", name = "", did = "", sess = Session["New"].ToString();
            int ind = sess.IndexOf('#');
            int l = sess.Length;
            eid = sess.Substring(0, ind);
            did = sess.Substring(ind + 1, 1);
            if (!did.Equals("3"))
            {
                Label2.Text = eid;
                int ed, dd;
                ed = Convert.ToInt32(eid);
                dd = did.Equals("1") ? 1 : 2;
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SIDB_connection"].ConnectionString);
                conn.Open();
                String getUser = "select Name from Users where EID='" + ed + "' and Department ='" + dd + "'";
                SqlCommand com = new SqlCommand(getUser, conn);
                name = com.ExecuteScalar().ToString();
                Label1.Text = name;
                HiddenField1.Value = ed.ToString();
            }

        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Memo_view.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("new_application.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Login.aspx");
    }
}