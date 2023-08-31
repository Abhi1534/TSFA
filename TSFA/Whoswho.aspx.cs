using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace TSFA
{
    public partial class Whoswho : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bindgriddata();
            if (!IsPostBack)
            {

            }
        }
        public void bindgriddata()
        {
            TSFABAL objbal = new TSFABAL();
            DataSet ds = objbal.pr_get_AdministrationTypeMasterIsActive();
            if (ds.Tables[0].Rows.Count > 0)
            {
                pnl_Whoswho.Controls.Add(new LiteralControl("<li class='has-sub'>"));
                pnl_Whoswho.Controls.Add(new LiteralControl("<span class='submenu-button'></span>"));

                pnl_Whoswho.Controls.Add(new LiteralControl("<ul>"));

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    pnl_Whoswho.Controls.Add(new LiteralControl("<li>"));

                    LinkButton hl_MenuName = new LinkButton();
                    hl_MenuName.Attributes.Add("runat", "server");
                    hl_MenuName.CommandName = "btn_view";
                    hl_MenuName.CommandArgument = ds.Tables[0].Rows[i]["AdministrationTypeID"].ToString();
                    hl_MenuName.Text = ds.Tables[0].Rows[i]["AdministrationTypeName"].ToString();
                    hl_MenuName.Click += new EventHandler(this.btnmemberview_Click);
                    //  hl_MenuName.NavigateUrl = "Administratorview.aspx?MemberTypeID=" + ds.Tables[0].Rows[i]["AdministrationTypeID"].ToString();
                    pnl_Whoswho.Controls.Add(hl_MenuName);

                    pnl_Whoswho.Controls.Add(new LiteralControl("</li>"));
                    pnl_Whoswho.Controls.Add(new LiteralControl("<br />"));

                }
                pnl_Whoswho.Controls.Add(new LiteralControl("</ul>"));
                pnl_Whoswho.Controls.Add(new LiteralControl("</li>"));


            }
        }
        public void btnmemberview_Click(object sender, EventArgs e)
        {
            string argument = ((LinkButton)sender).CommandArgument;
            Session["MemberviewID"] = argument;
            if (argument != "")
            {
                TSFABAL objMaster = new TSFABAL();
                DataSet ds = objMaster.Pr_AdministrationMembersdetailsbyAdmintype(Session["MemberviewID"].ToString());
                if (ds.Tables[0].Rows.Count > 0)
                {
                    ViewState["Data"] = ds.Tables[0];
                    rptDetails.DataSource = ds.Tables[0];
                    rptDetails.DataBind();
                    rptDetails.Visible = true;

                    //for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    //{
                    //    pnl_viewDetails.Controls.Add(new LiteralControl("<section>"));
                    //    pnl_viewDetails.Controls.Add(new LiteralControl("<div id='sticky' class='container' style='margin-top:30px;'>"));
                    //    pnl_viewDetails.Controls.Add(new LiteralControl("<div class='profile-head'>"));
                    //    pnl_viewDetails.Controls.Add(new LiteralControl("<div class='col-md-3 col-sm-3 col-xs-8'>"));
                    //    pnl_viewDetails.Controls.Add(new System.Web.UI.WebControls.Image { ImageUrl = ds.Tables[0].Rows[i]["Photofilepath"].ToString() });
                    //    pnl_viewDetails.Controls.Add(new LiteralControl("<h6>"));
                    //    pnl_viewDetails.Controls.Add(new LiteralControl(" </ h6>"));                       
                    //    pnl_viewDetails.Controls.Add(new LiteralControl("</div>"));

                    //    pnl_viewDetails.Controls.Add(new LiteralControl("<div class='col-md-7 col-sm-7 col-xs-8'>"));

                    //    pnl_viewDetails.Controls.Add(new LiteralControl("<h5>"));
                    //    Label lbl_membernmae = new Label();
                    //    lbl_membernmae.Attributes.Add("runat", "server");
                    //    lbl_membernmae.Text = ds.Tables[0].Rows[i]["AdministrationMemberName"].ToString();
                    //    pnl_viewDetails.Controls.Add(lbl_membernmae);
                    //    pnl_viewDetails.Controls.Add(new LiteralControl("</h5>"));

                    //    pnl_viewDetails.Controls.Add(new LiteralControl("<p>"));
                    //    Label lbl_designation = new Label();
                    //    lbl_designation.Attributes.Add("runat", "server");
                    //    lbl_designation.Text = ds.Tables[0].Rows[i]["Designation"].ToString();
                    //    pnl_viewDetails.Controls.Add(lbl_designation);
                    //    pnl_viewDetails.Controls.Add(new LiteralControl("</p>"));

                    //    pnl_viewDetails.Controls.Add(new LiteralControl("<ul>"));
                    //    pnl_viewDetails.Controls.Add(new LiteralControl("<li><span class='fa fa-phone-square'></span>")); 
                    //    Label lbl_membermobilenumber = new Label();
                    //    lbl_membermobilenumber.Attributes.Add("runat", "server");
                    //    lbl_membermobilenumber.Text = ds.Tables[0].Rows[i]["ContactNo"].ToString(); 
                    //    pnl_viewDetails.Controls.Add(lbl_membermobilenumber);
                    //    pnl_viewDetails.Controls.Add(new LiteralControl("</li>"));

                    //    pnl_viewDetails.Controls.Add(new LiteralControl("<li><span class='fa fa-envelope-open'></span>"));

                    //    Label lbl_membermailid = new Label();
                    //    lbl_membermailid.Attributes.Add("runat", "server");
                    //    lbl_membermailid.Text = ds.Tables[0].Rows[i]["Email"].ToString();
                    //    pnl_viewDetails.Controls.Add(lbl_membermailid);
                    //    pnl_viewDetails.Controls.Add(new LiteralControl("</li>"));


                    //    pnl_viewDetails.Controls.Add(new LiteralControl("<li style='width: 400px'><span class='fa fa-home'></span>"));
                    //    Label lbl_memberAddress = new Label();
                    //    lbl_memberAddress.Attributes.Add("runat", "server");
                    //    lbl_memberAddress.Text = ds.Tables[0].Rows[i]["Address"].ToString();
                    //    pnl_viewDetails.Controls.Add(lbl_memberAddress);
                    //    pnl_viewDetails.Controls.Add(new LiteralControl("</li>"));






                    //    pnl_viewDetails.Controls.Add(new LiteralControl("<li style='width: 200px'>"));
                    //    LinkButton LB_BIODATA = new LinkButton();
                    //    LB_BIODATA.Attributes.Add("runat", "server");
                    //    LB_BIODATA.Attributes.Add("class", "btn btn-info btn-lg");
                    //    m_head.InnerHtml = "BIO DATA";
                    //    LB_BIODATA.ID= ds.Tables[0].Rows[i]["pk"].ToString();
                    //    p_biodata.InnerHtml = ds.Tables[0].Rows[i]["Description"].ToString();
                    //    LB_BIODATA.Attributes.Add("data-toggle", "modal");
                    //    LB_BIODATA.Attributes.Add("data-target", "#myModal");

                    //    //LB_BIODATA.CommandName = "btn_view";
                    //    //LB_BIODATA.CommandArgument = ds.Tables[0].Rows[i]["Description"].ToString();
                    //    LB_BIODATA.Text = "Click Here View BIO Data";
                    //    //LB_BIODATA.Click += new EventHandler(this.btnBioData_Click);
                    //    pnl_viewDetails.Controls.Add(LB_BIODATA);
                    //    pnl_viewDetails.Controls.Add(new LiteralControl("</li>"));



                    //    pnl_viewDetails.Controls.Add(new LiteralControl("</ul>"));
                    //    pnl_viewDetails.Controls.Add(new LiteralControl("</div>"));
                    //    pnl_viewDetails.Controls.Add(new LiteralControl("</div>"));
                    //    pnl_viewDetails.Controls.Add(new LiteralControl("</div>"));


                    //    pnl_viewDetails.Controls.Add(new LiteralControl("</section>"));
                    //}


                }
            }

        }

        protected void lnk_BIODATA_Click(object sender, EventArgs e)
        {

         //   m_head.InnerHtml = "BIO DATA";
            LinkButton button = (sender as LinkButton);

            //Get the command argument
            string commandArgument = button.CommandArgument;

            //Get the Repeater Item reference
            RepeaterItem item = button.NamingContainer as RepeaterItem;

            //Get the repeater item index
            int index = item.ItemIndex;
            if (ViewState["Data"] != null)
            {
                DataTable dt = ViewState["Data"] as DataTable;
                DataTable dtDesc = dt.Select("[pk]='" + commandArgument.ToString() + "'").CopyToDataTable();
                if (dt.Rows.Count > 0)
                {
                    lblID.Text = dtDesc.Rows[0]["Description"].ToString();
                }
            }
           
            ScriptManager.RegisterStartupScript(this, GetType(), "ShowPopup", "showPopup();", true);


            //RepeaterItem repeaterItem = (RepeaterItem)button.NamingContainer;

            //// Find the modal associated with this item
            //Panel modal = (Panel)repeaterItem.FindControl("myModal_" + commandArgument);

            // Show the modal using client-side script
            //  ScriptManager.RegisterStartupScript(this, GetType(), "ShowPopup", $"$('#myModal_{commandArgument}').modal('show');", true);




        }

        protected void btnShowPopup_Click(object sender, EventArgs e)
        {
            Button button = (sender as Button);

            //Get the command argument
            string commandArgument = button.CommandArgument;

            //Get the Repeater Item reference
            RepeaterItem item = button.NamingContainer as RepeaterItem;

            //Get the repeater item index
            int index = item.ItemIndex;
            if (ViewState["Data"] != null)
            {
                DataTable dt = ViewState["Data"] as DataTable;
                DataTable dtDesc = dt.Select("[pk]='" + commandArgument.ToString() + "'").CopyToDataTable();
                if (dt.Rows.Count > 0)
                {
                    lblID.Text = dtDesc.Rows[0]["Description"].ToString();
                }
            }
          //  lblID.Text = "";
            ScriptManager.RegisterStartupScript(this, GetType(), "ShowPopup", "showPopup();", true);
         //   ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('EmailID already Exisit');", true);
           // ScriptManager.RegisterStartupScript(this, GetType(), "ShowPopup", "showPopup();", true);
        }

        protected void myRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                int itemIndex = e.Item.ItemIndex;
                HtmlGenericControl modalDiv = (HtmlGenericControl)e.Item.FindControl("modalDiv"); // Replace "modalDiv" with the actual ID of your modal div.

                if (modalDiv != null)
                {
                    modalDiv.Attributes["id"] = "myModal_" + itemIndex;
                }
            }
        }
     
        protected void btn_Close_Click(object sender, EventArgs e)
        {
            // mp1.Hide();
            ScriptManager.RegisterStartupScript(this, GetType(), "ShowPopup", "Hide();", true);
           // pnl_biodata.Visible = false;
            // myModal.Visible = false;
        }
    }
}