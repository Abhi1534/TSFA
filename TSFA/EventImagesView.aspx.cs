using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TSFA
{
    public partial class EventImagesView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"].ToString();
            if (!IsPostBack)
            {

                TSFABAL bal = new TSFABAL();
                DataSet ds = bal.GetEventImagesbyID(Convert.ToInt32(id));
                if (ds.Tables[0].Rows.Count > 0)
                {
                    lblName.Text = ds.Tables[0].Rows[0]["EventName"].ToString();
                    DataTable dtImage = new DataTable();
                    dtImage.Columns.Add(new DataColumn("ImageUrls", typeof(string)));
                    string[] filePath = ds.Tables[0].Rows[0]["Upload_Files"].ToString().Split(',');
                    foreach (var item in filePath)
                    {

                        DataRow drNew = dtImage.NewRow();
                        // string imgPath = (file_full_path.ToString()).ToString();
                        drNew["ImageUrls"] = item.ToString();
                        dtImage.Rows.Add(drNew);

                    }
                    dtImage.AcceptChanges();
                    if (dtImage.Rows.Count > 0)
                    {
                        rp_facilities.DataSource = dtImage;
                        rp_facilities.DataBind();
                        rp_facilities.Visible = true;
                    }
                }
            }
        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            if (Session["pageName"] != null)
            {
                Session["pageName"] = null;
                Response.Redirect("Facilityviews.aspx");
            }
            else
            {
                Session["pageName"] = null;
                Response.Redirect("Menuview.aspx?MenuID=" + Request.QueryString["MenuID"].ToString());
            }
        }
    }
}