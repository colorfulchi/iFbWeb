using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageFoodAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void btnFoodAdd_Click(object sender, EventArgs e)
    {
        
        string fileName = Guid.NewGuid().ToString() + ".jpg";
        foodPicUpload.SaveAs(Server.MapPath("~/pics/" + fileName));

        var ifb = new iFoodBoxDataContext();
        var addfoods = new foods();
        addfoods.foodName = tbFoodName.Text;
        addfoods.foodType = rdofoodType.SelectedItem.Value.ToString();
        addfoods.foodCount = int.Parse(tbFoodCount.Text);
        addfoods.foodPicPath = fileName; 
        
        addfoods.foodDate = DateTime.Parse(tbFoodDate.Text);
        addfoods.foodDeadline = DateTime.Parse(tbFoodDeadline.Text);
        addfoods.foodalarmDay = int.Parse(cboSetFoodAlert.SelectedItem.Value);
        addfoods.foodFreezing = int.Parse(cboFoodPosition.SelectedItem.Value);
        addfoods.iFoodBoxID = 1; //chi 還沒寫

        ifb.foods.InsertOnSubmit(addfoods);
        ifb.SubmitChanges();

        Response.Redirect("ManageFood.aspx");
    }
 
  
}