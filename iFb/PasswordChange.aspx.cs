using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PasswordChange : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnChangePass_Click(object sender, EventArgs e)
    {
        if (davCheckPassword.IsValid)
        {
            var ifb = new iFoodBoxDataContext();
            var sessionAccount = new userAccounts();
            sessionAccount = Session[CDkey.session_change_password] as userAccounts;
            var uAccount = ifb.userAccounts.FirstOrDefault(m => sessionAccount.accountID.Equals(m.accountID.ToString()));
            if (uAccount == null)
                return;
            uAccount.userPassword = txtPassword.Text;
            ifb.SubmitChanges();

            Response.Write(" <script language=JavaScript> alert('密碼修改完畢！'); </script> ");
        }
        Response.Redirect("LoginPage.aspx");
    }
}