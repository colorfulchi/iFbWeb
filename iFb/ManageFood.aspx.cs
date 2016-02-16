using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ManageFood : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        displayAll();
    }
    protected void btnTypeAll_Click(object sender, ImageClickEventArgs e)
    {
        displayAll();
    }
    protected void btnTypeVegetable_Click(object sender, ImageClickEventArgs e)
    {
        changeType("蔬菜類");
    }
    protected void btnTypeBeefAndFish_Click(object sender, ImageClickEventArgs e)
    {
        changeType("魚肉類");
    }
    protected void btnTypeCookedFood_Click(object sender, ImageClickEventArgs e)
    {
        changeType("熟食類");
    }
    protected void btnTypeDrinks_Click(object sender, ImageClickEventArgs e)
    {
        changeType("飲品類");
    }
    protected void btnTypeFruit_Click(object sender, ImageClickEventArgs e)
    {
        changeType("水果類");
    }
    protected void btnTypeOthers_Click(object sender, ImageClickEventArgs e)
    {
        changeType("其他類");
    }

    protected void changeType(string strType)
    {
        SqlConnection conn = new SqlConnection("Server=tcp:ifoodboxserver.database.windows.net,1433;Database=iFoodBoxDatabase;User ID=systemadmin@ifoodboxserver;Password=1qaz2WSX;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30");
        conn.Open();

        //建立SqlCommand查詢命令
        SqlCommand cmd = new SqlCommand("Select * From foods Where foodType=@paramfoodType", conn);

        //建立並定義SqlParameter
        SqlParameter p1 = new SqlParameter("@paramfoodType", SqlDbType.NVarChar, 10);
        p1.Value = strType;
        cmd.Parameters.Add(p1);

        SqlDataReader dr = cmd.ExecuteReader(); //執行查詢

        gvfoodlist.DataSource = dr; //指定GridView控制項之資料來源
        gvfoodlist.DataBind();  //資料繫結

        dr.Dispose();
        cmd.Dispose();
        conn.Close();
        conn.Dispose();
    }
    protected void displayAll()
    {
        SqlConnection conn = new SqlConnection("Server=tcp:ifoodboxserver.database.windows.net,1433;Database=iFoodBoxDatabase;User ID=systemadmin@ifoodboxserver;Password=1qaz2WSX;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30");
        conn.Open();    //開啓資料庫連線

        SqlCommand cmd = new SqlCommand("Select * From foods", conn);
        SqlDataReader dr = cmd.ExecuteReader(); //執行查詢

        gvfoodlist.DataSource = dr; //指定GridView控制項之資料來源
        gvfoodlist.DataBind();  //資料繫結

        dr.Dispose();
        cmd.Dispose();
        conn.Close();
        conn.Dispose();
    }

    protected void gvfoodlist_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label txtFoodFreezingStr = (Label)e.Row.Cells[4].FindControl("txtFoodFreezing");
            if (txtFoodFreezingStr != null)
            {
                if (txtFoodFreezingStr.Text == "0")
                {
                    txtFoodFreezingStr.Text = "冷凍";
                }
                else
                {
                    txtFoodFreezingStr.Text = "冷藏";
                }
            }

        }

    }
}