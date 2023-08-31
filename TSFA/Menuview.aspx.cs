using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static TSFA.TSFABO;

namespace TSFA
{
    public partial class Menuview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["pageName"] = null;
            string MenuID = Request.QueryString["MenuID"];
            Session["MenuID"] = MenuID.ToString();
            
            if (!IsPostBack)
            {
                binddata();
            }

        }
        public void binddata()
        {

            TSFABAL objbal = new TSFABAL();
            if (Session["MenuID"] != null && !string.IsNullOrWhiteSpace(Session["MenuID"].ToString()))
            {
                DataSet ds = objbal.Pr_GetMenuContentDetails("2", Session["MenuID"].ToString());
                if (ds.Tables[0].Rows.Count > 0)
                {
                    lblPagename.Text = ds.Tables[0].Rows[0]["PageName"].ToString();
                    //p_paragraph.InnerHtml = ds.Tables[0].Rows[0]["PageContent"].ToString();
                    if (lblPagename.Text.Contains("Contact"))
                    {
                        binddropdown();
                        pnl_entry.Visible = true;
                        div_Contact.Visible = true;
                        div_ContactUsData.Visible = true;
                        p_ContactUs.Visible = true;
                        p_ContactUs.InnerHtml = ds.Tables[0].Rows[0]["PageContent"].ToString();

                    }
                    else if(lblPagename.Text.ToLower().Contains("who's who"))
                    {
                        Response.Redirect("Whoswho.aspx",true);
                    }
                    else if (lblPagename.Text.ToLower().Contains("facilities"))
                    {
                        Response.Redirect("Facilityviews.aspx", true);
                    }
                    else
                    {
                        pnl_entry.Visible = false;
                        p_ContactUs.Visible = false;
                        div_Contact.Visible = false;
                        div_ContactUsData.Visible = false;
                        p_paragraph.InnerHtml = ds.Tables[0].Rows[0]["PageContent"].ToString();
                    }

                }
                if (ds.Tables[1].Rows.Count > 0)
                {
                    DataTable dtImage = new DataTable();
                    DataTable dtVideo = new DataTable();
                    dtImage.Columns.Add(new DataColumn("ID", typeof(string)));
                    dtImage.Columns.Add(new DataColumn("EventName", typeof(string)));
                    dtImage.Columns.Add(new DataColumn("ImageUrls", typeof(string)));
                    dtImage.Columns.Add(new DataColumn("MenuMasterID", typeof(string)));
                    
                    dtVideo.Columns.Add(new DataColumn("ID", typeof(string)));
                    dtVideo.Columns.Add(new DataColumn("EventName", typeof(string)));
                    dtVideo.Columns.Add(new DataColumn("ImageUrls", typeof(string)));
                    dtVideo.Columns.Add(new DataColumn("MenuMasterID", typeof(string)));

                    for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
                    {
                        string[] filePath = ds.Tables[1].Rows[i]["Upload_Files"].ToString().Split(',');

                        foreach (var item in filePath)
                        {
                            if (item.Contains(".mp4"))
                            {
                                DataRow drNewVideo = dtVideo.NewRow();
                                // string imgPath = (file_full_path.ToString()).ToString();
                                drNewVideo["ID"] = ds.Tables[1].Rows[i]["ID"].ToString();
                                drNewVideo["EventName"] = ds.Tables[1].Rows[i]["EventName"].ToString();
                                drNewVideo["ImageUrls"] = item.ToString();
                                drNewVideo["MenuMasterID"] = ds.Tables[1].Rows[i]["MenuMasterID"].ToString();
                                dtVideo.Rows.Add(drNewVideo);
                            }
                            else
                            {
                                DataRow drNew = dtImage.NewRow();
                                // string imgPath = (file_full_path.ToString()).ToString();
                                drNew["ID"] = ds.Tables[1].Rows[i]["ID"].ToString();
                                drNew["EventName"] = ds.Tables[1].Rows[i]["EventName"].ToString();
                                drNew["ImageUrls"] = item.ToString();
                                drNew["MenuMasterID"] = ds.Tables[1].Rows[i]["MenuMasterID"].ToString();
                                dtImage.Rows.Add(drNew);
                            }

                        }
                        dtImage.AcceptChanges();
                        dtVideo.AcceptChanges();
                        
                    }
                    if (dtImage.Rows.Count > 0)
                    {
                        imagesuploadRepeater.DataSource = dtImage;
                        imagesuploadRepeater.DataBind();
                        imagesuploadRepeater.Visible = true;
                    }

                    if (dtVideo.Rows.Count > 0)
                    {
                        videoRepeater.DataSource = dtVideo;
                        videoRepeater.DataBind();
                        videoRepeater.Visible = true;
                    }
                }
                else
                {
                    imagesuploadRepeater.Visible = false;
                }
                //if (ds.Tables[1].Rows.Count > 0)
                //{
                //    img_headimage.Src = ds.Tables[1].Rows[0]["Upload_Files"].ToString();
                //    img_headimage.Visible = true;
                //}
                //else
                //{
                //    img_headimage.Visible = false;

                //}

                if (ds.Tables[2].Rows.Count > 0)
                {
                    pnl_table.Controls.Add(new LiteralControl("<table class='table table-hover'>"));
                    if (ds.Tables[2].Rows[0]["Header1"] != null && !string.IsNullOrWhiteSpace(ds.Tables[2].Rows[0]["Header1"].ToString()))
                    {
                        pnl_table.Controls.Add(new LiteralControl("<th>"));
                        Label lblHeader1 = new Label();
                        lblHeader1.Attributes.Add("runat", "server");
                        lblHeader1.Text = ds.Tables[2].Rows[0]["Header1"].ToString();
                        pnl_table.Controls.Add(lblHeader1);
                        pnl_table.Controls.Add(new LiteralControl("</th>"));
                    }
                    if (ds.Tables[2].Rows[0]["Header2"] != null && !string.IsNullOrWhiteSpace(ds.Tables[2].Rows[0]["Header2"].ToString()))
                    {
                        pnl_table.Controls.Add(new LiteralControl("<th>"));
                        Label lblHeader2 = new Label();
                        lblHeader2.Attributes.Add("runat", "server");
                        lblHeader2.Text = ds.Tables[2].Rows[0]["Header2"].ToString();
                        pnl_table.Controls.Add(lblHeader2);
                        pnl_table.Controls.Add(new LiteralControl("</th>"));
                    }
                    if (ds.Tables[2].Rows[0]["Header3"] != null && !string.IsNullOrWhiteSpace(ds.Tables[2].Rows[0]["Header3"].ToString()))
                    {
                        pnl_table.Controls.Add(new LiteralControl("<th>"));
                        Label lblHeader3 = new Label();
                        lblHeader3.Attributes.Add("runat", "server");
                        lblHeader3.Text = ds.Tables[2].Rows[0]["Header3"].ToString();
                        pnl_table.Controls.Add(lblHeader3);
                        pnl_table.Controls.Add(new LiteralControl("</th>"));
                    }
                    if (ds.Tables[2].Rows[0]["Header4"] != null && !string.IsNullOrWhiteSpace(ds.Tables[2].Rows[0]["Header4"].ToString()))
                    {
                        pnl_table.Controls.Add(new LiteralControl("<th>"));
                        Label lblHeader4 = new Label();
                        lblHeader4.Attributes.Add("runat", "server");
                        lblHeader4.Text = ds.Tables[2].Rows[0]["Header4"].ToString();
                        pnl_table.Controls.Add(lblHeader4);
                        pnl_table.Controls.Add(new LiteralControl("</th>"));
                    }
                    if (ds.Tables[2].Rows[0]["Header5"] != null && !string.IsNullOrWhiteSpace(ds.Tables[2].Rows[0]["Header5"].ToString()))
                    {
                        pnl_table.Controls.Add(new LiteralControl("<th>"));
                        Label lblHeader5 = new Label();
                        lblHeader5.Attributes.Add("runat", "server");
                        lblHeader5.Text = ds.Tables[2].Rows[0]["Header5"].ToString();
                        pnl_table.Controls.Add(lblHeader5);
                        pnl_table.Controls.Add(new LiteralControl("</th>"));
                    }
                    if (ds.Tables[2].Rows[0]["Header6"] != null && !string.IsNullOrWhiteSpace(ds.Tables[2].Rows[0]["Header6"].ToString()))
                    {
                        pnl_table.Controls.Add(new LiteralControl("<th>"));
                        Label lblHeader6 = new Label();
                        lblHeader6.Attributes.Add("runat", "server");
                        lblHeader6.Text = ds.Tables[2].Rows[0]["Header6"].ToString();
                        pnl_table.Controls.Add(lblHeader6);
                        pnl_table.Controls.Add(new LiteralControl("</th>"));
                    }


                    if (ds.Tables[3].Rows.Count > 0)
                    {
                        for (int i = 0; i < ds.Tables[3].Rows.Count; i++)
                        {
                            pnl_table.Controls.Add(new LiteralControl("<tr>"));


                            if (ds.Tables[3].Rows[i]["Header1"] != null && !string.IsNullOrWhiteSpace(ds.Tables[3].Rows[i]["Header1"].ToString()))
                            {
                                pnl_table.Controls.Add(new LiteralControl("<td>"));
                                if (ds.Tables[3].Rows[i]["Header1"].ToString().Contains("../Sharepath") == true)
                                {
                                    HyperLink lblHeader1 = new HyperLink();
                                    lblHeader1.Attributes.Add("runat", "server");
                                    lblHeader1.Text = "View";
                                    lblHeader1.Target = "_blank";
                                    lblHeader1.NavigateUrl = ds.Tables[3].Rows[i]["Header1"].ToString();
                                    pnl_table.Controls.Add(lblHeader1);
                                }
                                else
                                {
                                    Label lblHeader1 = new Label();
                                    lblHeader1.Attributes.Add("runat", "server");
                                    lblHeader1.Text = ds.Tables[3].Rows[i]["Header1"].ToString();
                                    pnl_table.Controls.Add(lblHeader1);

                                }
                                pnl_table.Controls.Add(new LiteralControl("</td>"));
                            }
                            if (ds.Tables[3].Rows[i]["Header2"] != null && !string.IsNullOrWhiteSpace(ds.Tables[3].Rows[i]["Header2"].ToString()))
                            {
                                pnl_table.Controls.Add(new LiteralControl("<td>"));

                                if (ds.Tables[3].Rows[i]["Header2"].ToString().Contains("../Sharepath") == true)
                                {
                                    HyperLink lblHeader2 = new HyperLink();
                                    lblHeader2.Attributes.Add("runat", "server");
                                    lblHeader2.Text = "View";
                                    lblHeader2.Target = "_blank";
                                    lblHeader2.NavigateUrl = ds.Tables[3].Rows[i]["Header2"].ToString();
                                    pnl_table.Controls.Add(lblHeader2);
                                }
                                else
                                {

                                    Label lblHeader2 = new Label();
                                    lblHeader2.Attributes.Add("runat", "server");
                                    lblHeader2.Text = ds.Tables[3].Rows[i]["Header2"].ToString();
                                    pnl_table.Controls.Add(lblHeader2);
                                }
                                pnl_table.Controls.Add(new LiteralControl("</td>"));
                            }
                            if (ds.Tables[3].Rows[i]["Header3"] != null && !string.IsNullOrWhiteSpace(ds.Tables[3].Rows[i]["Header3"].ToString()))
                            {
                                pnl_table.Controls.Add(new LiteralControl("<td>"));

                                if (ds.Tables[3].Rows[i]["Header3"].ToString().Contains("../Sharepath") == true)
                                {
                                    HyperLink lblHeader3 = new HyperLink();
                                    lblHeader3.Attributes.Add("runat", "server");
                                    lblHeader3.Text = "View";
                                    lblHeader3.Target = "_blank";
                                    lblHeader3.NavigateUrl = ds.Tables[3].Rows[i]["Header3"].ToString();
                                    pnl_table.Controls.Add(lblHeader3);
                                }
                                else
                                {
                                    Label lblHeader3 = new Label();
                                    lblHeader3.Attributes.Add("runat", "server");
                                    lblHeader3.Text = ds.Tables[3].Rows[i]["Header3"].ToString();
                                    pnl_table.Controls.Add(lblHeader3);
                                }
                                pnl_table.Controls.Add(new LiteralControl("</td>"));
                            }
                            if (ds.Tables[3].Rows[i]["Header4"] != null && !string.IsNullOrWhiteSpace(ds.Tables[3].Rows[i]["Header4"].ToString()))
                            {
                                pnl_table.Controls.Add(new LiteralControl("<td>"));
                                if (ds.Tables[3].Rows[i]["Header4"].ToString().Contains("../Sharepath") == true)
                                {
                                    HyperLink lblHeader4 = new HyperLink();
                                    lblHeader4.Attributes.Add("runat", "server");
                                    lblHeader4.Text = "View";
                                    lblHeader4.Target = "_blank";
                                    lblHeader4.NavigateUrl = ds.Tables[3].Rows[i]["Header4"].ToString();
                                    pnl_table.Controls.Add(lblHeader4);
                                }
                                else
                                {

                                    Label lblHeader4 = new Label();
                                    lblHeader4.Attributes.Add("runat", "server");
                                    lblHeader4.Text = ds.Tables[3].Rows[i]["Header4"].ToString();
                                    pnl_table.Controls.Add(lblHeader4);
                                }
                                pnl_table.Controls.Add(new LiteralControl("</td>"));
                            }
                            if (ds.Tables[3].Rows[i]["Header5"] != null && !string.IsNullOrWhiteSpace(ds.Tables[3].Rows[i]["Header5"].ToString()))
                            {
                                pnl_table.Controls.Add(new LiteralControl("<td>"));
                                if (ds.Tables[3].Rows[i]["Header5"].ToString().Contains("../Sharepath") == true)
                                {
                                    HyperLink lblHeader5 = new HyperLink();
                                    lblHeader5.Attributes.Add("runat", "server");
                                    lblHeader5.Text = "View";
                                    lblHeader5.Target = "_blank";
                                    lblHeader5.NavigateUrl = ds.Tables[3].Rows[i]["Header5"].ToString();
                                    pnl_table.Controls.Add(lblHeader5);
                                }
                                else
                                {

                                    Label lblHeader5 = new Label();
                                    lblHeader5.Attributes.Add("runat", "server");
                                    lblHeader5.Text = ds.Tables[3].Rows[i]["Header5"].ToString();
                                    pnl_table.Controls.Add(lblHeader5);
                                }
                                pnl_table.Controls.Add(new LiteralControl("</td>"));
                            }
                            if (ds.Tables[3].Rows[i]["Header6"] != null && !string.IsNullOrWhiteSpace(ds.Tables[3].Rows[i]["Header6"].ToString()))
                            {
                                pnl_table.Controls.Add(new LiteralControl("<td>"));
                                if (ds.Tables[3].Rows[i]["Header6"].ToString().Contains("../Sharepath") == true)
                                {
                                    HyperLink lblHeader6 = new HyperLink();
                                    lblHeader6.Attributes.Add("runat", "server");
                                    lblHeader6.Text = "View";
                                    lblHeader6.Target = "_blank";
                                    lblHeader6.NavigateUrl = ds.Tables[3].Rows[i]["Header6"].ToString();
                                    pnl_table.Controls.Add(lblHeader6);
                                }
                                else
                                {

                                    Label lblHeader6 = new Label();
                                    lblHeader6.Attributes.Add("runat", "server");
                                    lblHeader6.Text = ds.Tables[3].Rows[i]["Header6"].ToString();
                                    pnl_table.Controls.Add(lblHeader6);
                                }
                                pnl_table.Controls.Add(new LiteralControl("</td>"));
                            }


                            pnl_table.Controls.Add(new LiteralControl("</tr>"));
                        }

                        pnl_table.Controls.Add(new LiteralControl("</table>"));

                    }
                }
            }

        }


        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("PageDetails.aspx");
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
            DataSet ds = objbal.GetCategoryTypes("1","0");
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddlcategory.DataSource = ds.Tables[0];
                ddlcategory.DataTextField = "CategoryName";
                ddlcategory.DataValueField = "ID";
                ddlcategory.DataBind();
                ddlcategory.Items.Insert(0, new ListItem("Select", "0"));
            }
        }
    }
}