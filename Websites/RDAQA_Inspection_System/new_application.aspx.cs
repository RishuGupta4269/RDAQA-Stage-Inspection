using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class new_application : System.Web.UI.Page
{
    static int EID1 = -1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            String eid = "", name = "", did = "", sess = Session["New"].ToString();
            int ind = sess.IndexOf('#');
            int l = sess.Length;
            eid = sess.Substring(0, ind);
            did = sess.Substring(ind + 1, 1);
           
                EID1= Convert.ToInt32(eid);
               
            

        }

    }
/*
    protected String UtilProject(int n) {
        String res = "";
        switch(n)
        {
            case 1:
                res="DO228";
                break;
            case 2:
                res = "HS748";
                break;
            case 3:
                res = "UAV";
                break;
            case 4:
                res = "RTShop";
                break;
            case 5:
                res = "OTHERS";
                break;

        }
        return res;
    }
    */
    protected String UtilTrade(int n)
    {
        String res = "";
        switch (n)
        {
            case 1:
                res = "ELECTRICAL/1";
                break;
            case 2:
                res = "INSTRUMENT/2";
                break;
            case 3:
                res = "RADIO/3";
                break;
            case 4:
                res = "AIRFRAME/3";
                break;
            case 5:
                res = "ENGINE/5";
                break;
        }
        return res;
    }
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SIDB_connection"].ConnectionString);
            conn.Open();
            Guid newGUID = Guid.NewGuid();
            /*int Project_1 = Convert.ToInt32(DropDownList1.SelectedValue);
            int Type_1 = Convert.ToInt32(DropDownList2.SelectedValue);
            int Ano = Convert.ToInt32(DropDownList3.SelectedValue);
            int Trade = Convert.ToInt32(DropDownList4.SelectedValue);*/

            String Project_1 = (DropDownList1.SelectedValue);
            String Type_1 = (DropDownList2.SelectedValue);
            int Ano = Convert.ToInt32(DropDownList3.SelectedValue);
            int Trade_val = Convert.ToInt32(DropDownList4.SelectedValue);
            String Trade_txt = DropDownList4.SelectedItem.Text;
            String memo = Project_1 + "/" +newGUID.ToString()+"/"+ UtilTrade(Trade_val); //Memo generation

            String Stage_1 = TextBox1.Text;
            String Remark_1 = TextBox2.Text;
            String Limitation_1 = TextBox3.Text;

            String ID_1 = newGUID.ToString();
            //DateTime dt_1 = sysdate;

            String insertQuery= "insert into Memo_TB(ID,Memo_no,Project,Type,Aircraft_no,Trade,Date_ti,Stage,Limitation,Offer_status,Remarks_QC,QC_eid,Status) values(@v1,@v2,@v3,@v4,@v5,@v6, GETDATE(),@v7,@v8,@v9,@v10,@v11,@v12)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@v1",ID_1);
            com.Parameters.AddWithValue("@v2", memo);
            com.Parameters.AddWithValue("@v3", Project_1);
            com.Parameters.AddWithValue("@v4", Type_1);
            com.Parameters.AddWithValue("@v5", Ano);
            com.Parameters.AddWithValue("@v6", Trade_txt);
            com.Parameters.AddWithValue("@v7", Stage_1);
            com.Parameters.AddWithValue("@v8", Limitation_1);
            com.Parameters.AddWithValue("@v9", 1);
            com.Parameters.AddWithValue("@v10", Remark_1);
            com.Parameters.AddWithValue("@v11",EID1);
            com.Parameters.AddWithValue("@v12","OFFERED");
            //com.Parameters.AddWithValue("@v11",DateTime.Parse(DateTime.Today.ToString()));

            com.ExecuteNonQuery();
            Response.Write("Memo Saved");
            conn.Close();


        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SIDB_connection"].ConnectionString);
            conn.Open();
            Guid newGUID = Guid.NewGuid();
            /*int Project_1 = Convert.ToInt32(DropDownList1.SelectedValue);
            int Type_1 = Convert.ToInt32(DropDownList2.SelectedValue);
            int Ano = Convert.ToInt32(DropDownList3.SelectedValue);
            int Trade = Convert.ToInt32(DropDownList4.SelectedValue);*/

            String Project_1 = (DropDownList1.SelectedValue);
            String Type_1 = (DropDownList2.SelectedValue);
            int Ano = Convert.ToInt32(DropDownList3.SelectedValue);
            int Trade_val = Convert.ToInt32(DropDownList4.SelectedValue);
            String Trade_txt = DropDownList4.SelectedItem.Text;
            String memo = Project_1 + "/" + newGUID.ToString() + "/" + UtilTrade(Trade_val); //Memo generation

            String Stage_1 = TextBox1.Text;
            String Remark_1 = TextBox2.Text;
            String Limitation_1 = TextBox3.Text;

            String ID_1 = newGUID.ToString();
            //DateTime dt_1 = sysdate;

            String insertQuery = "insert into Memo_TB(ID,Memo_no,Project,Type,Aircraft_no,Trade,Date_ti,Stage,Limitation,Offer_status,Remarks_QC,QC_eid,Status) values(@v1,@v2,@v3,@v4,@v5,@v6, GETDATE(),@v7,@v8,@v9,@v10,@v11,@v12)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@v1", ID_1);
            com.Parameters.AddWithValue("@v2", memo);
            com.Parameters.AddWithValue("@v3", Project_1);
            com.Parameters.AddWithValue("@v4", Type_1);
            com.Parameters.AddWithValue("@v5", Ano);
            com.Parameters.AddWithValue("@v6", Trade_txt);
            com.Parameters.AddWithValue("@v7", Stage_1);
            com.Parameters.AddWithValue("@v8", Limitation_1);
            com.Parameters.AddWithValue("@v9", 2);
            com.Parameters.AddWithValue("@v10", Remark_1);
            com.Parameters.AddWithValue("@v11", EID1);
            com.Parameters.AddWithValue("@v12", "OFFERED");
            //com.Parameters.AddWithValue("@v11",DateTime.Parse(DateTime.Today.ToString()));

            com.ExecuteNonQuery();
            Response.Write("Memo Sent");
            conn.Close();


        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }


    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("QC_USER.aspx");
    }
}