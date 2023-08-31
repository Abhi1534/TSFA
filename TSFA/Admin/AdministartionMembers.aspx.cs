using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static TSFA.TSFABO;

namespace TSFA.Admin
{
    public partial class AdministartionMembers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["photouploaduploadfilepath"] = null;
                bindgriddata();
                binddropdown();
            }

        }
        public void bindgriddata()
        {
            TSFABAL objbal = new TSFABAL();
            DataSet ds = objbal.pr_getadministrativemembermaster();
            if (ds.Tables[0].Rows.Count > 0)
            {
                grid_data.DataSource = ds;
                grid_data.DataBind();
            }

        }
        protected void txt_search_TextChanged(object sender, EventArgs e)
        {


        }

        public void binddropdown()
        {
            TSFABAL objbal = new TSFABAL();
            DataSet ds = objbal.pr_get_AdministrationTypeMaster();
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddladministrationtype.DataSource = ds.Tables[0];
                ddladministrationtype.DataBind();
                ddladministrationtype.DataTextField = "AdministrationTypeName";
                ddladministrationtype.DataValueField = "AdministrationTypeID";
                ddladministrationtype.DataBind();
                ddladministrationtype.Items.Insert(0, new ListItem("Select", "NA"));
            }
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
            Response.Redirect("AdministartionMembers.aspx");
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            AdministartiveMembersBO obj = new AdministartiveMembersBO();
            TSFABAL objbal = new TSFABAL();
            try
            {
                obj.AdministrationMemberName = txt_AdministrationMemberName.Text;
                obj.Description = txtdescription.Text;
                obj.Designation = txtdesignation.Text;
                obj.AdministrationTypeID_fk = Convert.ToInt32(ddladministrationtype.SelectedValue);
                obj.Department = txtdepartment.Text;
                obj.ContactNo = txtmobilenumber.Text;
                obj.Email = txtemailid.Text;
                obj.Address = txtaddress.Text;

                if (Session["photouploaduploadfilepath"]!=null && !string.IsNullOrWhiteSpace(Session["photouploaduploadfilepath"].ToString()))
                {
                    obj.Photofilepath = Session["photouploaduploadfilepath"].ToString();
                }
                else
                {
                    obj.Photofilepath = "";
                }
               


                if (ch_isactive.Checked == true)
                {
                    obj.IsActive = "1";
                }
                else
                {
                    obj.IsActive = "0";
                }
                if (Session["AdministrationMemberID"] != null && !string.IsNullOrWhiteSpace(Session["AdministrationMemberID"].ToString()))
                {
                    obj.pk = Convert.ToInt16(Session["AdministrationMemberID"]);
                    obj.ModifiedBY = "1";//Session["UserID"].ToString();
                    obj.ModifiedIP = Request.ServerVariables["Remote_Addr"];
                    obj.flag = "2";

                    obj.CreatedBY = "";
                    obj.CreatedIP = "";


                }
                else
                {
                    obj.pk = 0;
                    obj.CreatedBY = "1"; //Session["UserID"].ToString();
                    obj.CreatedIP = Request.ServerVariables["Remote_Addr"];
                    obj.flag = "1";
                    obj.ModifiedBY = "";
                    obj.ModifiedIP = "";

                }
                DataSet ds = new DataSet();
                ds = objbal.Pr_insert_Administrationmembermaster(obj);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    if (ds.Tables[0].Rows[0]["result"].ToString() == "Success")
                    {
                        div_success.Visible = true;
                        Session["AdministrationMemberID"] = "";
                        clearData();
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
        public void clearData()
        {
            txtaddress.Text = "";
            txtdepartment.Text = "";
            txtdescription.Text = "";
            txtdesignation.Text = "";
            txtemailid.Text = "";
            txtmobilenumber.Text = "";
            txt_AdministrationMemberName.Text = "";
          //  ddladministrationtype.SelectedValue = "0";
        }

        protected void grid_data_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Btn_EditCommand")
            {
                string UID = e.CommandArgument.ToString();

                TSFABAL bal = new TSFABAL();
                DataSet ds = bal.pr_get_AdministrationMemberbyID(Convert.ToInt32(UID));
                if (ds.Tables[0].Rows.Count > 0)
                {
                    pnl_entry.Visible = true;
                    pnl_view.Visible = false;
                    btn_back.Visible = true;
                    btn_add.Visible = false;
                    txt_search.Visible = false;
                   // binddropdown();
                   ddladministrationtype.SelectedValue= ds.Tables[0].Rows[0]["AdministrationTypeID_fk"].ToString();
                    //   string photoPath = ds.Tables[0].Rows[0]["Photofilepath"].ToString();

                    img_photouploadupload.ImageUrl = ds.Tables[0].Rows[0]["Photofilepath"].ToString();
                    Session["photouploaduploadfilepath"] = ds.Tables[0].Rows[0]["Photofilepath"].ToString();
                    img_photouploadupload.Visible = true;

                    txt_AdministrationMemberName.Text = ds.Tables[0].Rows[0]["AdministrationMemberName"].ToString();
                    txtdescription.Text = ds.Tables[0].Rows[0]["Description"].ToString();
                    txtdesignation.Text = ds.Tables[0].Rows[0]["Designation"].ToString();
                    ddladministrationtype.SelectedValue = ds.Tables[0].Rows[0]["AdministrationTypeID_fk"].ToString();
                    txtdepartment.Text = ds.Tables[0].Rows[0]["Department"].ToString();
                    txtmobilenumber.Text = ds.Tables[0].Rows[0]["ContactNo"].ToString();
                    txtemailid.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                    txtaddress.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                    if (ds.Tables[0].Rows[0]["IsActive"].ToString() == "1")
                    {
                        ch_isactive.Checked = true;
                    }
                    else
                    {
                        ch_isactive.Checked = false;
                    }
                    Session["AdministrationMemberID"] = ds.Tables[0].Rows[0]["pk"].ToString();
                }
            }
        }

      
        protected void btn_photouploadupload_Click(object sender, EventArgs e)
        {

            if (fu_photoupload.HasFiles)

            {

                foreach (HttpPostedFile postedfile in fu_photoupload.PostedFiles)
                {
                    string fileExtension = Path.GetExtension(fu_photoupload.PostedFile.FileName);
                    if (fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".JPG" || fileExtension == ".JPEG" || fileExtension == ".png" || fileExtension == ".PNG")
                    {
                        string fileName = Path.GetFileName(postedfile.FileName);

                        if (postedfile.ContentLength > 0)
                        {

                            string file_full_path = Path.Combine("../Images/Faculty/");
                            file_full_path = Path.Combine(file_full_path, fileName);
                            Session["photouploaduploadfilepath"] = file_full_path;
                            Session["photouploaduploadfileName"] = fileName;
                            postedfile.SaveAs(Server.MapPath(file_full_path));
                            img_photouploadupload.ImageUrl = file_full_path;
                            img_photouploadupload.Visible = true;


                        }
                    }
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