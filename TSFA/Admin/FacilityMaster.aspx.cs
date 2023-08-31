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
    public partial class FacilityMaster : System.Web.UI.Page
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
            DataSet ds = objbal.pr_getfacility();
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
            Response.Redirect("FacilityMaster.aspx");
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            AdministartivefacilitiesBO obj = new AdministartivefacilitiesBO();
            TSFABAL objbal = new TSFABAL();
            try
            {
                obj.facilityName = txtfacilityname.Text;
                obj.Description = txtdescription.Text;
                obj.FromDate = Convert.ToDateTime(txtfromdate.Text).ToString("yyyy-MM-dd");
                obj.ToDate = Convert.ToDateTime(txttodate.Text).ToString("yyyy-MM-dd");
                if (Session["Imagefilepath"] != null && !string.IsNullOrWhiteSpace(Session["Imagefilepath"].ToString()))
                {
                    obj.Imgfilepath = Session["Imagefilepath"].ToString();
                }
                else
                {
                    obj.Imgfilepath = "";
                }
                if (ch_isactive.Checked == true)
                {
                    obj.IsActive = "1";
                }
                else
                {
                    obj.IsActive = "0";
                }
                if (Session["pk"] != null && !string.IsNullOrWhiteSpace(Session["pk"].ToString()))
                {
                    obj.pk = Convert.ToInt16(Session["pk"]);
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
                ds = objbal.pr_insert_facility(obj);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    if (ds.Tables[0].Rows[0]["result"].ToString() == "Success")
                    {
                        div_success.Visible = true;
                        clearData();
                        //Session["AdministrationTypeID"] = "";
                    }
                    else
                    {
                        div_fail.Visible = true;
                    }
                }
            }
            catch (Exception ex)
            {

                throw;
            }

        }
        public void clearData()
        {
            txtdescription.Text = "";
            txtfacilityname.Text = "";
            txtfromdate.Text = "";
            txttodate.Text = "";
            rptImage.DataSource = "";
            rptImage.DataBind();
            rptImage.Visible = false;
        }

        protected void grid_data_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Btn_EditCommand")
            {
                string UID = e.CommandArgument.ToString();

                TSFABAL bal = new TSFABAL();
                DataSet ds = bal.pr_getfacilitybyID(Convert.ToInt32(UID));
                if (ds.Tables[0].Rows.Count > 0)
                {
                    pnl_entry.Visible = true;
                    pnl_view.Visible = false;
                    btn_back.Visible = true;
                    btn_add.Visible = false;
                    txt_search.Visible = false;
                    //binddropdown();
                    // string photoPath = ds.Tables[0].Rows[0]["Imgfilepath"].ToString();
                    if (ds.Tables[0].Rows[0]["Imgfilepath"].ToString().ToString() != null)
                    {
                        string imgPath = "";
                        // string[] imgPath = dt.Rows[0]["ImagePath"].ToString().Split(',');
                        DataTable dtImage = new DataTable();
                        dtImage.Columns.Add(new DataColumn("ImageUrl", typeof(string)));
                       
                        //for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        //{
                            if (!string.IsNullOrEmpty(ds.Tables[0].Rows[0]["Imgfilepath"].ToString()))
                            {
                                string[] img = ds.Tables[0].Rows[0]["Imgfilepath"].ToString().Split(',');
                                for (int j = 0; j < img.Length; j++)
                                {
                                    DataRow drNew = dtImage.NewRow();

                                    // string imgPath = (file_full_path.ToString()).ToString();
                                    drNew["ImageUrl"] = img[j].ToString();
                                    dtImage.Rows.Add(drNew);
                                    dtImage.AcceptChanges();
                                }
                                imgPath = imgPath + ds.Tables[0].Rows[0]["Imgfilepath"].ToString() + ",";
                            }
                       // }
                        if (dtImage.Rows.Count > 0)
                        {
                            rptImage.Visible = true;
                            rptImage.DataSource = dtImage;
                            rptImage.DataBind();
                        }
                        else
                        {
                            rptImage.Visible = false;
                        }
                        Session["Imagefilepath"] = imgPath.ToString().Trim(',');

                        txtfacilityname.Text = ds.Tables[0].Rows[0]["facilityName"].ToString();
                        txtdescription.Text = ds.Tables[0].Rows[0]["Description"].ToString();
                        txtfromdate.Text = ds.Tables[0].Rows[0]["FromDate"].ToString();
                        txttodate.Text = ds.Tables[0].Rows[0]["ToDate"].ToString();

                        if (ds.Tables[0].Rows[0]["IsActive"].ToString() == "1")
                        {
                            ch_isactive.Checked = true;
                        }
                        else
                        {
                            ch_isactive.Checked = false;
                        }
                        Session["pk"] = ds.Tables[0].Rows[0]["pk"].ToString();
                    }
                }
            }
        }
        protected void lnk_removeward_Click(object sender, EventArgs e)
        {
            try
            {
                System.IO.File.Delete(Session["Imagefilepath"].ToString());
                lnk_removeward.Visible = false;
                lbluploadwardphoto.Text = string.Empty;
                ctrlphotouploadfilename.Value = string.Empty;
            }
            catch (Exception ex)
            {
            }
            finally
            {
            }
        }
        protected void btnupload_Click(object sender, EventArgs e)
        {
            try
            {


                // ViewState["TypeOFRequest"] = "1";
                DataSet ds = new DataSet();
                DataSet ds1 = new DataSet();
                //RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
                //FileUpload ctrlphotoupload = (FileUpload)item.FindControl("ctrlphotoupload");
                if (ctrlphotoupload.HasFiles)
                {
                    string imgPath = "";
                    DataTable dt = new DataTable();
                    dt.Columns.Add(new DataColumn("ImageUrl", typeof(string)));

                    foreach (HttpPostedFile postedfile in ctrlphotoupload.PostedFiles)
                    {
                        string CreatedIP = Request.ServerVariables["Remote_Addr"];
                        string useid = "123";// Session["UserID"].ToString();
                        string fileName = Path.GetFileName(postedfile.FileName);
                        if (postedfile.ContentLength > 0)
                        {

                            //string file_full_path = GetUploadFolderPath("GVR", "LibraryManagement", useid, txtContent.Text);
                            string file_full_path = Path.Combine("../Sharepath", "LatestNews");
                            string path = Server.MapPath(file_full_path);
                            System.IO.DirectoryInfo dirInfo = new DirectoryInfo(path);
                            if (!dirInfo.Exists)

                            {
                                CreateFolder(Directory.GetParent(path).FullName);
                            }
                            if (!System.IO.Directory.Exists(path))
                            {
                                System.IO.Directory.CreateDirectory(path);
                            }

                            file_full_path = Path.Combine(file_full_path, fileName);
                            imgPath = imgPath + file_full_path + ",";
                            Session["ImagefileName"] = fileName;
                            postedfile.SaveAs(Server.MapPath(file_full_path));
                            DataRow drNew = dt.NewRow();
                            // string imgPath = (file_full_path.ToString()).ToString();
                            drNew["ImageUrl"] = file_full_path;
                            dt.Rows.Add(drNew);
                            dt.AcceptChanges();
                        }
                    }
                    Session["Imagefilepath"] = imgPath.ToString().Trim(',');
                    if (dt.Rows.Count > 0)
                    {
                        rptImage.Visible = true;
                        rptImage.DataSource = dt;
                        rptImage.DataBind();
                    }
                    else
                    {
                        rptImage.Visible = false;
                    }
                }
            }
            catch (Exception ex)
            {

                //throw;
            }
        }
        private static void CreateFolder(string path)
        {
            try
            {
                System.IO.DirectoryInfo dirInfo = new DirectoryInfo(@path);
                if (!dirInfo.Exists)

                {
                    CreateFolder(Directory.GetParent(path).FullName);
                }
                if (!System.IO.Directory.Exists(path))
                {
                    System.IO.Directory.CreateDirectory(path);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        protected void rptImage_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            try
            {
                if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
                {
                    RepeaterItem item = e.Item;
                    Image imgwardphoto = (item.FindControl("imgwardphoto") as Image);
                 
                    imgwardphoto.ImageUrl = imgwardphoto.ImageUrl.ToString();
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected string PhotoBase64ImgSrc(string fileNameandPath)
        {
            string base64 = string.Empty;
            try
            {
                byte[] byteArray = File.ReadAllBytes(fileNameandPath);
                base64 = Convert.ToBase64String(byteArray);
            }
            catch (Exception ex)
            {
                //  Response.Write(ex.Message.ToString());
            }

            return string.Format("data:image/gif;base64,{0}", base64);
        }


    }
}