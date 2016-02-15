using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GetAccountOrPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            lblGetAccount.Visible = false;
            txtPhone.Visible = false;
            btnGetPassword.Visible = false;
            lblMsg.Visible = false;
        }
    }
    protected void btnSelect_Click(object sender, EventArgs e)
    {
      /*  var ifb = new iFoodBoxDataContext();
        //忘記密碼
        if (txtPhone.Visible == false)
        {
            var uAccount = ifb.userAccounts.FirstOrDefault(m => txtAccount.Text.Equals(m.userAccount.ToString()));
            if (uAccount != null && txtAfterFour.Text.Equals(uAccount.userData.userAfterFour.ToString()))
            {
                Session[CDkey.session_change_password] = uAccount;
                Response.Redirect("PasswordChange.aspx");
            }
            else
                lblMsg.Visible = true;
        }
        //忘記帳號
        else if (txtAccount.Visible == false)
        {
            var uPhone = ifb.userData.FirstOrDefault(m => txtPhone.Text.Equals(m.userPhone.ToString()));
            if (uPhone != null && txtAfterFour.Text.Equals(uPhone.userAfterFour.ToString()))
            {
                //取出Phone對應ID
                var tableUserData = from x in ifb.userData
                                    where x.userPhone == txtPhone.Text
                                    select x;
                var userID = string.Empty;
                foreach (userData ud in tableUserData)
                userID = ud.userID.ToString();
                //由ID搜尋對應帳號資訊
                var uAccount = ifb.userAccounts.FirstOrDefault(m => userID.Equals(m.userID.ToString()));

                lblMsg.Text = "使用者帳號為：" + uAccount.userAccount.ToString();
                lblMsg.Visible = true;
            }
            else
            {
                lblMsg.Text = "查無此電話，請確認電話是否輸入錯誤！";
                lblMsg.Visible = true;
            }
        }
       * */
    }
    protected void btnGetAccount_Click(object sender, EventArgs e)
    {
        //切換為忘記帳號
        lblGetAccount.Visible = true;
        lblGetPassword.Visible = false;
        txtPhone.Visible = true;
        txtAccount.Visible = false;
        btnGetPassword.Visible = true;
        btnGetAccount.Visible = false;
    }
    protected void btnGetPassword_Click(object sender, EventArgs e)
    {
        //切換為忘記密碼
        lblGetAccount.Visible = false;
        lblGetPassword.Visible = true;
        txtPhone.Visible = false;
        txtAccount.Visible = true;
        btnGetPassword.Visible = false;
        btnGetAccount.Visible = true;
    }
}