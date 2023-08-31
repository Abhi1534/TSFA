using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using static TSFA.TSFABO;
namespace TSFA.Admin
{
    public partial class CategoryType : System.Web.UI.Page
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
            DataSet ds = objbal.GetCategoryTypes("1","0");
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
            //  Response.Redirect("AdministrationTypes.aspx");
            pnl_entry.Visible = false;
            pnl_view.Visible = true;
            btn_back.Visible = false;
            btn_add.Visible = true;
            txt_search.Visible = true;
            bindgriddata();
            div_success.Visible = false;
            div_fail.Visible = false;
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            Category objCategory = new Category();
            TSFABAL objbal = new TSFABAL();
            try
            {
                objCategory.categoryName = txt_Category.Text;
                objCategory.description = txt_description.Text;
                if (ch_isactive.Checked == true)
                {
                    objCategory.isActive = "1";
                }
                else
                {
                    objCategory.isActive = "0";
                }
                if (Session["CategoryTypeID"] != null && !string.IsNullOrWhiteSpace(Session["CategoryTypeID"].ToString()))
                {
                    objCategory.createdBY = "1";//Session["UserID"].ToString();
                    objCategory.createdIP = Request.ServerVariables["Remote_Addr"];
                    objCategory.categoryID = Session["CategoryTypeID"].ToString();
                }
                else
                {
                    objCategory.createdBY = "1"; //Session["UserID"].ToString();
                    objCategory.createdIP = Request.ServerVariables["Remote_Addr"];
                    objCategory.categoryID = "0";
                  
                }
                DataSet ds = new DataSet();
                ds = objbal.Insert_UpdateCategoryTypes(objCategory);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    if (ds.Tables[0].Rows[0]["result"].ToString() == "1000" || ds.Tables[0].Rows[0]["result"].ToString() == "1001")
                    {
                        div_success.Visible = true;
                        Session["CategoryTypeID"] = "";
                        txt_Category.Text = "";
                        txt_description.Text = "";
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

        protected void grid_data_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Btn_EditCommand")
            {
                string UID = e.CommandArgument.ToString();
                //int rowIndex = Convert.ToInt32(e.CommandArgument) % grid_data.PageSize;
                //GridViewRow row = grid_data.Rows[rowIndex];

                TSFABAL bal = new TSFABAL();
                DataSet ds = bal.GetCategoryTypes("2",UID.ToString());
                if (ds.Tables[0].Rows.Count > 0)
                {
                    pnl_entry.Visible = true;
                    pnl_view.Visible = false;
                    btn_back.Visible = true;
                    btn_add.Visible = false;
                    txt_search.Visible = false;
                    txt_Category.Text = ds.Tables[0].Rows[0]["CategoryName"].ToString();
                    txt_description.Text = ds.Tables[0].Rows[0]["Description"].ToString();
                    if (ds.Tables[0].Rows[0]["IsActive"].ToString() == "1")
                    {
                        ch_isactive.Checked = true;
                    }
                    else
                    {
                        ch_isactive.Checked = false;
                    }
                    Session["CategoryTypeID"] = ds.Tables[0].Rows[0]["ID"].ToString();
                }
            }
        }

        protected void grid_data_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grid_data.PageIndex = e.NewPageIndex;
            bindgriddata();
        }
    }
}