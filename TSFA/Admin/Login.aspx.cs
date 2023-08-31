using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TSFA.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {

            if(txt_UserName.Text=="Admin" && txt_password.Text=="Admin@123")
            {
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                lblError.Visible = true;
            }
        }
    }
}