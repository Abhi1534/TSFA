using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TSFA
{
    public partial class Administratorview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string MemberviewID = Request.QueryString["MemberTypeID"];
            Session["MemberTypeID"] = MemberviewID.ToString();
            binddata();
            if (!IsPostBack)
            {

            }
             
    }
        public void binddata()
        {
            //pnl_viewDetails.Controls.Clear();
            TSFABAL objMaster = new TSFABAL();
            DataSet ds = objMaster.Pr_AdministrationMembersdetailsbyAdmintype(Session["MemberTypeID"].ToString());
            if (ds.Tables[0].Rows.Count > 0)
            {
                pnl_viewDetails.Controls.Add(new LiteralControl("<div class='row'>"));
                pnl_viewDetails.Controls.Add(new LiteralControl("<div class='col-sm-12'>"));
                pnl_viewDetails.Controls.Add(new LiteralControl("<div class='card' style='text-align:center;font-weight:bold;'>"));
                pnl_viewDetails.Controls.Add(new LiteralControl("<div class='card-body custom-edit-service'>"));
                pnl_viewDetails.Controls.Add(new LiteralControl("<div 'class=service-fields mb-3'>"));
                pnl_viewDetails.Controls.Add(new LiteralControl("<div class='row'>"));

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    pnl_viewDetails.Controls.Add(new LiteralControl("<div class='col-lg-3 col-sm-4'> "));
                    pnl_viewDetails.Controls.Add(new LiteralControl("<div class='singel-teachers mt-50 text-center' style='height: 300px'>"));
                    pnl_viewDetails.Controls.Add(new LiteralControl("<div class='image'>"));

                    pnl_viewDetails.Controls.Add(new System.Web.UI.WebControls.Image { ImageUrl = ds.Tables[0].Rows[i]["Photofilepath"].ToString() });
                    pnl_viewDetails.Controls.Add(new LiteralControl("</div>"));

                    pnl_viewDetails.Controls.Add(new LiteralControl("<div class='cont' style='background-color: whitesmoke;'>"));
                    pnl_viewDetails.Controls.Add(new LiteralControl("<h4>"));

                    LinkButton linkmemberview = new LinkButton()
                    {
                        Text = ds.Tables[0].Rows[i]["AdministrationMemberName"].ToString()
                    };

                    linkmemberview.Attributes.Add("runat", "server");
                    linkmemberview.CommandName = "btn_view";
                    linkmemberview.CommandArgument = ds.Tables[0].Rows[i]["pk"].ToString();
                    linkmemberview.Click += new EventHandler(this.btnmemberview_Click);
                    linkmemberview.CausesValidation = false;

                    pnl_viewDetails.Controls.Add(linkmemberview);
                   
                    pnl_viewDetails.Controls.Add(new LiteralControl("</h4>"));

                    pnl_viewDetails.Controls.Add(new LiteralControl("<span>"));
                   // Label lblMembershipTypeName = new Label();
                   // lblMembershipTypeName.Text = ds.Tables[0].Rows[i]["MembershipTypeName"].ToString();
                   // pnl_viewDetails.Controls.Add(lblMembershipTypeName);
                    pnl_viewDetails.Controls.Add(new LiteralControl("<br />"));

                    pnl_viewDetails.Controls.Add(new LiteralControl("</span>"));

                    pnl_viewDetails.Controls.Add(new LiteralControl("</div>"));
                    pnl_viewDetails.Controls.Add(new LiteralControl("</div>"));
                    pnl_viewDetails.Controls.Add(new LiteralControl("</div>"));

                }
                pnl_viewDetails.Controls.Add(new LiteralControl("</div>"));
                pnl_viewDetails.Controls.Add(new LiteralControl("</div>"));
                pnl_viewDetails.Controls.Add(new LiteralControl("</div>"));
                pnl_viewDetails.Controls.Add(new LiteralControl("</div>"));
                pnl_viewDetails.Controls.Add(new LiteralControl("</div>"));

            }
        }
        public void btnmemberview_Click(object sender, EventArgs e)
        {
            string argument = ((LinkButton)sender).CommandArgument;
            Session["MemberviewID"] = argument;
            if (argument != "")
            {
                Response.Redirect("AdminstratiomMemberView.aspx?MemberviewID=" + Session["MemberviewID"].ToString());
            }

        }
    }
}