using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace TSFA.Common.Dao
{
    public class TSFADataAccessUtil
    {
        public static String ConnectionString = WebConfigurationManager.ConnectionStrings["TSFAConnectionString"].ConnectionString;

        public void DBConnect()
        {
            try
            {

            }
            catch (SqlException sqlExe)
            {
                throw new Exception(sqlExe.Message);
            }
        }
    }
}
