using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace TSFA
{
    public partial class TSFA : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bindmenu();

            if (!IsPostBack)
            {

                bindgriddata();
            }
        }

        public void bindgriddata()
        {
            TSFABAL objbal = new TSFABAL();
            DataSet ds = objbal.pr_get_AdministrationTypeMasterIsActive();
            if (ds.Tables[0].Rows.Count > 0)
            {
                // 04-08-2023
                //rp_Administrationmenuitems.DataSource = ds;
                //rp_Administrationmenuitems.DataBind();
            }

        }

        public void bindmenu()
        {

            TSFABAL objbal = new TSFABAL();
            DataSet ds = objbal.Pr_GetMenuContentDetails("1", "");
            if (ds.Tables[0].Rows.Count > 0)
            {

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    String author = ds.Tables[0].Rows[i]["ID"].ToString();
                    var rowsWithData = ds.Tables[0].AsEnumerable().Where(row => row.Field<string>("Parent_MenuPK") == ds.Tables[0].Rows[i]["ID"].ToString()).Distinct().ToList();
                    if (rowsWithData.Any())
                    {

                        if (ds.Tables[0].Rows[i]["Parent_MenuPK"].ToString() == "0")
                        {

                            if (ds.Tables[0].Rows[i]["MenuName"].ToString().ToLower() != "facilities")
                            {
                          
                            pnl_menuview.Controls.Add(new LiteralControl("<li class='has-sub'>"));
                            pnl_menuview.Controls.Add(new LiteralControl("<span class='submenu-button'></span>"));
                            pnl_menuview.Controls.Add(new LiteralControl("<a target ='_self' href ='#'>"));
                            Label lblMembershipTypeName1 = new Label();
                            lblMembershipTypeName1.Attributes.Add("runat", "server");
                            lblMembershipTypeName1.Text = ds.Tables[0].Rows[i]["MenuName"].ToString();
                            pnl_menuview.Controls.Add(lblMembershipTypeName1);

                            pnl_menuview.Controls.Add(new LiteralControl("</a>"));

                            // pnl_menuview.Controls.Add(new LiteralControl("</li>"));

                            //  }
                            pnl_menuview.Controls.Add(new LiteralControl("<ul>"));
                            }
                            else
                            {
                                pnl_menuview.Controls.Add(new LiteralControl("<li class='has-sub'>"));
                                pnl_menuview.Controls.Add(new LiteralControl("<span class='submenu-button'></span>"));
                                pnl_menuview.Controls.Add(new LiteralControl("<a target ='_self' href ='Facilityviews.aspx'>"));
                                Label lblMembershipTypeName1 = new Label();
                                lblMembershipTypeName1.Attributes.Add("runat", "server");
                                lblMembershipTypeName1.Text = ds.Tables[0].Rows[i]["MenuName"].ToString();
                                pnl_menuview.Controls.Add(lblMembershipTypeName1);

                                pnl_menuview.Controls.Add(new LiteralControl("</a>"));

                                 pnl_menuview.Controls.Add(new LiteralControl("</li>"));

                                //  }
                                pnl_menuview.Controls.Add(new LiteralControl("<ul>"));
                            }

                        }


                        else
                        {
                            pnl_menuview.Controls.Add(new LiteralControl("<ul>"));
                        }
                        //if (ds.Tables[0].Rows[i]["MenuName"].ToString().ToLower() != "facilities")
                        //{
                        foreach (DataRow row in rowsWithData)
                        {
                            if (ds.Tables[0].Rows[i]["MenuName"].ToString().ToLower() != "facilities")
                            {


                                int id = row.Field<Int32>("ID");

                                var rowsWithData1 = ds.Tables[0].AsEnumerable().Where(row1 => row1.Field<string>("Parent_MenuPK") == id.ToString()).Distinct().ToList();
                                if (rowsWithData1.Any())
                                {
                                    //pnl_menuview.Controls.Add(new LiteralControl("<li>"));
                                    //pnl_menuview.Controls.Add(new LiteralControl("<span class='submenu-button'></span>"));
                                    //pnl_menuview.Controls.Add(new LiteralControl("<a target ='_self' href ='#'>"));
                                    //HyperLink lblMembershipTypeName = new HyperLink();
                                    //lblMembershipTypeName.Attributes.Add("runat", "server");
                                    //lblMembershipTypeName.Text = row.Field<string>("MenuName");
                                    //lblMembershipTypeName.NavigateUrl = "Menuview.aspx?MenuID=" + id;
                                    //pnl_menuview.Controls.Add(lblMembershipTypeName);
                                    //pnl_menuview.Controls.Add(new LiteralControl("</a>"));

                                    string name = row.Field<string>("MenuName").ToLower();
                                    if (row.Field<string>("MenuName").ToLower() == "who's who")
                                    {
                                        pnl_menuview.Controls.Add(new LiteralControl("<li>"));
                                        HyperLink lblMembershipTypeName11S = new HyperLink();
                                        lblMembershipTypeName11S.Attributes.Add("runat", "server");
                                        lblMembershipTypeName11S.Text = row.Field<string>("MenuName");
                                        int idS1 = row.Field<Int32>("ID");
                                        lblMembershipTypeName11S.NavigateUrl = "Menuview.aspx?MenuID=" + idS1;
                                        pnl_menuview.Controls.Add(lblMembershipTypeName11S);
                                        pnl_menuview.Controls.Add(new LiteralControl("</li>"));
                                    }
                                    else
                                    {
                                        pnl_menuview.Controls.Add(new LiteralControl("<li class='has-sub'>"));
                                        pnl_menuview.Controls.Add(new LiteralControl("<span class='submenu-button'></span>"));
                                        pnl_menuview.Controls.Add(new LiteralControl("<a target ='_self' href ='#'>"));
                                        HyperLink lblMembershipTypeName = new HyperLink();
                                        lblMembershipTypeName.Attributes.Add("runat", "server");
                                        lblMembershipTypeName.Text = row.Field<string>("MenuName");
                                        lblMembershipTypeName.NavigateUrl = "Menuview.aspx?MenuID=" + id;
                                        pnl_menuview.Controls.Add(lblMembershipTypeName);
                                        pnl_menuview.Controls.Add(new LiteralControl("</a>"));
                                        pnl_menuview.Controls.Add(new LiteralControl("<ul>"));
                                        foreach (DataRow row1 in rowsWithData1)
                                        {

                                            int id2 = row1.Field<Int32>("ID");
                                            // Start
                                            //pnl_menuview.Controls.Add(new LiteralControl("<li>"));
                                            //HyperLink lblMembershipTypeName11 = new HyperLink();
                                            //lblMembershipTypeName11.Attributes.Add("runat", "server");
                                            //lblMembershipTypeName11.Text = row1.Field<string>("MenuName");
                                            //lblMembershipTypeName11.NavigateUrl = "Menuview.aspx?MenuID=" + id2;
                                            //pnl_menuview.Controls.Add(lblMembershipTypeName11);
                                            //pnl_menuview.Controls.Add(new LiteralControl("</li>"));

                                            //  int idS = row.Field<Int32>("ID");



                                            var rowsWithData1S = ds.Tables[0].AsEnumerable().Where(row1S => row1S.Field<string>("Parent_MenuPK") == id2.ToString()).Distinct().ToList();
                                            if (rowsWithData1S.Any())
                                            {

                                                pnl_menuview.Controls.Add(new LiteralControl("<li class='has-sub'>"));
                                                pnl_menuview.Controls.Add(new LiteralControl("<span class='submenu-button'></span>"));
                                                // pnl_menuview.Controls.Add(new LiteralControl("<a target ='_self' href ='#'>"));
                                                HyperLink lblMembershipTypeNameS = new HyperLink();
                                                lblMembershipTypeNameS.Attributes.Add("runat", "server");
                                                lblMembershipTypeNameS.Text = row1.Field<string>("MenuName");
                                                lblMembershipTypeNameS.NavigateUrl = "Menuview.aspx?MenuID=" + id2;
                                                pnl_menuview.Controls.Add(lblMembershipTypeNameS);
                                                //pnl_menuview.Controls.Add(new LiteralControl("</a>"));
                                                pnl_menuview.Controls.Add(new LiteralControl("<ul>"));

                                                int idS = row1.Field<Int32>("ID");
                                                foreach (DataRow row2 in rowsWithData1S)
                                                {
                                                    pnl_menuview.Controls.Add(new LiteralControl("<li>"));
                                                    HyperLink lblMembershipTypeName11S = new HyperLink();
                                                    lblMembershipTypeName11S.Attributes.Add("runat", "server");
                                                    lblMembershipTypeName11S.Text = row2.Field<string>("MenuName");
                                                    int idS1 = row2.Field<Int32>("ID");
                                                    lblMembershipTypeName11S.NavigateUrl = "Menuview.aspx?MenuID=" + idS1;
                                                    pnl_menuview.Controls.Add(lblMembershipTypeName11S);
                                                    pnl_menuview.Controls.Add(new LiteralControl("</li>"));
                                                }
                                                pnl_menuview.Controls.Add(new LiteralControl("</ul>"));
                                                pnl_menuview.Controls.Add(new LiteralControl("</li>"));
                                            }
                                            else
                                            {
                                                pnl_menuview.Controls.Add(new LiteralControl("<li>"));
                                                HyperLink lblMembershipTypeNameS = new HyperLink();
                                                lblMembershipTypeNameS.Attributes.Add("runat", "server");
                                                lblMembershipTypeNameS.Text = row1.Field<string>("MenuName");
                                                lblMembershipTypeNameS.NavigateUrl = "Menuview.aspx?MenuID=" + id2;
                                                pnl_menuview.Controls.Add(lblMembershipTypeNameS);
                                                //pnl_menuview.Controls.Add(new LiteralControl("</a>"));
                                                // pnl_menuview.Controls.Add(new LiteralControl("<ul>"));
                                                pnl_menuview.Controls.Add(new LiteralControl("</li>"));
                                            }

                                            // End
                                        }

                                        pnl_menuview.Controls.Add(new LiteralControl("</ul>"));
                                        pnl_menuview.Controls.Add(new LiteralControl("</li>"));


                                    }


                                }
                                else
                                {

                                    if (ds.Tables[0].Rows[i]["Parent_MenuPK"].ToString() == "0")
                                    {
                                        pnl_menuview.Controls.Add(new LiteralControl("<li>"));
                                        HyperLink lblMembershipTypeName11 = new HyperLink();
                                        lblMembershipTypeName11.Attributes.Add("runat", "server");
                                        lblMembershipTypeName11.Text = row.Field<string>("MenuName");
                                        int id2 = row.Field<Int32>("ID");
                                        lblMembershipTypeName11.NavigateUrl = "Menuview.aspx?MenuID=" + id2;
                                        pnl_menuview.Controls.Add(lblMembershipTypeName11);
                                        pnl_menuview.Controls.Add(new LiteralControl("</li>"));
                                    }
                                }
                                //  pnl_menuview.Controls.Add(new LiteralControl("</li>"));
                            }
                        }


                        pnl_menuview.Controls.Add(new LiteralControl("</ul>"));
                        pnl_menuview.Controls.Add(new LiteralControl("</li>"));


                    }
                    else
                    {
                        if (ds.Tables[0].Rows[i]["Parent_MenuPK"].ToString() == "0")
                        {
                            if (ds.Tables[0].Rows[i]["MenuName"].ToString().Contains("Contact") == false)
                            {

                                pnl_menuview.Controls.Add(new LiteralControl("<li>"));


                                HyperLink lblMembershipTypeName = new HyperLink();
                                lblMembershipTypeName.Attributes.Add("runat", "server");
                                lblMembershipTypeName.Text = ds.Tables[0].Rows[i]["MenuName"].ToString();
                                lblMembershipTypeName.NavigateUrl = "Menuview.aspx?MenuID=" + ds.Tables[0].Rows[i]["ID"].ToString();
                                pnl_menuview.Controls.Add(lblMembershipTypeName);

                                /* pnl_menuview.Controls.Add(new LiteralControl("</a>"))*/
                                //;
                                pnl_menuview.Controls.Add(new LiteralControl("</li>"));
                            }
                        }



                    }


                }
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    if (ds.Tables[0].Rows[i]["MenuName"].ToString().Contains("Contact") == true)
                    {
                        pnl_menuview.Controls.Add(new LiteralControl("<li>"));


                        HyperLink lblMembershipTypeName = new HyperLink();
                        lblMembershipTypeName.Attributes.Add("runat", "server");
                        lblMembershipTypeName.Text = ds.Tables[0].Rows[i]["MenuName"].ToString();
                        lblMembershipTypeName.NavigateUrl = "Menuview.aspx?MenuID=" + ds.Tables[0].Rows[i]["ID"].ToString();
                        pnl_menuview.Controls.Add(lblMembershipTypeName);

                        /* pnl_menuview.Controls.Add(new LiteralControl("</a>"))*/
                        //;
                        pnl_menuview.Controls.Add(new LiteralControl("</li>"));
                    }
                }

            }

            pnl_menuview.Controls.Add(new LiteralControl("<ul class='navbar-nav' id='nav' style=''>"));

            pnl_menuview.Controls.Add(new LiteralControl("<li>"));
            HyperLink ContactUs = new HyperLink();
            ContactUs.Attributes.Add("runat", "server");
            ContactUs.Text = "Contact Us";
            ContactUs.NavigateUrl = "ContactMaster.aspx";
            pnl_menuview.Controls.Add(ContactUs);
            pnl_menuview.Controls.Add(new LiteralControl("</li>"));

            pnl_menuview.Controls.Add(new LiteralControl("<li>"));
            HyperLink login = new HyperLink();
            login.Attributes.Add("runat", "server");
            login.Text = "Login";
            login.NavigateUrl = "Admin/Login.aspx";
            pnl_menuview.Controls.Add(login);
            pnl_menuview.Controls.Add(new LiteralControl("</li>"));

            pnl_menuview.Controls.Add(new LiteralControl("</ul>"));




        }

        //public void login()
        //{
        //    pnl_login.Visible = true;
        //    pnl_login.Controls.Add(new LiteralControl("<ul class='navbar-nav' id='nav' style=''>"));

        //    pnl_login.Controls.Add(new LiteralControl("<li>"));
        //    HyperLink ContactUs = new HyperLink();
        //    ContactUs.Attributes.Add("runat", "server");
        //    ContactUs.Text = "Contact Us";
        //    ContactUs.NavigateUrl = "ContactMaster.aspx";
        //    pnl_login.Controls.Add(ContactUs);
        //    pnl_login.Controls.Add(new LiteralControl("</li>"));

        //    pnl_login.Controls.Add(new LiteralControl("<li>"));
        //    HyperLink login = new HyperLink();
        //    login.Attributes.Add("runat", "server");
        //    login.Text = "Login";
        //    login.NavigateUrl = "Admin/Login.aspx";
        //    pnl_login.Controls.Add(login);
        //    pnl_login.Controls.Add(new LiteralControl("</li>"));

        //    pnl_login.Controls.Add(new LiteralControl("</ul>"));
        //}
    }
}
