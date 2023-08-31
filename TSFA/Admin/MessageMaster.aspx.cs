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
    public partial class MessageMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindgriddata();
              //  binddropdown();
            }

        }
        public void bindgriddata()
        {
            TSFABAL objbal = new TSFABAL();
            DataSet ds = objbal.pr_getmessage();
            if (ds.Tables[0].Rows.Count > 0)
            {
                grid_data.DataSource = ds;
                grid_data.DataBind();
            }

        }
     
        protected void btn_add_Click(object sender, EventArgs e)
        {
            pnl_entry.Visible = true;
            pnl_view.Visible = false;
            btn_back.Visible = true;
            btn_add.Visible = false;
           
        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("MessageMaster.aspx");
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            MessageMasters obj = new MessageMasters();
            TSFABAL objbal = new TSFABAL();
            try
            {
                obj.GuestName = txt_GuestName.Text;
                obj.Guestdesignation = txt_designation.Text;
                obj.FromDate = Convert.ToDateTime(txtfromdate.Text).ToString("yyyy-MM-dd hh:mm:ss");
                obj.ToDate = Convert.ToDateTime(txttodate.Text).ToString("yyyy-MM-dd hh:mm:ss");
                obj.Description = txtdescription.Text;
                if (Session["photouploaduploadfilepath"]!=null && !string.IsNullOrWhiteSpace(Session["photouploaduploadfilepath"].ToString()))
                {
                    obj.Guestphoto = Session["photouploaduploadfilepath"].ToString();
                }
                else
                {
                    obj.Guestphoto = "";
                }

                if (ch_isactive.Checked == true)
                {
                    obj.IsActive = "1";
                }
                else
                {
                    obj.IsActive = "0";
                }

                if (Session["MessageID"] != null && !string.IsNullOrWhiteSpace(Session["MessageID"].ToString()))
                {
                    obj.pk = Convert.ToInt16(Session["MessageID"]);
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
                ds = objbal.pr_insert_message(obj);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    if (ds.Tables[0].Rows[0]["result"].ToString() == "Success")
                    {
                        div_success.Visible = true;
                        Session["MessageID"] = "";
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
                string pk = e.CommandArgument.ToString();

                TSFABAL bal = new TSFABAL();
                DataSet ds = bal.pr_getmessagebyID(Convert.ToInt32(pk));
                if (ds.Tables[0].Rows.Count > 0)
                {
                    pnl_entry.Visible = true;
                    pnl_view.Visible = false;
                    btn_back.Visible = true;
                    btn_add.Visible = false;
                                     
                    txt_GuestName.Text = ds.Tables[0].Rows[0]["GuestName"].ToString();
                    txt_designation.Text = ds.Tables[0].Rows[0]["Guestdesignation"].ToString();
                    txtfromdate.Text=Convert.ToDateTime(ds.Tables[0].Rows[0]["FromDate"].ToString()).ToString("yyyy-MM-dd");
                    txttodate.Text = Convert.ToDateTime(ds.Tables[0].Rows[0]["ToDate"].ToString()).ToString("yyyy-MM-dd");
                    txtdescription.Text = ds.Tables[0].Rows[0]["Description"].ToString();

                    img_photouploadupload.ImageUrl = ds.Tables[0].Rows[0]["Guestphoto"].ToString();
                    Session["photouploaduploadfilepath"] = ds.Tables[0].Rows[0]["Guestphoto"].ToString();
                    img_photouploadupload.Visible = true;


                    if (ds.Tables[0].Rows[0]["IsActive"].ToString() == "1")
                    {
                        ch_isactive.Checked = true;
                    }
                    else
                    {
                        ch_isactive.Checked = false;
                    }
                    Session["MessageID"] = ds.Tables[0].Rows[0]["pk"].ToString();
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

                            string file_full_path = Path.Combine("../Images/Political/");
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
    }
}