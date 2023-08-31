using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TSFA
{
    public partial class Facilityviews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getfacility();
            if (!IsPostBack)
            {

            }
        }
        public void getfacility()
        {
            TSFABAL objbal = new TSFABAL();
            DataSet ds = objbal.pr_getfacilitymenus();

            if (ds.Tables[0].Rows.Count > 0)
            {

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    pnl_facilityview.Attributes.Add("style", "max-width: 100%;");
                    pnl_facilityview.Controls.Add(new LiteralControl("<li class='nav-item active'>"));

                    LinkButton lbl_facilityname = new LinkButton();
                    lbl_facilityname.Attributes.Add("runat", "server");
                    lbl_facilityname.Attributes.Add("style", "color: white;font-size: 16px;");
                    lbl_facilityname.CommandName = "btn_view";
                    lbl_facilityname.CommandArgument = ds.Tables[0].Rows[i]["ID"].ToString();
                    lbl_facilityname.Text = ds.Tables[0].Rows[i]["MenuName"].ToString();
                    lbl_facilityname.Click += new EventHandler(this.btnmemberview_Click);
                    pnl_facilityview.Controls.Add(lbl_facilityname);

                    pnl_facilityview.Controls.Add(new LiteralControl("</li>"));
                    //if (i == 1)
                    //{
                    //var rowsWithData = ds.Tables[0].AsEnumerable().Where(row => row.Field<string>("Parent_MenuPK") == ds.Tables[0].Rows[i]["ID"].ToString()).Distinct().ToList();
                    //foreach (DataRow row in rowsWithData)
                    //{
                    //   // int id = row.Field<Int32>("ID");
                    //    if (rowsWithData.Any())
                    //    {
                    //        pnl_facilityview.Attributes.Add("style", "max-width: 100%;");
                    //        pnl_facilityview.Controls.Add(new LiteralControl("<li class='nav-item active'>"));

                    //        LinkButton lbl_facilityname = new LinkButton();
                    //        lbl_facilityname.Attributes.Add("runat", "server");
                    //        lbl_facilityname.Attributes.Add("style", "color: white;font-size: 16px;");
                    //        lbl_facilityname.CommandName = "btn_view";
                    //        lbl_facilityname.CommandArgument = ds.Tables[0].Rows[i]["ID"].ToString();
                    //        lbl_facilityname.Text = ds.Tables[0].Rows[i]["MenuName"].ToString();
                    //        lbl_facilityname.Click += new EventHandler(this.btnmemberview_Click);
                    //        pnl_facilityview.Controls.Add(lbl_facilityname);

                    //        pnl_facilityview.Controls.Add(new LiteralControl("</li>"));
                    //        var rowsWithData1 = ds.Tables[0].AsEnumerable().Where(row1 => row1.Field<string>("Parent_MenuPK") == ds.Tables[0].Rows[i]["ID"].ToString()).Distinct().ToList();
                    //        if (rowsWithData1.Any())
                    //        {
                    //            pnl_facilityview.Controls.Add(new LiteralControl("<li class='has-sub'>"));
                    //            pnl_facilityview.Controls.Add(new LiteralControl("<span class='submenu-button'></span>"));
                    //            pnl_facilityview.Controls.Add(new LiteralControl("<a target ='_self' href ='#'>"));
                    //            HyperLink lblMembershipTypeName = new HyperLink();
                    //            lbl_facilityname.Attributes.Add("runat", "server");
                    //            lbl_facilityname.Attributes.Add("style", "color: white;font-size: 16px;");
                    //            lbl_facilityname.CommandName = "btn_view";
                    //            lbl_facilityname.CommandArgument = ds.Tables[0].Rows[i]["ID"].ToString();
                    //            lbl_facilityname.Text = ds.Tables[0].Rows[i]["MenuName"].ToString();
                    //            lbl_facilityname.Click += new EventHandler(this.btnmemberview_Click);
                    //            pnl_facilityview.Controls.Add(lblMembershipTypeName);
                    //            pnl_facilityview.Controls.Add(new LiteralControl("</a>"));
                    //            int idS = row.Field<Int32>("ID");
                    //            pnl_facilityview.Controls.Add(new LiteralControl("<ul>"));
                    //            foreach (DataRow row2 in rowsWithData1)
                    //            {
                    //                pnl_facilityview.Controls.Add(new LiteralControl("<li>"));
                    //                HyperLink lblMembershipTypeName11S = new HyperLink();
                    //                lblMembershipTypeName11S.Attributes.Add("runat", "server");
                    //                lblMembershipTypeName11S.Text = row2.Field<string>("MenuName");
                    //                int idS1 = row2.Field<Int32>("ID");
                    //                lblMembershipTypeName11S.NavigateUrl = "Menuview.aspx?MenuID=" + idS1;
                    //                pnl_facilityview.Controls.Add(lblMembershipTypeName11S);
                    //                pnl_facilityview.Controls.Add(new LiteralControl("</li>"));
                    //            }
                    //            pnl_facilityview.Controls.Add(new LiteralControl("</ul>"));
                    //            pnl_facilityview.Controls.Add(new LiteralControl("</li>"));
                    //        }
                    //    }
                    //    else
                    //    {

                    //        pnl_facilityview.Attributes.Add("style", "max-width: 100%;");
                    //        pnl_facilityview.Controls.Add(new LiteralControl("<li class='nav-item active'>"));

                    //        LinkButton lbl_facilityname = new LinkButton();
                    //        lbl_facilityname.Attributes.Add("runat", "server");
                    //        lbl_facilityname.Attributes.Add("style", "color: white;font-size: 16px;");
                    //        lbl_facilityname.CommandName = "btn_view";
                    //        lbl_facilityname.CommandArgument = ds.Tables[0].Rows[i]["ID"].ToString();
                    //        lbl_facilityname.Text = ds.Tables[0].Rows[i]["MenuName"].ToString();
                    //        lbl_facilityname.Click += new EventHandler(this.btnmemberview_Click);
                    //        pnl_facilityview.Controls.Add(lbl_facilityname);

                    //        pnl_facilityview.Controls.Add(new LiteralControl("</li>"));
                    //    }

                    //}


                }
            }
        }

        public void btnmemberview_Click(object sender, EventArgs e)
        {
            Session["pageName"] = "Facilityviews";
            string argument = ((LinkButton)sender).CommandArgument;
            Session["FacilityID"] = argument;
            if (argument != "")
            {
                TSFABAL objMaster = new TSFABAL();
                DataSet ds = objMaster.Pr_GetMenuContentDetails("2", Session["FacilityID"].ToString());
                if (ds.Tables[0].Rows.Count > 0)
                {

                    rptImages.Visible = false;

                    if (ds.Tables[1].Rows.Count > 0)
                    {
                        rptImages.DataSource = ds.Tables[1];
                        rptImages.DataBind();
                        rptImages.Visible = true;
                    }
                    lbl_facilityName.Text = ds.Tables[0].Rows[0]["PageName"].ToString() + ":";
                    lbl_Description.Text = ds.Tables[0].Rows[0]["PageContent"].ToString();
                    lbl_Descriptionhead.Text = "Description :";
                    //pnl_facilitydetails.Controls.Add(new LiteralControl("<h1 style='text-align: left;padding-left: 100px;font-family: -webkit-body; '>"));
                    //Label lbl_facilityName = new Label();
                    //lbl_facilityName.Attributes.Add("runat", "server");
                    //lbl_facilityName.Attributes.Add("style", "color: black;font-weight: bold;");
                    //lbl_facilityName.Text = ds.Tables[0].Rows[0]["PageName"].ToString() + ":";
                    //pnl_facilitydetails.Controls.Add(lbl_facilityName);
                    //pnl_facilitydetails.Controls.Add(new LiteralControl("</h1>"));


                    //pnl_facilitydetails.Controls.Add(new LiteralControl("<br />"));
                    //pnl_facilitydetails.Controls.Add(new LiteralControl("<br />"));
                    //pnl_facilitydetails.Controls.Add(new LiteralControl("<div class='row' style='margin-right: 50px;margin-left: 50px;background-color: whitesmoke;border-radius: 50px;padding-top: 50px;padding-bottom: 50px; '>"));
                    //pnl_facilitydetails.Controls.Add(new LiteralControl("<div class='col-sm-3'>"));
                    //for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
                    //{
                    //    pnl_facilitydetails.Controls.Add(new System.Web.UI.WebControls.Image { ImageUrl = ds.Tables[1].Rows[i]["Upload_Files"].ToString(), Height = 300, Width = 300 });
                    //    pnl_facilitydetails.Controls.Add(new LiteralControl("<h5>"));
                    //    LinkButton LB_EventName = new LinkButton();
                    //    LB_EventName.Attributes.Add("runat", "server");
                    //    LB_EventName.CommandName = "btn_view";
                    //    LB_EventName.CommandArgument = ds.Tables[1].Rows[i]["ID"].ToString();
                    //    LB_EventName.Text = ds.Tables[1].Rows[i]["EventName"].ToString();

                    //    LB_EventName.Click += new EventHandler(this.btnmemberIMGview_Click);
                    //    pnl_facilitydetails.Controls.Add(LB_EventName);
                    //    pnl_facilitydetails.Controls.Add(new LiteralControl("</h5>"));
                    //}

                    //pnl_facilitydetails.Controls.Add(new LiteralControl("</div>"));



                    //pnl_facilitydetails.Controls.Add(new LiteralControl("<div  class='col-sm-9' style='text-align: left'> "));
                    //pnl_facilitydetails.Controls.Add(new LiteralControl("<h5>"));
                    //Label lbl_Descriptionhead = new Label();
                    //lbl_Descriptionhead.Attributes.Add("runat", "server");
                    //lbl_Descriptionhead.Attributes.Add("style", "blue: black;font-weight: bold;");
                    //lbl_Descriptionhead.Text = "Description :";
                    //pnl_facilitydetails.Controls.Add(lbl_Descriptionhead);
                    //pnl_facilitydetails.Controls.Add(new LiteralControl("<br />"));
                    //pnl_facilitydetails.Controls.Add(new LiteralControl("</h5>"));
                    //Label lbl_Description = new Label();
                    //lbl_Description.Attributes.Add("runat", "server");
                    //lbl_Description.Attributes.Add("style", "color: black;font-weight: bold;");
                    //lbl_Description.Text = ds.Tables[0].Rows[0]["PageContent"].ToString();
                    //pnl_facilitydetails.Controls.Add(lbl_Description);
                    //pnl_facilitydetails.Controls.Add(new LiteralControl("</div>"));


                    //pnl_facilitydetails.Controls.Add(new LiteralControl("</div>"));
                }
            }

        }
    }
}