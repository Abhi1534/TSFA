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
    public partial class PageDetails : System.Web.UI.Page
    {
        TSFABAL objbal = new TSFABAL();
        DataTable tableDetails = new DataTable();
        TextBox tb1 = new TextBox();
        TextBox tb2 = new TextBox();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserID"] = "1";

            if (!IsPostBack)
            {
                div_Privew.Visible = false;
                bindgriddata();
            }

        }
        public void bindgriddata()
        {
            TSFABAL objbal = new TSFABAL();
            DataSet ds = objbal.Pr_GetMenuContentDetails("1", "");
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
            // pnl_viewcontent.Visible = false;
            clearsession();
        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            Session["pgID"] = "";
            Response.Redirect("PageDetails.aspx");

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

        protected void grid_data_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            MenuMasterPageContentBO objmmp = new MenuMasterPageContentBO();
            TableHeadersBO objth = new TableHeadersBO();
            TableRowContentBO objtrc = new TableRowContentBO();
            UploadImagesBO objimg = new UploadImagesBO();
            if (e.CommandName == "lnk_menunameclick")
            {
                btn_back.Visible = true;
                btn_add.Visible = false;
                //int rowIndex = Convert.ToInt32(e.CommandArgument);
                ////  string menuId = e.CommandArgument.ToString();
                //GridViewRow row = grid_data.Rows[rowIndex];
                int rowIndex = Convert.ToInt32(e.CommandArgument) % grid_data.PageSize;
                GridViewRow row = grid_data.Rows[rowIndex];


                string flag = "2";
                HiddenField hdnID = (row.FindControl("lbl_menuId") as HiddenField);
                ViewState["MenuID"] = hdnID.Value;
                DataSet ds = objbal.Pr_GetMenuContentDetails(flag, hdnID.Value);
                //  pnl_viewcontent.Visible = true;
                pnl_view.Visible = false;
                pnl_entry.Visible = true;
                div_Privew.Visible = true;
                txt_MenuName.Text = (row.FindControl("lnk_menuName") as LinkButton).Text;
                txt_menudescription.Text = (row.FindControl("lbl_Description") as Label).Text;
                if (ds.Tables[0].Rows.Count > 0)
                {

                    ViewState["PageMenuID"] = ds.Tables[0].Rows[0]["ID"].ToString();
                    txt_MenuHeader.Text = ds.Tables[0].Rows[0]["PageHeader"].ToString();
                    txt_Description.Content = ds.Tables[0].Rows[0]["PageContent"].ToString();
                }

                if (ds.Tables[5].Rows.Count > 0)
                {


                    chckevents.Checked = true;
                    DataTable dt = new DataTable();
                    dt.Clear();

                    dt.Columns.Add(new DataColumn("ImageUrls", typeof(string)));
                    dt.Columns.Add(new DataColumn("EventName", typeof(string)));

                    if (ds.Tables[1].Rows.Count > 0)
                    {
                        for (int i = 0; i < ds.Tables[5].Rows.Count; i++)
                        {
                            dt.Rows.Add(ds.Tables[5].Rows[i][5].ToString(), ds.Tables[5].Rows[i][4].ToString());
                        }
                    }
                    div_eventimages.Visible = true;
                    ViewState["EventDetails"] = dt;
                    grd_eventdata.DataSource = dt;
                    grd_eventdata.DataBind();
                    grd_eventdata.Visible = true;

                    //DataTable dtImage = new DataTable();
                    //DataTable dtVideo = new DataTable();
                    //dtImage.Columns.Add(new DataColumn("ImageUrl", typeof(string)));
                    //dtVideo.Columns.Add(new DataColumn("ImageUrl", typeof(string)));
                    //string[] filePath = ds.Tables[1].Rows[0]["Upload_Files"].ToString().Split(',');
                    //foreach (var item in filePath)
                    //{
                    //    if (item.Contains(".mp4"))
                    //    {
                    //        DataRow drNewVideo = dtVideo.NewRow();
                    //        // string imgPath = (file_full_path.ToString()).ToString();
                    //        drNewVideo["ImageUrl"] = item.ToString();
                    //        dtVideo.Rows.Add(drNewVideo);
                    //    }
                    //    else
                    //    {
                    //        DataRow drNew = dtImage.NewRow();
                    //        // string imgPath = (file_full_path.ToString()).ToString();
                    //        drNew["ImageUrl"] = item.ToString();
                    //        dtImage.Rows.Add(drNew);
                    //    }

                    //}
                    //dtImage.AcceptChanges();
                    //dtVideo.AcceptChanges();
                    //if (dtImage.Rows.Count > 0)
                    //{
                    //    rptImage.DataSource = dtImage;
                    //    rptImage.DataBind();
                    //    rptImage.Visible = true;
                    //}

                    //if (dtVideo.Rows.Count > 0)
                    //{
                    //    videoRepeater1.DataSource = dtVideo;
                    //    videoRepeater1.DataBind();
                    //    videoRepeater1.Visible = true;
                    //}
                }
                else
                {
                    rptImage.Visible = false;
                }

                if (ds.Tables[2].Rows.Count > 0)
                {
                    chcktables.Checked = true;
                    DataTable dt = new DataTable();
                    dt.Clear();
                    dt.Columns.Add(ds.Tables[2].Rows[0]["Header1"].ToString());
                    dt.Columns.Add(ds.Tables[2].Rows[0]["Header2"].ToString());
                    dt.Columns.Add(ds.Tables[2].Rows[0]["Header3"].ToString());
                    dt.Columns.Add(ds.Tables[2].Rows[0]["Header4"].ToString());
                    dt.Columns.Add(ds.Tables[2].Rows[0]["Header5"].ToString());
                    dt.Columns.Add(ds.Tables[2].Rows[0]["Header6"].ToString());

                    if (ds.Tables[3].Rows.Count > 0)
                    {
                        for (int i = 0; i < ds.Tables[3].Rows.Count; i++)
                        {
                            dt.Rows.Add(ds.Tables[3].Rows[i][3].ToString(), ds.Tables[3].Rows[i][4].ToString(), ds.Tables[3].Rows[i][5].ToString(), ds.Tables[3].Rows[i][6].ToString(), ds.Tables[3].Rows[i][7].ToString(), ds.Tables[3].Rows[i][8].ToString());
                        }
                    }



                    for (int col = dt.Columns.Count - 1; col >= 0; col--)
                    {
                        bool removeColumn = true;
                        foreach (DataRow rowH in dt.Rows)
                        {
                            if (rowH.ItemArray[col] == "")
                            {
                                removeColumn = false;
                                break;
                            }
                        }
                        if (!removeColumn) dt.Columns.RemoveAt(col);
                    }
                    ViewState["CoulmnDetails"] = dt;
                    grd_tablecontent.DataSource = dt;
                    grd_tablecontent.DataBind();
                    grd_tablecontent.Visible = true;
                    div_tablescreation.Visible = true;
                    ddlcolumnscount.Visible = true;
                    if (dt.Rows.Count > 0)
                    {
                        ddlcolumnscount.SelectedValue = dt.Columns.Count.ToString();
                        ddlcolumnscount.Enabled = false;
                    }

                    pnlTbl.Visible = true;
                    chkColumns.Visible = true;
                    chkRows.Visible = true;

                }
                else
                {
                    chcktables.Checked = false;
                    chkColumns.Checked = false;
                    // chkColumns.Visible = true;
                    grd_tablecontent.Visible = false;
                }
                if (ds.Tables[4].Rows.Count > 0)
                {
                    if (ds.Tables[4].Rows[0]["Parent_MenuPK"].ToString() != "0")
                    {
                        DataSet ds1 = objbal.Pr_GetMenusList();
                        if (ds1.Tables[0].Rows.Count > 0)
                        {
                            ddlmenulist.DataSource = ds1.Tables[0];

                            ddlmenulist.DataTextField = "MenuName";
                            ddlmenulist.DataValueField = "ID";
                            ddlmenulist.DataBind();
                            ddlmenulist.Items.Insert(0, new ListItem("Select", "NA"));
                            ddlmenulist.Visible = true;
                        }
                        try
                        {
                            // binddropdown();
                            ddlmenulist.SelectedValue = ds.Tables[4].Rows[0]["Parent_MenuPK"].ToString();
                            chk_issubmenu.Checked = true;
                            ddlmenulist.Visible = true;
                        }
                        catch (Exception ex)
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Main Menu is already deleted for this Menu')", true);
                            return;
                        }
                    }
                    else
                    {
                        ddlmenulist.Visible = false;
                        chk_issubmenu.Checked = false;
                    }
                }
            }
        }

        //protected void grid_data_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    TSFABAL objbal = new TSFABAL();
        //    MenuMasterPageContentBO objmmp = new MenuMasterPageContentBO();
        //    TableHeadersBO objth = new TableHeadersBO();
        //    TableRowContentBO objtrc = new TableRowContentBO();
        //    UploadImagesBO objimg = new UploadImagesBO();
        //    if (e.CommandName == "lnk_menunameclick")
        //    {
        //        int rowIndex = Convert.ToInt32(e.CommandArgument);
        //        //  string menuId = e.CommandArgument.ToString();
        //        GridViewRow row = grid_data.Rows[rowIndex];
        //        string flag = "2";
        //        HiddenField hdnID = (row.FindControl("lbl_menuId") as HiddenField);
        //        DataSet ds = objbal.Pr_GetMenuContentDetails(flag, hdnID.Value);
        //        pnl_viewcontent.Visible = true;
        //        pnl_view.Visible = false;

        //        txtmenuname.Text = (row.FindControl("lnk_menuName") as LinkButton).Text;
        //        txtmenudesc.Text = (row.FindControl("lbl_Description") as Label).Text;
        //        if (ds.Tables[0].Rows.Count > 0)
        //        {
        //            if (ds.Tables[0].Rows[0]["MenuMasterID"].ToString() != "0")
        //            {
        //                DataSet ds1 = objbal.Pr_GetMenusList();
        //                if (ds1.Tables[0].Rows.Count > 0)
        //                {
        //                    ddlmainmenulist.DataSource = ds1.Tables[0];

        //                    ddlmainmenulist.DataTextField = "MenuName";
        //                    ddlmainmenulist.DataValueField = "ID";
        //                    ddlmainmenulist.DataBind();
        //                    ddlmainmenulist.Items.Insert(0, new ListItem("Select", "NA"));
        //                    ddlmainmenulist.Visible = true;
        //                }
        //                ddlmainmenulist.SelectedValue = ds.Tables[0].Rows[0]["MenuMasterID"].ToString();
        //                chkissubmenu.Checked = true;
        //            }
        //            else
        //            {
        //                ddlmainmenulist.Visible = false;
        //                chkissubmenu.Checked = false;
        //            }

        //            txtmenuheader.Text = ds.Tables[0].Rows[0]["PageHeader"].ToString();
        //            Editor1.Content = ds.Tables[0].Rows[0]["PageContent"].ToString();
        //        }
        //        if (ds.Tables[1].Rows.Count > 0)
        //        {
        //            imagesuploadRepeater.DataSource = ds.Tables[1];
        //            imagesuploadRepeater.DataBind();
        //            imagesuploadRepeater.Visible = true;
        //        }
        //        else
        //        {
        //            imagesuploadRepeater.Visible = false;
        //        }
        //        if (ds.Tables[2].Rows.Count > 0)
        //        {
        //            chktable.Checked = true;
        //            DataTable dt = new DataTable();
        //            dt.Clear();
        //            dt.Columns.Add(ds.Tables[2].Rows[0]["Header1"].ToString());
        //            dt.Columns.Add(ds.Tables[2].Rows[0]["Header2"].ToString());
        //            dt.Columns.Add(ds.Tables[2].Rows[0]["Header3"].ToString());
        //            dt.Columns.Add(ds.Tables[2].Rows[0]["Header4"].ToString());
        //            dt.Columns.Add(ds.Tables[2].Rows[0]["Header5"].ToString());
        //            dt.Columns.Add(ds.Tables[2].Rows[0]["Header6"].ToString());
        //            if (ds.Tables[3].Rows.Count > 0)
        //            {
        //                for (int i = 0; i < ds.Tables[3].Rows.Count; i++)
        //                {
        //                    dt.Rows.Add(ds.Tables[3].Rows[i][0].ToString(), ds.Tables[3].Rows[i][1].ToString(), ds.Tables[3].Rows[i][2].ToString(), ds.Tables[3].Rows[i][3].ToString(), ds.Tables[3].Rows[i][4].ToString(), ds.Tables[3].Rows[i][5].ToString());
        //                }
        //            }

        //            foreach (DataRow rowh in dt.Rows)
        //            {
        //                object value1 = rowh["Column1"];
        //                object value2 = rowh["Column2"];
        //                object value3 = rowh["Column3"];
        //                object value4 = rowh["Column4"];
        //                //object value5 = rowh["Header5"];
        //                //object value6 = rowh["Header6"];
        //                if (value3 == DBNull.Value)
        //                {
        //                    dt.Columns.Remove(value3.ToString());
        //                }
        //                if (value4 == DBNull.Value)
        //                {
        //                    dt.Columns.Remove(value4.ToString());
        //                }
        //                //if (value5 == DBNull.Value)
        //                //{
        //                //    dt.Columns.Remove(value5.ToString());
        //                //}
        //                //if (value6 == DBNull.Value)
        //                //{
        //                //    dt.Columns.Remove(value6.ToString());
        //                //}

        //            }

        //            //foreach (DataColumn column in ds.Tables[2].Columns)
        //            //{
        //            //    if (column.ColumnName.Length == 0)
        //            //    {

        //            //        dt.Columns.Remove(column);
        //            //    }
        //            //}
        //            grd_gettabledata.DataSource = dt;
        //            grd_gettabledata.DataBind();
        //            grd_gettabledata.Visible = true;
        //        }
        //        else
        //        {
        //            chktable.Checked = false;
        //            grd_gettabledata.Visible = false;
        //        }
        //    }
        //}

        protected void chcktables_CheckedChanged(object sender, EventArgs e)
        {
            if (chcktables.Checked == true)
            {
                div_tablescreation.Visible = true;
                ddlcolumnscount.Visible = true;
                ddlcolumnscount.SelectedValue = "0";
                pnlTbl.Visible = true;
                //chkColumns.Visible = true;
                //chkRows.Visible = true;

            }
            else
            {
                div_tablescreation.Visible = false;
                btnviewtable.Visible = false;
                ddlcolumnscount.Visible = false;
                ddlcolumnscount.SelectedValue = "0";
                clearvisibility();
                cleartablecontent();
                pnlTbl.Visible = false;
                chkColumns.Visible = false;
                chkRows.Visible = false;

            }

        }

        public void clearsession()
        {
            chkColumns.Visible = false;
            chkRows.Visible = false;
            chckevents.Checked = false;
            div_eventimages.Visible = false;
            chkColumns.Checked = false;
            chkRows.Checked = false;
            rptImage.Visible = false;
            videoRepeater1.Visible = false;
            div_tablescreation.Visible = false;
            txt_MenuName.Text = "";
            txt_menudescription.Text = "";
            chk_issubmenu.Checked = false;
            txt_MenuHeader.Text = "";
            txt_Description.Content = null;
            chcktables.Checked = false;
            ddlcolumnscount.Visible = false;
            ddlcolumnscount.SelectedValue = "0";
            btnviewtable.Visible = false;
            cleartablecontent();
            clearvisibility();
            div_menudropdown.Visible = false;
            ViewState["EventDetails"] = null;
        }

        public void clearvisibility()
        {
            lblheaderstrt.Visible = false;
            div_Privew.Visible = false;


            txtheader1.Visible = false;
            txtheader2.Visible = false;
            txtheader3.Visible = false;
            txtheader4.Visible = false;
            txtheader5.Visible = false;
            txtheader6.Visible = false;

            ddlheader1.Visible = false;
            ddlheader2.Visible = false;
            ddlheader3.Visible = false;
            ddlheader4.Visible = false;
            ddlheader5.Visible = false;
            ddlheader6.Visible = false;

            lblheader1.Visible = false;
            lblheader2.Visible = false;
            lblheader3.Visible = false;
            lblheader4.Visible = false;
            lblheader5.Visible = false;
            lblheader6.Visible = false;

            txt_rowcontent1.Visible = false;
            txt_rowcontent2.Visible = false;
            txt_rowcontent3.Visible = false;
            txt_rowcontent4.Visible = false;
            txt_rowcontent5.Visible = false;
            txt_rowcontent6.Visible = false;

            fup_fileupload1.Visible = false;
            fup_fileupload2.Visible = false;
            fup_fileupload3.Visible = false;
            fup_fileupload4.Visible = false;
            fup_fileupload5.Visible = false;
            fup_fileupload6.Visible = false;

            btncontentupload1.Visible = false;
            btncontentupload2.Visible = false;
            btncontentupload3.Visible = false;
            btncontentupload4.Visible = false;
            btncontentupload5.Visible = false;
            btncontentupload6.Visible = false;

            grd_tablecontent.Visible = false;
        }
        public void cleartablecontent()
        {
            txtheader1.Text = "";
            txtheader2.Text = "";
            txtheader3.Text = "";
            txtheader4.Text = "";
            txtheader5.Text = "";
            txtheader6.Text = "";

            ddlheader1.SelectedValue = "0";
            ddlheader2.SelectedValue = "0";
            ddlheader3.SelectedValue = "0";
            ddlheader4.SelectedValue = "0";
            ddlheader5.SelectedValue = "0";
            ddlheader6.SelectedValue = "0";

            lblheader1.Text = "";
            lblheader2.Text = "";
            lblheader3.Text = "";
            lblheader4.Text = "";
            lblheader5.Text = "";
            lblheader6.Text = "";

            txt_rowcontent1.Text = "";
            txt_rowcontent2.Text = "";
            txt_rowcontent3.Text = "";
            txt_rowcontent4.Text = "";
            txt_rowcontent5.Text = "";
            txt_rowcontent6.Text = "";

            ViewState["CoulmnDetails"] = null;
            Session["Imagefilepath"] = "";
            ViewState["imagesfilepath"] = null;

        }
        protected void chckmenu_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (chk_issubmenu.Checked == true)
            {
                div_menudropdown.Visible = true;
                binddropdown();
            }
            else
            {
                div_menudropdown.Visible = false;
            }
        }

        public void binddropdown()
        {
            TSFABAL objbal = new TSFABAL();
            DataSet ds = objbal.Pr_GetMenusList();
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddlmenulist.DataSource = ds.Tables[0];
                ddlmenulist.DataBind();
                ddlmenulist.DataTextField = "MenuName";
                ddlmenulist.DataValueField = "ID";
                ddlmenulist.DataBind();
                ddlmenulist.Items.Insert(0, new ListItem("Select", "NA"));
            }
        }

        public void getheadervisibility(bool header1, bool header2, bool header3, bool header4, bool header5, bool header6)
        {
            txtheader1.Visible = header1;
            ddlheader1.Visible = header1;
            txtheader2.Visible = header2;
            ddlheader2.Visible = header2;
            txtheader3.Visible = header3;
            ddlheader3.Visible = header3;
            txtheader4.Visible = header4;
            ddlheader4.Visible = header4;
            txtheader5.Visible = header5;
            ddlheader5.Visible = header5;
            txtheader6.Visible = header6;
            ddlheader6.Visible = header6;
        }

        protected void ddlcolumnscount_SelectedIndexChanged(object sender, EventArgs e)
        {
            cleartablecontent();
            clearvisibility();
            lblheaderstrt.Visible = true;
            btnviewtable.Visible = true;
            pnlHeader.Visible = true;
            int columncount = Convert.ToInt32(ddlcolumnscount.SelectedItem.Text);
            switch (columncount)
            {
                case 2:
                    getheadervisibility(true, true, false, false, false, false);
                    break;
                case 3:
                    getheadervisibility(true, true, true, false, false, false);
                    break;
                case 4:
                    getheadervisibility(true, true, true, true, false, false);
                    break;
                case 5:
                    getheadervisibility(true, true, true, true, true, false);
                    break;
                case 6:
                    getheadervisibility(true, true, true, true, true, true);
                    break;
            }


        }

        protected void btnviewtable_Click(object sender, EventArgs e)
        {

            int columncount = Convert.ToInt32(ddlcolumnscount.SelectedItem.Text);
            DataTable dt = new DataTable();
            if (ViewState["CoulmnDetails"] != null)
            {
                dt = (DataTable)ViewState["CoulmnDetails"];
            }
            lblfileName2.Text = "";
            lblfileName3.Text = "";
            lblfileName4.Text = "";
            lblfileName5.Text = "";
            lblfileName6.Text = "";
            switch (columncount)
            {
                case 2:
                    //if (!IsPostBack)
                    //{
                    if (ViewState["CoulmnDetails"] == null)
                    {
                        tableDetails.Columns.AddRange(new DataColumn[2] { new DataColumn(txtheader1.Text), new DataColumn(txtheader2.Text) });
                        ViewState["CoulmnDetails"] = tableDetails;
                    }
                    //}
                    dt = (DataTable)ViewState["CoulmnDetails"];
                    if (!string.IsNullOrEmpty(txt_rowcontent1.Text) && !string.IsNullOrEmpty(txt_rowcontent2.Text))
                    {
                        dt.Rows.Add(txt_rowcontent1.Text, txt_rowcontent2.Text);
                        ViewState["CoulmnDetails"] = dt;
                        txt_rowcontent1.Text = "";
                        txt_rowcontent2.Text = "";
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill the all fields')", true);
                    }
                    break;
                case 3:
                    if (ViewState["CoulmnDetails"] == null)
                    {
                        tableDetails.Columns.AddRange(new DataColumn[3] { new DataColumn(txtheader1.Text), new DataColumn(txtheader2.Text), new DataColumn(txtheader3.Text) });
                        ViewState["CoulmnDetails"] = tableDetails;
                    }
                    dt = (DataTable)ViewState["CoulmnDetails"];
                    if (!string.IsNullOrEmpty(txt_rowcontent1.Text) && !string.IsNullOrEmpty(txt_rowcontent2.Text) && !string.IsNullOrEmpty(txt_rowcontent3.Text))
                    {
                        dt.Rows.Add(txt_rowcontent1.Text, txt_rowcontent2.Text, txt_rowcontent3.Text);
                        ViewState["CoulmnDetails"] = dt;
                        txt_rowcontent1.Text = "";
                        txt_rowcontent2.Text = "";
                        txt_rowcontent3.Text = "";
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill the all fields')", true);
                    }
                    break;
                case 4:
                    if (ViewState["CoulmnDetails"] == null)
                    {
                        tableDetails.Columns.AddRange(new DataColumn[4] { new DataColumn(txtheader1.Text), new DataColumn(txtheader2.Text), new DataColumn(txtheader3.Text), new DataColumn(txtheader4.Text) });
                        ViewState["CoulmnDetails"] = tableDetails;
                    }
                    dt = (DataTable)ViewState["CoulmnDetails"];
                    if (!string.IsNullOrEmpty(txt_rowcontent1.Text) && !string.IsNullOrEmpty(txt_rowcontent2.Text) && !string.IsNullOrEmpty(txt_rowcontent3.Text) && !string.IsNullOrEmpty(txt_rowcontent4.Text))
                    {
                        dt.Rows.Add(txt_rowcontent1.Text, txt_rowcontent2.Text, txt_rowcontent3.Text, txt_rowcontent4.Text);
                        ViewState["CoulmnDetails"] = dt;
                        txt_rowcontent1.Text = "";
                        txt_rowcontent2.Text = "";
                        txt_rowcontent3.Text = "";
                        txt_rowcontent4.Text = "";
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill the all fields')", true);
                    }
                    break;
                case 5:
                    if (ViewState["CoulmnDetails"] == null)
                    {
                        tableDetails.Columns.AddRange(new DataColumn[5] { new DataColumn(txtheader1.Text), new DataColumn(txtheader2.Text), new DataColumn(txtheader3.Text), new DataColumn(txtheader4.Text), new DataColumn(txtheader5.Text) });
                        ViewState["CoulmnDetails"] = tableDetails;
                    }
                    dt = (DataTable)ViewState["CoulmnDetails"];
                    if (!string.IsNullOrEmpty(txt_rowcontent1.Text) && !string.IsNullOrEmpty(txt_rowcontent2.Text) && !string.IsNullOrEmpty(txt_rowcontent3.Text) && !string.IsNullOrEmpty(txt_rowcontent4.Text) && !string.IsNullOrEmpty(txt_rowcontent5.Text))
                    {
                        dt.Rows.Add(txt_rowcontent1.Text, txt_rowcontent2.Text, txt_rowcontent3.Text, txt_rowcontent4.Text, txt_rowcontent5.Text);
                        ViewState["CoulmnDetails"] = dt;
                        txt_rowcontent1.Text = "";
                        txt_rowcontent2.Text = "";
                        txt_rowcontent3.Text = "";
                        txt_rowcontent4.Text = "";
                        txt_rowcontent5.Text = "";
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill the all fields')", true);
                    }
                    break;
                case 6:
                    if (ViewState["CoulmnDetails"] == null)
                    {
                        tableDetails.Columns.AddRange(new DataColumn[6] { new DataColumn(txtheader1.Text), new DataColumn(txtheader2.Text), new DataColumn(txtheader3.Text), new DataColumn(txtheader4.Text), new DataColumn(txtheader5.Text), new DataColumn(txtheader6.Text) });
                        ViewState["CoulmnDetails"] = tableDetails;
                    }
                    dt = (DataTable)ViewState["CoulmnDetails"];
                    if (!string.IsNullOrEmpty(txt_rowcontent1.Text) && !string.IsNullOrEmpty(txt_rowcontent2.Text) && !string.IsNullOrEmpty(txt_rowcontent3.Text) && !string.IsNullOrEmpty(txt_rowcontent4.Text) && !string.IsNullOrEmpty(txt_rowcontent5.Text) && !string.IsNullOrEmpty(txt_rowcontent6.Text))
                    {
                        dt.Rows.Add(txt_rowcontent1.Text, txt_rowcontent2.Text, txt_rowcontent3.Text, txt_rowcontent4.Text, txt_rowcontent5.Text, txt_rowcontent6.Text);
                        ViewState["CoulmnDetails"] = dt;
                        txt_rowcontent1.Text = "";
                        txt_rowcontent2.Text = "";
                        txt_rowcontent3.Text = "";
                        txt_rowcontent4.Text = "";
                        txt_rowcontent5.Text = "";
                        txt_rowcontent6.Text = "";
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill the all fields')", true);
                    }
                    break;

            }

            grd_tablecontent.DataSource = (DataTable)ViewState["CoulmnDetails"];
            grd_tablecontent.DataBind();
            grd_tablecontent.Visible = true;


        }



        protected void ddlheader1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                lblheader1.Visible = true;
                lblheader1.Text = txtheader1.Text;
                if (ddlheader1.SelectedValue == "1")
                {
                    txt_rowcontent1.Visible = true;
                    fup_fileupload1.Visible = false;
                    btncontentupload1.Visible = false;

                    // pnl_entry.Controls.Add(tb1);
                }
                else if (ddlheader1.SelectedValue == "2")
                {
                    fup_fileupload1.Visible = true;
                    btncontentupload1.Visible = true;
                    txt_rowcontent1.Visible = false;
                }
                else
                {

                }
            }
            catch (Exception ex)
            {

            }
            finally
            {

            }

        }

        protected void ddlheader2_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                lblheader2.Visible = true;
                lblheader2.Text = txtheader2.Text;
                if (ddlheader2.SelectedValue == "1")
                {
                    txt_rowcontent2.Visible = true;
                    fup_fileupload2.Visible = false;
                    btncontentupload2.Visible = false;
                    //pnl_entry.Controls.Add(tb2);
                }
                else if (ddlheader2.SelectedValue == "2")
                {
                    fup_fileupload2.Visible = true;
                    btncontentupload2.Visible = true;
                    txt_rowcontent2.Visible = false;
                }
                else
                {

                }
            }
            catch (Exception ex)
            {

            }
            finally
            {

            }
        }

        protected void ddlheader3_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                lblheader3.Visible = true;
                lblheader3.Text = txtheader3.Text;
                if (ddlheader3.SelectedValue == "1")
                {
                    txt_rowcontent3.Visible = true;
                    fup_fileupload3.Visible = false;
                    btncontentupload3.Visible = false;

                    // pnl_entry.Controls.Add(tb1);
                }
                else if (ddlheader3.SelectedValue == "2")
                {
                    fup_fileupload3.Visible = true;
                    btncontentupload3.Visible = true;
                    txt_rowcontent3.Visible = false;
                }
                else
                {

                }
            }
            catch (Exception ex)
            {

            }
            finally
            {

            }
        }

        protected void ddlheader4_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                lblheader4.Visible = true;
                lblheader4.Text = txtheader4.Text;
                if (ddlheader4.SelectedValue == "1")
                {
                    txt_rowcontent4.Visible = true;
                    fup_fileupload4.Visible = false;
                    btncontentupload4.Visible = false;

                    // pnl_entry.Controls.Add(tb1);
                }
                else if (ddlheader4.SelectedValue == "2")
                {
                    fup_fileupload4.Visible = true;
                    btncontentupload4.Visible = true;
                    txt_rowcontent4.Visible = false;
                }
                else
                {

                }
            }
            catch (Exception ex)
            {

            }
            finally
            {

            }
        }

        protected void ddlheader5_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                lblheader5.Visible = true;
                lblheader5.Text = txtheader5.Text;
                if (ddlheader5.SelectedValue == "1")
                {
                    txt_rowcontent5.Visible = true;
                    fup_fileupload5.Visible = false;
                    btncontentupload5.Visible = false;

                    // pnl_entry.Controls.Add(tb1);
                }
                else if (ddlheader5.SelectedValue == "2")
                {
                    fup_fileupload5.Visible = true;
                    btncontentupload5.Visible = true;
                    txt_rowcontent5.Visible = false;
                }
                else
                {

                }
            }
            catch (Exception ex)
            {

            }
            finally
            {

            }
        }

        protected void ddlheader6_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                lblheader6.Visible = true;
                lblheader6.Text = txtheader6.Text;
                if (ddlheader6.SelectedValue == "1")
                {
                    txt_rowcontent6.Visible = true;
                    fup_fileupload6.Visible = false;
                    btncontentupload6.Visible = false;

                    // pnl_entry.Controls.Add(tb1);
                }
                else if (ddlheader6.SelectedValue == "2")
                {
                    fup_fileupload6.Visible = true;
                    btncontentupload6.Visible = true;
                    txt_rowcontent6.Visible = false;
                }
                else
                {

                }
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
                //FileUpload fileupload = (FileUpload)item.FindControl("fileupload");
                if (fileupload.HasFiles)
                {
                    string imgPath = "";
                    //DataTable dt = new DataTable();
                    //dt.Columns.Add(new DataColumn("ImageUrl", typeof(string)));
                    DataTable dtImage = new DataTable();
                    DataTable dtVideo = new DataTable();

                    dtImage.Columns.Add(new DataColumn("EventName", typeof(string)));
                    dtImage.Columns.Add(new DataColumn("ImageUrl", typeof(string)));
                    dtVideo.Columns.Add(new DataColumn("EventName", typeof(string)));
                    dtVideo.Columns.Add(new DataColumn("ImageUrl", typeof(string)));

                    foreach (HttpPostedFile postedfile in fileupload.PostedFiles)
                    {
                        string CreatedIP = Request.ServerVariables["Remote_Addr"];
                        string useid = "123";// Session["UserID"].ToString();
                        string fileName = Path.GetFileName(postedfile.FileName);
                        if (postedfile.ContentLength > 0)
                        {

                            //string file_full_path = GetUploadFolderPath("GVR", "LibraryManagement", useid, txtContent.Text);
                            string file_full_path = Path.Combine("../Sharepath", "TSFA");
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

                            if (file_full_path.Contains(".mp4"))
                            {
                                DataRow drNewVideo = dtVideo.NewRow();
                                // string imgPath = (file_full_path.ToString()).ToString();
                                drNewVideo["EventName"] = txtEventName.Text;
                                drNewVideo["ImageUrl"] = file_full_path.ToString();
                                dtVideo.Rows.Add(drNewVideo);
                            }
                            else
                            {
                                DataRow drNew = dtImage.NewRow();
                                // string imgPath = (file_full_path.ToString()).ToString();
                                drNew["EventName"] = txtEventName.Text;
                                drNew["ImageUrl"] = file_full_path.ToString();
                                dtImage.Rows.Add(drNew);
                            }

                            //DataRow drNew = dt.NewRow();
                            //// string imgPath = (file_full_path.ToString()).ToString();
                            //drNew["ImageUrl"] = file_full_path;
                            //dt.Rows.Add(drNew);
                            dtImage.AcceptChanges();
                            dtVideo.AcceptChanges();
                        }
                    }
                    Session["Imagefilepath"] = imgPath.ToString().Trim(',');
                    ViewState["Mainimagesfilepath"] = imgPath.ToString().Trim(',');
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
                    if (dtVideo.Rows.Count > 0)
                    {
                        videoRepeater1.Visible = true;
                        videoRepeater1.DataSource = dtVideo;
                        videoRepeater1.DataBind();
                        btnupload.Visible = true;
                    }
                    else
                    {
                        videoRepeater1.Visible = false;
                    }

                }
            }
            catch (Exception ex)
            {

                //throw;
            }
        }

        protected void btnfinalsubmit_Click(object sender, EventArgs e)
        {
            TSFABAL objbal = new TSFABAL();
            MenuMasterBO objmm = new MenuMasterBO();
            DataSet ds = new DataSet();
            objmm.MenuName = txt_MenuName.Text;
            objmm.Description = txt_menudescription.Text;
            if (chk_issubmenu.Checked)
            {
                objmm.Parent_MenuPK = ddlmenulist.SelectedValue;
            }
            else
            {
                objmm.Parent_MenuPK = "0";
            }
            if (ch_isactive.Checked)
                objmm.IsActive = "1";
            else
                objmm.IsActive = "0";

            objmm.CreatedBy = Session["UserID"].ToString();
            objmm.CreatedIP = Request.ServerVariables["Remote_Addr"];
            MenuMasterPageContentBO objmmp = new MenuMasterPageContentBO();
            objmmp.PageName = txt_MenuName.Text;
            objmmp.PageHeader = txt_MenuHeader.Text;
            objmmp.PageDescription = txt_menudescription.Text;
            // objmmp.PageContent = txt_Content.Text;
            objmmp.PageContent = txt_Description.Content;
            TableHeadersBO objth = new TableHeadersBO();
            TableRowContentBO objtrc = new TableRowContentBO();
            UploadImagesBO objimg = new UploadImagesBO();
            DataTable dttablecontent = new DataTable();
            DataTable tblHeaders = new DataTable();
            DataTable tblRowContent = new DataTable();
            DataTable tblImages = new DataTable();
            int isTableAvailable = 0;
            int isEventAvailable = 0;

            if (ViewState["EventDetails"] == null)
            {
                tblImages.Columns.AddRange(new DataColumn[2] { new DataColumn("ImageUrls"), new DataColumn("EventName") });
                ViewState["EventDetails"] = tblImages;
            }
            else
            {
                tblImages = (DataTable)ViewState["EventDetails"];
            }

            dttablecontent = (DataTable)ViewState["CoulmnDetails"];



            tblHeaders.Columns.Add("PageID", typeof(string));
            tblHeaders.Columns.Add("Header1", typeof(string));
            tblHeaders.Columns.Add("Header2", typeof(string));
            tblHeaders.Columns.Add("Header3", typeof(string));
            tblHeaders.Columns.Add("Header4", typeof(string));
            tblHeaders.Columns.Add("Header5", typeof(string));
            tblHeaders.Columns.Add("Header6", typeof(string));
            tblHeaders.Columns.Add("MenuMasterID", typeof(string));
            tblHeaders.Columns.Add("isActive", typeof(string));
            tblHeaders.Columns.Add("CreatedBy", typeof(string));
            tblHeaders.Columns.Add("CreatedIP", typeof(string));
            tblHeaders.Columns.Add("CreatedDate", typeof(string));



            //table rows content

            tblRowContent.Columns.Add("PageID", typeof(string));
            tblRowContent.Columns.Add("HeaderID", typeof(string));
            tblRowContent.Columns.Add("Header1", typeof(string));
            tblRowContent.Columns.Add("Header2", typeof(string));
            tblRowContent.Columns.Add("Header3", typeof(string));
            tblRowContent.Columns.Add("Header4", typeof(string));
            tblRowContent.Columns.Add("Header5", typeof(string));
            tblRowContent.Columns.Add("Header6", typeof(string));
            tblRowContent.Columns.Add("MenuMasterID", typeof(string));
            tblRowContent.Columns.Add("isActive", typeof(string));
            tblRowContent.Columns.Add("CreatedBy", typeof(string));
            tblRowContent.Columns.Add("CreatedIP", typeof(string));
            tblRowContent.Columns.Add("CreatedDate", typeof(string));
            if (chcktables.Checked == true)
            {




                int columncount = Convert.ToInt32(ddlcolumnscount.SelectedValue);

                if (txtheader1.Text != "")
                {
                    tblHeaders.Rows.Add(null, txtheader1.Text, txtheader2.Text, txtheader3.Text, txtheader4.Text, txtheader5.Text, txtheader6.Text, null, "1", "1", Request.ServerVariables["Remote_Addr"], "");

                    for (int i = 0; i < dttablecontent.Rows.Count; i++)
                    {
                        switch (columncount)
                        {
                            case 2:

                                tblRowContent.Rows.Add(null, null, dttablecontent.Rows[i][txtheader1.Text], dttablecontent.Rows[i][txtheader2.Text],
                          null, null, null, null, null, "1", "1", Request.ServerVariables["Remote_Addr"], "");

                                break;
                            case 3:
                                tblRowContent.Rows.Add(null, null, dttablecontent.Rows[i][txtheader1.Text], dttablecontent.Rows[i][txtheader2.Text],
                          dttablecontent.Rows[i][txtheader3.Text], null, null, null, null, "1", "1", Request.ServerVariables["Remote_Addr"], "");
                                break;
                            case 4:
                                tblRowContent.Rows.Add(null, null, dttablecontent.Rows[i][txtheader1.Text], dttablecontent.Rows[i][txtheader2.Text],
                          dttablecontent.Rows[i][txtheader3.Text], dttablecontent.Rows[i][txtheader4.Text], null, null, null, "1", "1", Request.ServerVariables["Remote_Addr"], "");
                                break;
                            case 5:
                                tblRowContent.Rows.Add(null, null, dttablecontent.Rows[i][txtheader1.Text], dttablecontent.Rows[i][txtheader2.Text],
                          dttablecontent.Rows[i][txtheader3.Text], dttablecontent.Rows[i][txtheader4.Text], dttablecontent.Rows[i][txtheader5.Text], null, null, "1", "1", Request.ServerVariables["Remote_Addr"], "");
                                break;
                            case 6:
                                tblRowContent.Rows.Add(null, null, dttablecontent.Rows[i][txtheader1.Text], dttablecontent.Rows[i][txtheader2.Text],
                          dttablecontent.Rows[i][txtheader3.Text], dttablecontent.Rows[i][txtheader4.Text], dttablecontent.Rows[i][txtheader5.Text], dttablecontent.Rows[i][txtheader6.Text], null, "1", "1", Request.ServerVariables["Remote_Addr"], "");
                                break;
                        }
                    }
                }
                else
                {
                   // tblHeaders.Rows.Add(null, txtheader1.Text, txtheader2.Text, txtheader3.Text, txtheader4.Text, txtheader5.Text, txtheader6.Text, null, "1", "1", Request.ServerVariables["Remote_Addr"], "");

                    for (int i = 0; i < dttablecontent.Rows.Count; i++)
                    {
                        switch (columncount)
                        {
                            case 2:
                                tblHeaders.Rows.Add(null, dttablecontent.Columns[0].ToString(), dttablecontent.Columns[1].ToString(),  null, null, null, null, "1", "1", Request.ServerVariables["Remote_Addr"], "");
                                tblRowContent.Rows.Add(null, null, dttablecontent.Rows[i][0], dttablecontent.Rows[i][1],
                          null, null, null, null, null, "1", "1", Request.ServerVariables["Remote_Addr"], "");

                                break;
                            case 3:
                                tblHeaders.Rows.Add(null, dttablecontent.Columns[0].ToString(), dttablecontent.Columns[1].ToString(), dttablecontent.Columns[2].ToString(), null, null, null, null, "1", "1", Request.ServerVariables["Remote_Addr"], "");
                                tblRowContent.Rows.Add(null, null, dttablecontent.Rows[i][0], dttablecontent.Rows[i][1],
                          dttablecontent.Rows[i][2], null, null, null, null, "1", "1", Request.ServerVariables["Remote_Addr"], "");
                                break;
                            case 4:
                                tblHeaders.Rows.Add(null, dttablecontent.Columns[0].ToString(), dttablecontent.Columns[1].ToString(), dttablecontent.Columns[2].ToString(), dttablecontent.Columns[3].ToString(), null, null, null, "1", "1", Request.ServerVariables["Remote_Addr"], "");
                                tblRowContent.Rows.Add(null, null, dttablecontent.Rows[i][0], dttablecontent.Rows[i][1],
                          dttablecontent.Rows[i][2], dttablecontent.Rows[i][3], null, null, null, "1", "1", Request.ServerVariables["Remote_Addr"], "");
                                break;
                            case 5:
                                tblHeaders.Rows.Add(null, dttablecontent.Columns[0].ToString(), dttablecontent.Columns[1].ToString(), dttablecontent.Columns[2].ToString(), dttablecontent.Columns[3].ToString(), dttablecontent.Columns[4].ToString(), null, null, "1", "1", Request.ServerVariables["Remote_Addr"], "");
                                tblRowContent.Rows.Add(null, null, dttablecontent.Rows[i][0], dttablecontent.Rows[i][1],
                          dttablecontent.Rows[i][2], dttablecontent.Rows[i][3], dttablecontent.Rows[i][4], null, null, "1", "1", Request.ServerVariables["Remote_Addr"], "");
                                break;
                            case 6:
                                tblHeaders.Rows.Add(null, dttablecontent.Columns[0].ToString(), dttablecontent.Columns[1].ToString(), dttablecontent.Columns[2].ToString(), dttablecontent.Columns[3].ToString(), dttablecontent.Columns[4].ToString(), dttablecontent.Columns[5].ToString(), null, "1", "1", Request.ServerVariables["Remote_Addr"], "");
                                tblRowContent.Rows.Add(null, null, dttablecontent.Rows[i][0], dttablecontent.Rows[i][1],
                          dttablecontent.Rows[i][2], dttablecontent.Rows[i][3], dttablecontent.Rows[i][4], dttablecontent.Rows[i][5], null, "1", "1", Request.ServerVariables["Remote_Addr"], "");
                                break;
                        }
                    }
                    if (dttablecontent.Rows.Count > 0)
                    {
                        isTableAvailable = 1;
                    }

                }
                if (tblImages.Rows.Count > 0)
                {
                    isEventAvailable = 1;
                }
                //ds = objbal.Pr_InsertMenuMasterDet(objmm, objmmp, objth, objtrc, objimg, tblHeaders, tblRowContent, ViewState["imagesfilepath"].ToString());

            }
            //else
            //{
            if (ViewState["PageMenuID"] != null)
            {
                objmmp.ID = Convert.ToInt32(ViewState["PageMenuID"].ToString());
                objmmp.MenuMasterID = ViewState["MenuID"].ToString();
                string columnsChange = "";
                string rowsChange = "";
                if (chkColumns.Checked == true)
                    columnsChange = "1";
                else
                    columnsChange = "0";
                if (chkRows.Checked == true)
                    rowsChange = "1";
                else
                    rowsChange = "0";

                //int columncount = 0;
                //if (ddlcolumnscount.SelectedItem.Text != "--Select One--")
                //{
                int columncount = Convert.ToInt32(ddlcolumnscount.SelectedValue);

                if (columncount > 0 && tblRowContent.Rows.Count > 0)
                    columnsChange = "1";

                if (ViewState["Mainimagesfilepath"] == null)
                {
                    ds = objbal.UpdateMenuMasterDet(objmm, objmmp, objth, objtrc, objimg, tblHeaders, tblRowContent, tblImages, columnsChange, rowsChange, isTableAvailable,isEventAvailable);

                }
                else
                {
                    ds = objbal.UpdateMenuMasterDet(objmm, objmmp, objth, objtrc, objimg, tblHeaders, tblRowContent, tblImages, columnsChange, rowsChange, isTableAvailable, isEventAvailable);

                }
            }
            else
            {
                if (ViewState["Mainimagesfilepath"] == null)
                {
                    ds = objbal.Pr_InsertMenuMasterDet(objmm, objmmp, objth, objtrc, objimg, tblHeaders, tblRowContent, tblImages);

                }
                else
                {
                    ds = objbal.Pr_InsertMenuMasterDet(objmm, objmmp, objth, objtrc, objimg, tblHeaders, tblRowContent, tblImages);

                }
            }

            //}

            if (ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["Result"].ToString() == "1007")
                {
                    div_exists.Visible = true;

                }
                else if (ds.Tables[0].Rows[0]["Result"].ToString() == "1005" || ds.Tables[0].Rows[0]["Result"].ToString() == "1006")
                {
                    div_fail.Visible = true;
                }
                else
                {
                    grd_eventdata.DataSource = "";
                    grd_eventdata.DataBind();
                    grd_eventdata.Visible = false;
                    div_success.Visible = true;
                    clearsession();
                    //Session["AdministrationTypeID"] = "";
                }
            }

        }

        protected void btncontentupload1_Click(object sender, EventArgs e)
        {
            try
            {


                // ViewState["TypeOFRequest"] = "1";
                DataSet ds = new DataSet();
                DataSet ds1 = new DataSet();
                //RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
                //FileUpload fileupload = (FileUpload)item.FindControl("fileupload");
                if (fup_fileupload1.HasFiles)
                {
                    string imgPath = "";
                    DataTable dt = new DataTable();
                    dt.Columns.Add(new DataColumn("ImageUrl", typeof(string)));

                    foreach (HttpPostedFile postedfile in fup_fileupload1.PostedFiles)
                    {
                        string CreatedIP = Request.ServerVariables["Remote_Addr"];
                        string useid = "123";// Session["UserID"].ToString();
                        string fileName = Path.GetFileName(postedfile.FileName);
                        if (postedfile.ContentLength > 0)
                        {

                            //string file_full_path = GetUploadFolderPath("GVR", "LibraryManagement", useid, txtContent.Text);
                            string file_full_path = Path.Combine("../Sharepath", "TSFA");
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
                    ViewState["imagesfilepath"] = imgPath.ToString().Trim(',');
                    txt_rowcontent1.Text = ViewState["imagesfilepath"].ToString();
                    if (dt.Rows.Count > 0)
                    {
                        Repeater1.Visible = true;
                        Repeater1.DataSource = dt;
                        Repeater1.DataBind();
                    }
                    else
                    {
                        Repeater1.Visible = false;
                    }
                }
            }
            catch (Exception ex)
            {

                //throw;
            }
        }

        protected void btncontentupload2_Click(object sender, EventArgs e)
        {
            try
            {


                // ViewState["TypeOFRequest"] = "1";
                DataSet ds = new DataSet();
                DataSet ds1 = new DataSet();
                //RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
                //FileUpload fileupload = (FileUpload)item.FindControl("fileupload");
                if (fup_fileupload2.HasFiles)
                {
                    string imgPath = "";
                    DataTable dt = new DataTable();
                    dt.Columns.Add(new DataColumn("ImageUrl", typeof(string)));

                    foreach (HttpPostedFile postedfile in fup_fileupload2.PostedFiles)
                    {
                        string CreatedIP = Request.ServerVariables["Remote_Addr"];
                        string useid = "123";// Session["UserID"].ToString();
                        string fileName = Path.GetFileName(postedfile.FileName);
                        lblfileName2.Text = Path.GetFileName(postedfile.FileName);
                        if (postedfile.ContentLength > 0)
                        {
                            //string file_full_path = GetUploadFolderPath("GVR", "LibraryManagement", useid, txtContent.Text);
                            string file_full_path = Path.Combine("../Sharepath", "TSFA");
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
                    ViewState["imagesfilepath"] = imgPath.ToString().Trim(',');
                    txt_rowcontent2.Text = ViewState["imagesfilepath"].ToString();
                    if (dt.Rows.Count > 0)
                    {
                        Repeater2.Visible = true;
                        Repeater2.DataSource = dt;
                        Repeater2.DataBind();
                    }
                    else
                    {
                        Repeater2.Visible = false;
                    }
                }
            }
            catch (Exception ex)
            {

                //throw;
            }
        }

        protected void btncontentupload3_Click(object sender, EventArgs e)
        {
            try
            {


                // ViewState["TypeOFRequest"] = "1";
                DataSet ds = new DataSet();
                DataSet ds1 = new DataSet();
                //RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
                //FileUpload fileupload = (FileUpload)item.FindControl("fileupload");
                if (fup_fileupload3.HasFiles)
                {
                    string imgPath = "";
                    DataTable dt = new DataTable();
                    dt.Columns.Add(new DataColumn("ImageUrl", typeof(string)));

                    foreach (HttpPostedFile postedfile in fup_fileupload3.PostedFiles)
                    {
                        string CreatedIP = Request.ServerVariables["Remote_Addr"];
                        string useid = "123";// Session["UserID"].ToString();
                        string fileName = Path.GetFileName(postedfile.FileName);
                        lblfileName3.Text = Path.GetFileName(postedfile.FileName); ;
                        if (postedfile.ContentLength > 0)
                        {

                            //string file_full_path = GetUploadFolderPath("GVR", "LibraryManagement", useid, txtContent.Text);
                            string file_full_path = Path.Combine("../Sharepath", "TSFA");
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
                    ViewState["imagesfilepath"] = imgPath.ToString().Trim(',');
                    txt_rowcontent3.Text = ViewState["imagesfilepath"].ToString();
                    if (dt.Rows.Count > 0)
                    {
                        Repeater3.Visible = true;
                        Repeater3.DataSource = dt;
                        Repeater3.DataBind();
                    }
                    else
                    {
                        Repeater3.Visible = false;
                    }
                }
            }
            catch (Exception ex)
            {

                //throw;
            }
        }

        protected void btncontentupload4_Click(object sender, EventArgs e)
        {
            try
            {


                // ViewState["TypeOFRequest"] = "1";
                DataSet ds = new DataSet();
                DataSet ds1 = new DataSet();
                //RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
                //FileUpload fileupload = (FileUpload)item.FindControl("fileupload");
                if (fup_fileupload4.HasFiles)
                {
                    string imgPath = "";
                    DataTable dt = new DataTable();
                    dt.Columns.Add(new DataColumn("ImageUrl", typeof(string)));

                    foreach (HttpPostedFile postedfile in fup_fileupload4.PostedFiles)
                    {
                        string CreatedIP = Request.ServerVariables["Remote_Addr"];
                        string useid = "123";// Session["UserID"].ToString();
                        string fileName = Path.GetFileName(postedfile.FileName);
                        lblfileName4.Text = Path.GetFileName(postedfile.FileName); ;
                        if (postedfile.ContentLength > 0)
                        {

                            //string file_full_path = GetUploadFolderPath("GVR", "LibraryManagement", useid, txtContent.Text);
                            string file_full_path = Path.Combine("../Sharepath", "TSFA");
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
                    ViewState["imagesfilepath"] = imgPath.ToString().Trim(',');
                    txt_rowcontent4.Text = ViewState["imagesfilepath"].ToString();
                    if (dt.Rows.Count > 0)
                    {
                        Repeater4.Visible = true;
                        Repeater4.DataSource = dt;
                        Repeater4.DataBind();
                    }
                    else
                    {
                        Repeater4.Visible = false;
                    }
                }
            }
            catch (Exception ex)
            {

                //throw;
            }
        }

        protected void btncontentupload5_Click(object sender, EventArgs e)
        {
            try
            {


                // ViewState["TypeOFRequest"] = "1";
                DataSet ds = new DataSet();
                DataSet ds1 = new DataSet();
                //RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
                //FileUpload fileupload = (FileUpload)item.FindControl("fileupload");
                if (fup_fileupload5.HasFiles)
                {
                    string imgPath = "";
                    DataTable dt = new DataTable();
                    dt.Columns.Add(new DataColumn("ImageUrl", typeof(string)));

                    foreach (HttpPostedFile postedfile in fup_fileupload5.PostedFiles)
                    {
                        string CreatedIP = Request.ServerVariables["Remote_Addr"];
                        string useid = "123";// Session["UserID"].ToString();
                        string fileName = Path.GetFileName(postedfile.FileName);
                        lblfileName5.Text = Path.GetFileName(postedfile.FileName); ;
                        if (postedfile.ContentLength > 0)
                        {

                            //string file_full_path = GetUploadFolderPath("GVR", "LibraryManagement", useid, txtContent.Text);
                            string file_full_path = Path.Combine("../Sharepath", "TSFA");
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
                    ViewState["imagesfilepath"] = imgPath.ToString().Trim(',');
                    txt_rowcontent5.Text = ViewState["imagesfilepath"].ToString();
                    if (dt.Rows.Count > 0)
                    {
                        Repeater5.Visible = true;
                        Repeater5.DataSource = dt;
                        Repeater5.DataBind();
                    }
                    else
                    {
                        Repeater5.Visible = false;
                    }
                }
            }
            catch (Exception ex)
            {

                //throw;
            }
        }

        protected void btncontentupload6_Click(object sender, EventArgs e)
        {
            try
            {


                // ViewState["TypeOFRequest"] = "1";
                DataSet ds = new DataSet();
                DataSet ds1 = new DataSet();
                //RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
                //FileUpload fileupload = (FileUpload)item.FindControl("fileupload");
                if (fup_fileupload6.HasFiles)
                {
                    string imgPath = "";
                    DataTable dt = new DataTable();
                    dt.Columns.Add(new DataColumn("ImageUrl", typeof(string)));

                    foreach (HttpPostedFile postedfile in fup_fileupload6.PostedFiles)
                    {
                        string CreatedIP = Request.ServerVariables["Remote_Addr"];
                        string useid = "123";// Session["UserID"].ToString();
                        string fileName = Path.GetFileName(postedfile.FileName);
                        lblfileName6.Text = Path.GetFileName(postedfile.FileName); ;
                        if (postedfile.ContentLength > 0)
                        {

                            //string file_full_path = GetUploadFolderPath("GVR", "LibraryManagement", useid, txtContent.Text);
                            string file_full_path = Path.Combine("../Sharepath", "TSFA");
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
                    ViewState["imagesfilepath"] = imgPath.ToString().Trim(',');
                    txt_rowcontent6.Text = ViewState["imagesfilepath"].ToString();
                    if (dt.Rows.Count > 0)
                    {
                        Repeater6.Visible = true;
                        Repeater6.DataSource = dt;
                        Repeater6.DataBind();
                    }
                    else
                    {
                        Repeater6.Visible = false;
                    }
                }
            }
            catch (Exception ex)
            {

                //throw;
            }
        }

        protected void btn_Preview_Click(object sender, EventArgs e)
        {
            if (ViewState["MenuID"] != null)
            {
                Response.Redirect("MenuPreview.aspx?MenuID=" + ViewState["MenuID"].ToString());
            }
        }

        protected void grid_data_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grid_data.PageIndex = e.NewPageIndex;
            bindgriddata();
        }
        protected void chckevents_CheckedChanged(object sender, EventArgs e)
        {
            if (chckevents.Checked)
            {
                div_eventimages.Visible = true;
            }
            else
            {
                div_eventimages.Visible = false;
            }

        }

        protected void btnaddevent_Click(object sender, EventArgs e)
        {


            DataTable dteventdetails = new DataTable();
            if (ViewState["EventDetails"] != null)
            {
                dteventdetails = (DataTable)ViewState["EventDetails"];
            }

            if (ViewState["EventDetails"] == null)
            {
                dteventdetails.Columns.AddRange(new DataColumn[2] { new DataColumn("ImageUrls"), new DataColumn("EventName") });
                ViewState["EventDetails"] = dteventdetails;
            }

            if (!string.IsNullOrEmpty(txtEventName.Text) && ViewState["Mainimagesfilepath"] != null)
            {
                dteventdetails.Rows.Add(ViewState["Mainimagesfilepath"].ToString(), txtEventName.Text);
                ViewState["EventDetails"] = dteventdetails;
                txtEventName.Text = "";
                rptImage.Visible = false;
                grd_eventdata.Visible = true;
                grd_eventdata.DataSource = ViewState["EventDetails"];
                grd_eventdata.DataBind();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill the all fields')", true);
            }

        }

        protected void chkColumns_CheckedChanged(object sender, EventArgs e)
        {
            ddlcolumnscount.Enabled = true;

            if (chkColumns.Checked == true)
            {

                div_tablescreation.Visible = true;
                ddlcolumnscount.Visible = true;
                ddlcolumnscount.SelectedValue = "0";
                pnlTbl.Visible = true;
                // chkColumns.Checked = false;

                chkRows.Checked = false;


            }
            else
            {
                chkRows.Checked = false;

            }

        }

        protected void chkRows_CheckedChanged(object sender, EventArgs e)
        {
            chkColumns.Checked = false;
            if (chkRows.Checked == true)
            {
                if (ViewState["MenuID"] != null)
                {
                    DataSet ds = objbal.Pr_GetMenuContentDetails("2", ViewState["MenuID"].ToString());

                    if (ds.Tables[2].Rows.Count > 0)
                    {
                        chcktables.Checked = true;
                        DataTable dt = new DataTable();
                        dt.Clear();
                        dt.Columns.Add(ds.Tables[2].Rows[0]["Header1"].ToString());
                        dt.Columns.Add(ds.Tables[2].Rows[0]["Header2"].ToString());
                        dt.Columns.Add(ds.Tables[2].Rows[0]["Header3"].ToString());
                        dt.Columns.Add(ds.Tables[2].Rows[0]["Header4"].ToString());
                        dt.Columns.Add(ds.Tables[2].Rows[0]["Header5"].ToString());
                        dt.Columns.Add(ds.Tables[2].Rows[0]["Header6"].ToString());

                        if (ds.Tables[3].Rows.Count > 0)
                        {
                            for (int i = 0; i < ds.Tables[3].Rows.Count; i++)
                            {
                                dt.Rows.Add(ds.Tables[3].Rows[i][3].ToString(), ds.Tables[3].Rows[i][4].ToString(), ds.Tables[3].Rows[i][5].ToString(), ds.Tables[3].Rows[i][6].ToString(), ds.Tables[3].Rows[i][7].ToString(), ds.Tables[3].Rows[i][8].ToString());
                            }
                        }



                        for (int col = dt.Columns.Count - 1; col >= 0; col--)
                        {
                            bool removeColumn = true;
                            foreach (DataRow rowH in dt.Rows)
                            {
                                if (rowH.ItemArray[col] == "")
                                {
                                    removeColumn = false;
                                    break;
                                }
                            }
                            if (!removeColumn) dt.Columns.RemoveAt(col);
                        }
                        btnviewtable.Visible = true;
                        ViewState["CoulmnDetails"] = dt;
                        grd_tablecontent.DataSource = dt;
                        grd_tablecontent.DataBind();
                        grd_tablecontent.Visible = true;
                        div_tablescreation.Visible = true;
                        ddlcolumnscount.Visible = true;
                        ddlcolumnscount.SelectedValue = dt.Columns.Count.ToString();
                        pnlTbl.Visible = true;

                        ddlcolumnscount.Enabled = false;



                        //for (int i = 2; i <= dt.Columns.Count; i++)
                        //{
                        txt_rowcontent1.Visible = true;
                        if (dt.Columns.Count >= 2)
                        {
                            if (dt.Columns.Count >= 2)
                            {
                                txtheader1.Text = dt.Columns[0].ToString();
                                txtheader2.Text = dt.Columns[1].ToString();
                                //txtheader1.Visible = true;
                                //txtheader2.Visible = true;
                                lblheader1.Visible = true;
                                lblheader2.Visible = true;
                                lblheader1.Text = dt.Columns[0].ToString();
                                lblheader2.Text = dt.Columns[1].ToString();
                                if (dt.Rows[0][1].ToString().Contains("../Sharepath") == false)
                                {
                                    txt_rowcontent2.Visible = true;
                                    fup_fileupload2.Visible = false;
                                    btncontentupload2.Visible = false;
                                }
                                else
                                {
                                    txt_rowcontent2.Visible = false;
                                    fup_fileupload2.Visible = true;
                                    btncontentupload2.Visible = true;
                                }
                            }
                            if (dt.Columns.Count >= 3)
                            {
                                lblheader3.Visible = true;
                                if (dt.Rows[0][2].ToString().Contains("../Sharepath") == false)
                                {
                                    txt_rowcontent3.Visible = true;
                                    fup_fileupload3.Visible = false;
                                    btncontentupload3.Visible = false;
                                }
                                else
                                {
                                    txt_rowcontent3.Visible = false;
                                    fup_fileupload3.Visible = true;
                                    btncontentupload3.Visible = true;
                                }
                            }
                            if (dt.Columns.Count >= 4)
                            {
                                lblheader4.Visible = true;
                                if (dt.Rows[0][3].ToString().Contains("../Sharepath") == false)
                                {
                                    txt_rowcontent4.Visible = true;
                                    fup_fileupload4.Visible = false;
                                    btncontentupload4.Visible = false;
                                }
                                else
                                {
                                    txt_rowcontent4.Visible = false;
                                    fup_fileupload4.Visible = true;
                                    btncontentupload4.Visible = true;
                                }
                            }
                            if (dt.Columns.Count >= 5)
                            {
                                lblheader5.Visible = true;
                                if (dt.Rows[0][4].ToString().Contains("../Sharepath") == false)
                                {
                                    txt_rowcontent5.Visible = true;
                                    fup_fileupload5.Visible = false;
                                    btncontentupload5.Visible = false;
                                }
                                else
                                {
                                    txt_rowcontent5.Visible = false;
                                    fup_fileupload5.Visible = true;
                                    btncontentupload5.Visible = true;
                                }
                            }
                            if (dt.Columns.Count >= 6)
                            {
                                lblheader6.Visible = true;
                                if (dt.Rows[0][5].ToString().Contains("../Sharepath") == false)
                                {
                                    txt_rowcontent6.Visible = true;
                                    fup_fileupload6.Visible = false;
                                    btncontentupload6.Visible = false;
                                }
                                else
                                {
                                    txt_rowcontent6.Visible = false;
                                    fup_fileupload6.Visible = true;
                                    btncontentupload6.Visible = true;
                                }
                            }

                        }

                    }


                }
            }
            else
            {
                ddlcolumnscount.Enabled = true;
                div_tablescreation.Visible = false;
                btnviewtable.Visible = false;
                ddlcolumnscount.Visible = false;
                ddlcolumnscount.SelectedValue = "0";
                clearvisibility();
                cleartablecontent();
                pnlTbl.Visible = false;
            }

            // chkColumns.Visible = false;

        }

        protected void grd_eventdata_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void grd_tablecontent_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            var colCount = e.Row.Cells.Count;

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[colCount - 1].Text.Contains("../Sharepath") == true)
                {
                    //e.Row.Cells[colCount].Visible = false;
                    //e.Row.Cells[colCount+1].Visible = true;
                    HyperLink lnk_url = e.Row.FindControl("lnk_url") as HyperLink;
                    lnk_url.NavigateUrl = e.Row.Cells[colCount - 1].Text;
                    e.Row.Cells[colCount - 1].Visible = false;
                    grd_tablecontent.HeaderRow.Cells[colCount - 1].Visible = false;


                    //int columnIndexToMoveToLast = 0;

                    //// Adjust the newColumnOrder array based on the total number of columns
                    //int[] newColumnOrder = new int[colCount];
                    //for (int i = 0; i < colCount - 1; i++)
                    //{
                    //    newColumnOrder[i] = i ;
                    //}
                    //newColumnOrder[colCount - 1] = columnIndexToMoveToLast;

                    //// Create a new list to hold the reordered columns
                    //List<DataControlField> reorderedColumns = new List<DataControlField>();

                    //// Reorder the columns based on the newColumnOrder array
                    //foreach (int columnIndex in newColumnOrder)
                    //{
                    //    reorderedColumns.Add(grd_tablecontent.Columns[columnIndex]);
                    //}

                    //// Add the last column (the one you want to move) to the reordered columns
                    //reorderedColumns.Add(grd_tablecontent.Columns[columnIndexToMoveToLast]);

                    //// Clear the existing columns in the GridView
                    //grd_tablecontent.Columns.Clear();

                    //// Add the reordered columns back to the GridView
                    //foreach (DataControlField column in reorderedColumns)
                    //{
                    //    grd_tablecontent.Columns.Add(column);
                    //}

                }
                if (e.Row.Cells[colCount - 1].Text.Contains("../Sharepath") == false)
                {
                    grd_tablecontent.HeaderRow.Cells[1].Visible = false;
                    e.Row.Cells[1].Visible = false;
                }

            }

        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            GridViewRow row = (GridViewRow)((Button)sender).NamingContainer;
            Button lb = (Button)sender;
            GridViewRow rows = (GridViewRow)lb.NamingContainer;
            try
            {

                if (rows != null)
                {
                    int index = rows.RowIndex;
                    //Label lblBookID = rows.FindControl("lblBookID") as Label;
                    DataTable dt = (DataTable)ViewState["CoulmnDetails"];
                    dt.Rows[index].Delete();
                    ViewState["CoulmnDetails"] = dt;
                    if (dt.Rows.Count > 0)
                    {
                        if (dt.Rows.Count > 0)
                        {
                            //if (!string.IsNullOrEmpty(dt.Rows[0]["BookID"].ToString()))
                            //{
                            grd_tablecontent.DataSource = dt;
                            grd_tablecontent.DataBind();
                            //}
                            //else
                            //{
                            //}
                        }
                        else
                        {
                            //btnSave.Visible = false;
                        }
                    }
                    else
                    {
                        grd_tablecontent.Visible = false;
                    }
                }

            }
            catch (Exception ex)
            {

            }


        }

        protected void btnEventDelete_Click(object sender, EventArgs e)
        {
            GridViewRow row = (GridViewRow)((Button)sender).NamingContainer;
            Button lb = (Button)sender;
            GridViewRow rows = (GridViewRow)lb.NamingContainer;
            try
            {

                if (rows != null)
                {
                    int index = rows.RowIndex;
                    //Label lblBookID = rows.FindControl("lblBookID") as Label;
                    DataTable dt = (DataTable)ViewState["EventDetails"];
                    dt.Rows[index].Delete();
                    ViewState["EventDetails"] = dt;
                    if (dt.Rows.Count > 0)
                    {
                        if (dt.Rows.Count > 0)
                        {
                            grd_eventdata.DataSource = dt;
                            grd_eventdata.DataBind();
                        }
                        else
                        {
                            //btnSave.Visible = false;
                        }
                    }
                    else
                    {
                        grd_eventdata.Visible = false;
                    }
                }

            }
            catch (Exception ex)
            {

            }


        }
    }
}