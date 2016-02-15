using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test2 : System.Web.UI.Page
{
    HttpCookie cookieRemember = new HttpCookie(CDkey.cookie_remember_user);

    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Visible = false;
        if (!Page.IsPostBack)
        {
            if (Request.Cookies[CDkey.cookie_remember_user] != null)
            {
                cookieRemember = Request.Cookies[CDkey.cookie_remember_user];
                txtAccount.Text = cookieRemember.Value;
                chkRemember.Checked = true;
            }
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        var ifb = new iFoodBoxDataContext();
        var uAccount = ifb.userAccounts.FirstOrDefault(m => txtAccount.Text.Equals(m.userAccount.ToString()));
        if (uAccount != null && txtPassword.Text.Equals(uAccount.userPassword.ToString()))
        {
            callchk();
            Session[CDkey.session_loggedin_user] = uAccount;
            Response.Redirect("ManageFood.aspx");
        }
        else
            lblMsg.Visible = true;
    }

    protected void callchk()
    {
        if (chkRemember.Checked == true)
        {
            cookieRemember.Value = txtAccount.Text;
            cookieRemember.Expires = DateTime.Now.AddMonths(1);
            Response.Cookies.Add(cookieRemember);
        }
        else
            Response.Cookies[CDkey.cookie_remember_user].Value = string.Empty;
    }
}