using System;
using System.Collections;
using System.Configuration;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using TSFA.Common.Dao;
using System.IO;

namespace TSFA
{
    public partial class MarksEntry : System.Web.UI.Page
    {
        public string conStr = TSFADataAccessUtil.ConnectionString;
        public string uname, acclvl, acccode;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BtnSubmit.Visible = false;
            }
        }
        protected void FillGrid()
        {
            SqlConnection Con = new SqlConnection(conStr);
            Con.Open();
            if (ddlEntryType.SelectedValue == "0")
            {
                string Query = "select Subject_Id,Subject_Name,theory_Marks From  subject_mst_tsfa where Trimester='" + ddltrimester.SelectedValue + "' and Course='" + ddlCourse.SelectedItem.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(Query, Con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                    BtnSubmit.Visible = true;
                }               
            } 
            if(ddlEntryType.SelectedValue == "EA")
            {
                string Query = "select Subject_Id,Subject_Name,theory_Marks From  subject_mst_tsfa where Trimester='" + ddltrimester.SelectedValue + "' and Course='" + ddlCourse.SelectedItem.Text + "' and  S_flag='EA'";
                SqlDataAdapter da = new SqlDataAdapter(Query, Con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                    BtnSubmit.Visible = true;
                }        
            }
            if (ddlEntryType.SelectedValue == "1")
            {
                string Query = "select Subject_Id,Subject_Name,theory_Marks From  subject_mst_tsfa where Trimester='" + ddltrimester.SelectedValue + "' and Course='" + ddlCourse.SelectedItem.Text + "' and  S_flag='1'";
                SqlDataAdapter da = new SqlDataAdapter(Query, Con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                    BtnSubmit.Visible = true;
                }        
            }
        }
        protected void BtnGetData_Click(object sender, EventArgs e)
        {
            FillGrid(); 
        }
    }
}
