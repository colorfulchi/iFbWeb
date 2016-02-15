using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //btnInsert.Attributes["OnClick"] = "return confirm('資料新增完畢！')";
        //隱藏錯誤訊息
        lblErrorMsgEmail.Visible = false;
        lblErrorMsgPhone.Visible = false;
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = string.Empty;
        txtAccount.Text = string.Empty;
        txtAfterFour.Text = string.Empty;
        txtPhone.Text = string.Empty;
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        if (vadPassCheck.IsValid && vadAfterFour.IsValid)
        {
            //驗證帳號(信箱)是否已存在
            var ifb = new iFoodBoxDataContext();
            var uAccount = ifb.userAccounts.FirstOrDefault(m => txtAccount.Text.Equals(m.userAccount.ToString()));
            if (uAccount != null)
            {
                lblErrorMsgEmail.Visible = true;
                return;
            }
            //驗證電話是否已存在
            ifb = new iFoodBoxDataContext();
            var uData = ifb.userData.FirstOrDefault(m => txtPhone.Text.Equals(m.userPhone.ToString()));
            if (uData != null)
            {
                lblErrorMsgPhone.Visible = true;
                return;
            }
            //將基本資料存入
            uData = new userData();
            uData.userName = txtName.Text;
            uData.userDate = DateTime.Parse(txtDate.Text);
            if (rBtnM.Checked)//判斷性別
                uData.userSex = true;
            else if (rBtnF.Checked)
                uData.userSex = false;
            else
                uData.userSex = true;
            uData.userAfterFour = txtAfterFour.Text;
            uData.userPhone = txtPhone.Text;
            ifb = new iFoodBoxDataContext();
            ifb.userData.InsertOnSubmit(uData);
            ifb.SubmitChanges();
            //取出userID
            ifb = new iFoodBoxDataContext();
            var tableUserData = from x in ifb.userData
                                where x.userPhone == txtPhone.Text
                                select x;
            var userID = 0;
            foreach (userData ud in tableUserData)
                userID = ud.userID;
            //將帳號資訊存入
            uAccount = new userAccounts();
            uAccount.userAccount = txtAccount.Text;
            uAccount.userPassword = txtPassword.Text;
            uAccount.userID = userID;
            ifb = new iFoodBoxDataContext();
            ifb.userAccounts.InsertOnSubmit(uAccount);
            ifb.SubmitChanges();

            Response.Write(" <script language=JavaScript> alert('資料新增完畢！'); </script> ");
            Response.Redirect("LoginPage.aspx");
        }
    }
}