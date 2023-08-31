using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static TSFA.TSFABO;

namespace TSFA
{
    public partial class ContactMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pnl_entry.Visible = true;
                div_success.Visible = false;
                div_fail.Visible = false;
                //  binddropdown();
                //bindgriddata();
                // Session[ContactID] = "";
            }

        }
        //public void bindgriddata()
        //{
        //    TSFABAL objbal = new TSFABAL();
        //    DataSet ds = objbal.pr_get_VideoGalleryMaster();
        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        grid_data.DataSource = ds;
        //        grid_data.DataBind();
        //    }
        //}



        protected void btn_add_Click(object sender, EventArgs e)
        {
            pnl_entry.Visible = true;
            //pnl_view.Visible = false;
            //btn_back.Visible = true;
            //btn_add.Visible = false;
        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContactMaster.aspx");
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            ContactMasters obj = new ContactMasters();
            TSFABAL objbal = new TSFABAL();
            try
            {
                if (ddlcategory.SelectedValue != "0")
                {
                    obj.Name = txt_name.Text;
                    obj.contactNo = txt_contactno.Text;
                    obj.email = txt_email.Text;
                    obj.Message = txt_msg.Text;
                    obj.category = ddlcategory.SelectedValue;
                    obj.IsActive = "1";
                    obj.ModifiedBY = "";//Session["UserID"].ToString();
                    obj.ModifiedIP = "";
                    // obj.flag = "2";

                    obj.CreatedBY = "1";
                    obj.CreatedIP = Request.ServerVariables["Remote_Addr"];
                    //if (ch_isactive.Checked == true)
                    //{
                    //    obj.IsActive = "1";
                    //}
                    //else
                    //{
                    //    obj.IsActive = "0";
                    //}
                    //if (Session["contactID"] != null && !string.IsNullOrWhiteSpace(Session["contactID"].ToString()))
                    //{

                    // obj.pk = Convert.ToInt16(Session["pk"]);


                    //}
                    //else
                    //{

                    //}
                    DataSet ds = new DataSet();
                    ds = objbal.pr_insertContactMaster(obj);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        if (ds.Tables[0].Rows[0]["result"].ToString() == "Success")
                        {
                            div_success.Visible = true;
                            // Session["contactID"] = "";
                            txt_name.Text = "";
                            txt_contactno.Text = "";
                            txt_email.Text = "";
                            txt_msg.Text = "";
                            ddlcategory.SelectedValue = "0";
                        }
                        else
                        {
                            div_fail.Visible = true;
                        }
                    }
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Select Category Type')", true);
                    return;
                }
            }
            catch (Exception)
            {

                throw;
            }

        }

        public void binddropdown()
        {
            TSFABAL objbal = new TSFABAL();
            DataSet ds = objbal.pr_getContactMaster();
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddlcategory.DataSource = ds.Tables[0];
                ddlcategory.DataBind();
                ddlcategory.Items.Insert(0, new ListItem("Select", "NA"));
            }
        }

    }
}