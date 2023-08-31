using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TSFA
{
    public partial class AdminstratiomMemberView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string MemberviewID = Request.QueryString["MemberviewID"];
            Session["MemberviewID"] = MemberviewID.ToString();
            if (!IsPostBack)
            {
                getuser();
            }

        }
        public void getuser()
        {
            TSFABAL bal = new TSFABAL();
            string memberid = Session["MemberviewID"].ToString();
            DataSet ds = bal.pr_get_AdministrationMemberbyID(Convert.ToInt32(memberid));
            if (ds.Tables[0].Rows.Count > 0)
            {
                lbl_membernmae.Text= ds.Tables[0].Rows[0]["AdministrationMemberName"].ToString();
                lbl_membermobilenumber.Text= ds.Tables[0].Rows[0]["ContactNo"].ToString();
                lbl_membermailid.Text= ds.Tables[0].Rows[0]["Email"].ToString();
                lbl_designation.Text= ds.Tables[0].Rows[0]["Designation"].ToString();
                lbl_description.Text= ds.Tables[0].Rows[0]["Description"].ToString();
                img_memberview.ImageUrl= ds.Tables[0].Rows[0]["Photofilepath"].ToString();
            }
        }
    }
}