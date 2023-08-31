using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TSFA
{
    public partial class FacilityView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"].ToString();
            if (!IsPostBack)
            {

                TSFABAL bal = new TSFABAL();
                DataSet ds = bal.pr_getfacilitybyID(Convert.ToInt32(id));
                if (ds.Tables[0].Rows.Count > 0)
                {
                    lblName.Text = ds.Tables[0].Rows[0]["facilityName"].ToString();
                    DataTable dtImage = new DataTable();
                    dtImage.Columns.Add(new DataColumn("Imgfilepath", typeof(string)));
                    string[] filePath = ds.Tables[0].Rows[0]["Imgfilepath"].ToString().Split(',');
                    foreach (var item in filePath)
                    {

                        DataRow drNew = dtImage.NewRow();
                        // string imgPath = (file_full_path.ToString()).ToString();
                        drNew["Imgfilepath"] = item.ToString();
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
    }
}