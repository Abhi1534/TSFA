using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TSFA
{
    public partial class LatestNews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindLatestdata();
            }
            
        }
        public void bindLatestdata()
        {
            TSFABAL objbal = new TSFABAL();
            DataSet ds = objbal.pr_get_LatestNewsmaster();
            if (ds.Tables[0].Rows.Count > 0)
            {
                rp_latestnews.DataSource = ds;
                rp_latestnews.DataBind();
            }

        }
    }
}
