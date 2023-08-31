using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static TSFA.TSFABO;

namespace TSFA.Admin
{
    public partial class MainMenuMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindgriddata();
            }

        }
        public void bindgriddata()
        {
            TSFABAL objbal = new TSFABAL();
            DataSet ds = objbal.pr_get_mainmenumaster();
            if (ds.Tables[0].Rows.Count > 0)
            {
                grid_data.DataSource = ds;
                grid_data.DataBind();
            }

        }
        protected void txt_search_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            pnl_entry.Visible = true;
            pnl_view.Visible = false;
            btn_back.Visible = true;
            btn_add.Visible = false;
            txt_search.Visible = false;
        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainMenuMaster.aspx");
        }

        protected void grid_data_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Btn_EditCommand")
            {
                string UID = e.CommandArgument.ToString();

                TSFABAL bal = new TSFABAL();
                DataSet ds = bal.pr_get_AdministrationTypebyID(Convert.ToInt32(UID));
                if (ds.Tables[0].Rows.Count > 0)
                {
                    pnl_entry.Visible = true;
                    pnl_view.Visible = false;
                    btn_back.Visible = true;
                    btn_add.Visible = false;
                    txt_search.Visible = false;
                    txt_mainmenuname.Text = ds.Tables[0].Rows[0]["MenuName"].ToString();
                    txt_description.Text = ds.Tables[0].Rows[0]["Description"].ToString();
                    if (ds.Tables[0].Rows[0]["IsActive"].ToString() == "1")
                    {
                        ch_isactive.Checked = true;
                    }
                    else
                    {
                        ch_isactive.Checked = false;
                    }
                    Session["MenuID"] = ds.Tables[0].Rows[0]["MenuID"].ToString();
                }
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            MainMenuBO objmainmenu = new MainMenuBO();
            TSFABAL objbal = new TSFABAL();
            try
            {
                objmainmenu.MenuName = txt_mainmenuname.Text;
                objmainmenu.Description = txt_description.Text;
                if (ch_isactive.Checked==true)
                {
                    objmainmenu.IsActive = "1";
                }
                else
                {
                    objmainmenu.IsActive = "0";
                }
                if (Session["MenuID"] !=null && !string.IsNullOrWhiteSpace(Session["MenuID"].ToString()))
                {
                    objmainmenu.ModifiedBY = "1";//Session["UserID"].ToString();
                    objmainmenu.ModifiedIP= Request.ServerVariables["Remote_Addr"];
                    objmainmenu.flag = "2";
                    objmainmenu.CreatedBY = "";
                    objmainmenu.CreatedIP = "";
                    objmainmenu.MenuID = Convert.ToInt32(Session["MenuID"].ToString());

                }
                else
                {
                    objmainmenu.CreatedBY = "1"; //Session["UserID"].ToString();
                    objmainmenu.CreatedIP = Request.ServerVariables["Remote_Addr"];
                    objmainmenu.flag = "1";
                    objmainmenu.ModifiedBY = "";
                    objmainmenu.ModifiedIP = "";
                    objmainmenu.MenuID = 0;
                }
                DataSet ds = new DataSet();
                ds = objbal.Pr_insert_mainmenumaster(objmainmenu);
                if (ds.Tables[0].Rows.Count>0)
                {
                    if (ds.Tables[0].Rows[0]["result"].ToString()== "Success")
                    {
                        div_success.Visible = true;
                    }
                    else
                    {
                        div_fail.Visible = true;
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}