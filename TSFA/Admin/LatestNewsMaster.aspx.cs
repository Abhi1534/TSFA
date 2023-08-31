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
    public partial class LatestNewsMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txt_Date.Text = DateTime.Now.ToString("yyyy-MM-dd");
                bindgriddata();
            }
        }
        public void bindgriddata()
        {
            TSFABAL objbal = new TSFABAL();
            DataSet ds = objbal.pr_get_LatestNewsmaster();
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
            Response.Redirect("LatestNewsMaster.aspx");

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            LatestNewsMasterBO obj = new LatestNewsMasterBO();
            TSFABAL objbal = new TSFABAL();
            try
            {
                obj.LatestNewsName = Txt_latestNewsName.Text;
                obj.LatestNewsDate = Convert.ToDateTime(txt_Date.Text.ToString());

                if (Session["LatestNewsDocument"]!=null && !string.IsNullOrWhiteSpace(Session["LatestNewsDocument"].ToString()))
                {
                    obj.Docpath = Session["LatestNewsDocument"].ToString();
                }
                else
                {
                    obj.Docpath = "";
                }
              
                obj.Description = txt_description.Text;
                if (ch_isactive.Checked == true)
                {
                    obj.IsActive = "1";
                }
                else
                {
                    obj.IsActive = "0";
                }
                if (Session["LatestNewsID"] != null && !string.IsNullOrWhiteSpace(Session["LatestNewsID"].ToString()))
                {
                    obj.ModifiedBY = "1";//Session["UserID"].ToString();
                    obj.ModifiedIP = Request.ServerVariables["Remote_Addr"];
                    obj.flag = "2";
                    obj.CreatedBY = "";
                    obj.CreatedIP = "";
                    obj.LatestNewsID = Convert.ToInt32(Session["LatestNewsID"].ToString());

                }
                else
                {
                    obj.CreatedBY = "1"; //Session["UserID"].ToString();
                    obj.CreatedIP = Request.ServerVariables["Remote_Addr"];
                    obj.flag = "1";
                    obj.ModifiedBY = "";
                    obj.ModifiedIP = "";
                    obj.LatestNewsID = 0;
                }
                DataSet ds = new DataSet();
                ds = objbal.Pr_insert_LatestNewsmaster(obj);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    if (ds.Tables[0].Rows[0]["result"].ToString() == "Success")
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

        protected void grid_data_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Btn_EditCommand")
            {
                string UID = e.CommandArgument.ToString();

                TSFABAL bal = new TSFABAL();
                DataSet ds = bal.pr_get_LatestNewsmasterbyID(Convert.ToInt32(UID));
                if (ds.Tables[0].Rows.Count > 0)
                {
                    pnl_entry.Visible = true;
                    pnl_view.Visible = false;
                    btn_back.Visible = true;
                    btn_add.Visible = false;
                    txt_search.Visible = false;
                    Txt_latestNewsName.Text = ds.Tables[0].Rows[0]["LatestNewsName"].ToString();
                    txt_Date.Text =Convert.ToDateTime(ds.Tables[0].Rows[0]["LatestNewsDate"].ToString()).ToString("yyyy-MM-dd");
                    txt_description.Text = ds.Tables[0].Rows[0]["Description"].ToString();
                    if (ds.Tables[0].Rows[0]["Docpath"] !=null && !string.IsNullOrWhiteSpace(ds.Tables[0].Rows[0]["Docpath"].ToString()))
                    {
                        Session["LatestNewsDocument"] = ds.Tables[0].Rows[0]["Docpath"].ToString();
                        HL_latestnewsdocument.NavigateUrl = ds.Tables[0].Rows[0]["Docpath"].ToString();
                        HL_latestnewsdocument.Visible = true;
                        
                    }
                    if (ds.Tables[0].Rows[0]["IsActive"].ToString() == "1")
                    {
                        ch_isactive.Checked = true;
                    }
                    else
                    {
                        ch_isactive.Checked = false;
                    }
                    Session["LatestNewsID"] = ds.Tables[0].Rows[0]["LatestNewsID"].ToString();
                }
            }
        }

        protected void btn_LatestNewsDocument_Click(object sender, EventArgs e)
        {

            if (fu_LatestNewsDocument.HasFiles)

            {
                foreach (HttpPostedFile postedfile in fu_LatestNewsDocument.PostedFiles)
                {
                   
                    string fileName = Path.GetFileName(postedfile.FileName);

                    //if (postedfile.ContentLength <= 2048000)
                    //{
                        string file_full_path = Path.Combine("../Sharepath", "TSFA", "LatestNewsDocument",txt_Date.Text);
                       
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
                        Session["LatestNewsDocument"] = file_full_path;                       
                        postedfile.SaveAs(Server.MapPath(file_full_path));
                        HL_latestnewsdocument.NavigateUrl = file_full_path;
                        HL_latestnewsdocument.Visible = true;
                        div_pdfimagesize.Visible = false;
                    //}
                    //else
                    //{
                    //    div_pdfimagesize.Visible = true;
                    //}

                }

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
    }
}