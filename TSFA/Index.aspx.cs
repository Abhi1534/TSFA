using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

namespace TSFA
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindMessagedata();
                bindLatestdata();
                bindfecilities();
            }
        }
        public void bindMessagedata()
        {
            TSFABAL objbal = new TSFABAL();
            DataSet ds = objbal.pr_getmessage();
            if (ds.Tables[0].Rows.Count > 0)
            {
                rpt_messages.DataSource = ds;
                rpt_messages.DataBind();
            }

        }


        public void bindLatestdata()
        {
            TSFABAL objbal = new TSFABAL();
            DataSet ds = objbal.pr_get_LatestNewsmaster();
            if (ds.Tables[0].Rows.Count > 0)
            {
                rp_Latestnews.DataSource = ds;
                rp_Latestnews.DataBind();
            }

        }

        public void bindfecilities()
        {
            TSFABAL objbal = new TSFABAL();
            DataSet ds = objbal.pr_getfacility();

            if (ds.Tables[1].Rows.Count>0)
            {
                rp_facilities.DataSource = ds.Tables[1];
                rp_facilities.DataBind();
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
    }
}
