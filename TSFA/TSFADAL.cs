using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using static TSFA.TSFABO;

namespace TSFA
{
    public class TSFADAL
    {
        string strConnectionString = string.Empty;

        public TSFADAL()
        {
            strConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        }

        #region MAIN MENU MASTER
        public DataSet Pr_insert_mainmenumaster(MainMenuBO objmainmenu)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("Pr_insert_mainmenumaster", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@MenuID", objmainmenu.MenuID);
                    cmdsrc.Parameters.AddWithValue("@MenuName", objmainmenu.MenuName);
                    cmdsrc.Parameters.AddWithValue("@Description", objmainmenu.Description);
                    cmdsrc.Parameters.AddWithValue("@CreatedBY", objmainmenu.CreatedBY);
                    cmdsrc.Parameters.AddWithValue("@CreatedIP", objmainmenu.CreatedIP);
                    cmdsrc.Parameters.AddWithValue("@ModifiedBY", objmainmenu.ModifiedBY);
                    cmdsrc.Parameters.AddWithValue("@ModifiedIP", objmainmenu.ModifiedIP);
                    cmdsrc.Parameters.AddWithValue("@IsActive", objmainmenu.IsActive);
                    cmdsrc.Parameters.AddWithValue("@flag", objmainmenu.flag);
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet pr_get_mainmenumaster()
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_get_mainmenumaster", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet pr_get_mainmenumasterbyID(int MenuID)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_get_mainmenumasterbyID", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@MenuID", MenuID);
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }
        #endregion


        #region LatestNewsmaster
        public DataSet Pr_insert_LatestNewsmaster(LatestNewsMasterBO objLatestNews)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("Pr_insert_LatestNewsmaster", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@LatestNewsID", objLatestNews.LatestNewsID);
                    cmdsrc.Parameters.AddWithValue("@LatestNewsName", objLatestNews.LatestNewsName);
                    cmdsrc.Parameters.AddWithValue("@LatestNewsDate", objLatestNews.LatestNewsDate);
                    cmdsrc.Parameters.AddWithValue("@Docpath", objLatestNews.Docpath);
                    cmdsrc.Parameters.AddWithValue("@Description", objLatestNews.Description);
                    cmdsrc.Parameters.AddWithValue("@CreatedBY", objLatestNews.CreatedBY);
                    cmdsrc.Parameters.AddWithValue("@CreatedIP", objLatestNews.CreatedIP);
                    cmdsrc.Parameters.AddWithValue("@ModifiedBY", objLatestNews.ModifiedBY);
                    cmdsrc.Parameters.AddWithValue("@ModifiedIP", objLatestNews.ModifiedIP);
                    cmdsrc.Parameters.AddWithValue("@IsActive", objLatestNews.IsActive);
                    cmdsrc.Parameters.AddWithValue("@flag", objLatestNews.flag);
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet pr_get_LatestNewsmaster()
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_get_LatestNewsmaster", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet pr_get_LatestNewsmasterbyID(int LatestNewsID)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_get_LatestNewsmasterbyID", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@LatestNewsID", LatestNewsID);
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }
        #endregion

        #region AdministrationType
        public DataSet Pr_insert_AdministrationTypeMaster(AdministrationTypeBO obj)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("Pr_insert_AdministrationTypeMaster", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@AdministrationTypeID", obj.AdministrationTypeID);
                    cmdsrc.Parameters.AddWithValue("@AdministrationTypeName", obj.AdministrationTypeName);
                    cmdsrc.Parameters.AddWithValue("@Description", obj.Description);
                    cmdsrc.Parameters.AddWithValue("@CreatedBY", obj.CreatedBY);
                    cmdsrc.Parameters.AddWithValue("@CreatedIP", obj.CreatedIP);
                    cmdsrc.Parameters.AddWithValue("@ModifiedBY", obj.ModifiedBY);
                    cmdsrc.Parameters.AddWithValue("@ModifiedIP", obj.ModifiedIP);
                    cmdsrc.Parameters.AddWithValue("@IsActive", obj.IsActive);
                    cmdsrc.Parameters.AddWithValue("@flag", obj.flag);
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet pr_get_AdministrationTypeMaster()
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_get_AdministrationTypeMaster", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet pr_get_AdministrationTypebyID(int AdministrationTypeID)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_get_AdministrationTypebyID", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@AdministrationTypeID", AdministrationTypeID);
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet pr_get_AdministrationTypeMasterIsActive()
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_get_AdministrationTypeMasterIsActive", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }
        #endregion

        public DataSet pr_getadministrativemembermaster()
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_getadministrativemembermaster", con);

                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet Pr_insert_Administrationmembermaster(AdministartiveMembersBO obj)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("Pr_insert_Administrationmembermaster", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@v_pk", obj.pk);
                    cmdsrc.Parameters.AddWithValue("@v_AdministrationMemberName", obj.AdministrationMemberName);
                    cmdsrc.Parameters.AddWithValue("@v_AdministrationTypeID_fk", obj.AdministrationTypeID_fk);
                    cmdsrc.Parameters.AddWithValue("@v_Designation", obj.Designation);
                    cmdsrc.Parameters.AddWithValue("@v_Department", obj.Department);
                    cmdsrc.Parameters.AddWithValue("@v_ContactNo", obj.ContactNo);
                    cmdsrc.Parameters.AddWithValue("@v_Email", obj.Email);
                    cmdsrc.Parameters.AddWithValue("@v_Address", obj.Address);
                    cmdsrc.Parameters.AddWithValue("@v_Photofilepath", obj.Photofilepath);

                    cmdsrc.Parameters.AddWithValue("@v_Description", obj.Description);
                    cmdsrc.Parameters.AddWithValue("@v_CreatedBY", obj.CreatedBY);
                    cmdsrc.Parameters.AddWithValue("@v_CreatedIP", obj.CreatedIP);
                    cmdsrc.Parameters.AddWithValue("@v_ModifiedBY", obj.ModifiedBY);
                    cmdsrc.Parameters.AddWithValue("@v_ModifiedIP", obj.ModifiedIP);
                    cmdsrc.Parameters.AddWithValue("@v_IsActive", obj.IsActive);
                    cmdsrc.Parameters.AddWithValue("@flag", obj.flag);

                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet pr_get_AdministrationMemberbyID(int AdministratorMemberId)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_get_AdministrationMemberbyID", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@pk", AdministratorMemberId);
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet pr_getfacility()
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_getfacility", con);

                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet pr_insert_facility(AdministartivefacilitiesBO obj)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_insert_facility", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@v_pk", obj.pk);
                    cmdsrc.Parameters.AddWithValue("@v_facilityName", obj.facilityName);
                    cmdsrc.Parameters.AddWithValue("@v_FromDate", obj.FromDate);
                    cmdsrc.Parameters.AddWithValue("@v_ToDate", obj.ToDate);
                    cmdsrc.Parameters.AddWithValue("@v_Imgfilepath", obj.Imgfilepath);
                    cmdsrc.Parameters.AddWithValue("@v_Description", obj.Description);
                    cmdsrc.Parameters.AddWithValue("@v_CreatedBY", obj.CreatedBY);
                    cmdsrc.Parameters.AddWithValue("@v_CreatedIP", obj.CreatedIP);
                    cmdsrc.Parameters.AddWithValue("@v_ModifiedBY", obj.ModifiedBY);
                    cmdsrc.Parameters.AddWithValue("@v_ModifiedIP", obj.ModifiedIP);
                    cmdsrc.Parameters.AddWithValue("@v_IsActive", obj.IsActive);
                    cmdsrc.Parameters.AddWithValue("@flag", obj.flag);

                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet pr_getfacilitybyID(int facilityid)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_getfacilitybyID", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@pk", facilityid);
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }
        public DataSet pr_getfacilitymenus()
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_getfacilitymenus", con);

                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }
        public DataSet pr_getmessage()
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_getmessage", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet pr_getmessagebyID(int pk)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_getmessagebyID", con);
                    cmdsrc.Parameters.AddWithValue("@v_pk", pk);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }
        public DataSet pr_insert_message(MessageMasters obj)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_insert_message", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@v_pk", obj.pk);
                    cmdsrc.Parameters.AddWithValue("@v_Guestname", obj.GuestName);
                    cmdsrc.Parameters.AddWithValue("@v_Guestdesignation", obj.Guestdesignation);
                    cmdsrc.Parameters.AddWithValue("@v_Guestphoto", obj.Guestphoto);
                    cmdsrc.Parameters.AddWithValue("@v_Description", obj.Description);
                    cmdsrc.Parameters.AddWithValue("@v_FromDate", obj.FromDate);
                    cmdsrc.Parameters.AddWithValue("@v_ToDate", obj.ToDate);
                    cmdsrc.Parameters.AddWithValue("@v_CreatedBY", obj.CreatedBY);
                    cmdsrc.Parameters.AddWithValue("@v_CreatedIP", obj.CreatedIP);
                    cmdsrc.Parameters.AddWithValue("@v_ModifiedBY", obj.ModifiedBY);
                    cmdsrc.Parameters.AddWithValue("@v_ModifiedIP", obj.ModifiedIP);
                    cmdsrc.Parameters.AddWithValue("@v_IsActive", obj.IsActive);
                    cmdsrc.Parameters.AddWithValue("@flag", obj.flag);

                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet Pr_AdministrationMembersdetailsbyAdmintype(string Membertypeid)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("Pr_AdministrationMembersdetailsbyAdmintype", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@AdministrationID", Membertypeid);
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet Pr_GetMenusList()
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("Pr_GetMenusList", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet Pr_GetMenuContentDetails(string flag, string menuId)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("Pr_GetMenuContentDetails", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@P_flag", flag);
                    cmdsrc.Parameters.AddWithValue("@P_MenuID", menuId);
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet Pr_InsertMenuMasterDet(MenuMasterBO objmm, MenuMasterPageContentBO objmmp, TableHeadersBO objth, TableRowContentBO objtrc, UploadImagesBO objimg, DataTable dtheaders, DataTable dtrowcontent, DataTable tblImages)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("Pr_InsertMenuMasterDet", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@P_MenuName", objmm.MenuName);
                    cmdsrc.Parameters.AddWithValue("@P_Description", objmm.Description);
                    cmdsrc.Parameters.AddWithValue("@P_Parent_MenuPK", objmm.Parent_MenuPK);
                    cmdsrc.Parameters.AddWithValue("@P_isActive", objmm.IsActive);
                    cmdsrc.Parameters.AddWithValue("@P_CreatedBy", objmm.CreatedBy);
                    cmdsrc.Parameters.AddWithValue("@P_CreatedIP", objmm.CreatedIP);
                    cmdsrc.Parameters.AddWithValue("@P_PageName", objmmp.PageName);
                    cmdsrc.Parameters.AddWithValue("@p_PageHeader", objmmp.PageHeader);
                    cmdsrc.Parameters.AddWithValue("@P_PageDescription", objmmp.PageDescription);
                    cmdsrc.Parameters.AddWithValue("@P_PageContent", objmmp.PageContent);
                    if (tblImages.Rows.Count == 0)
                    {
                        cmdsrc.Parameters.AddWithValue("@P_imagesAvailable", "0");
                    }
                    else
                    {
                        cmdsrc.Parameters.AddWithValue("@P_imagesAvailable", "1");
                    }

                    cmdsrc.Parameters.AddWithValue("@P_Uploadimages", tblImages);
                    if (dtheaders.Rows.Count > 0)
                    {
                        cmdsrc.Parameters.AddWithValue("@P_TablesAvailable", "1");
                    }
                    else
                    {
                        cmdsrc.Parameters.AddWithValue("@P_TablesAvailable", "0");
                    }

                    cmdsrc.Parameters.AddWithValue("@tblHeaders", dtheaders);
                    cmdsrc.Parameters.AddWithValue("@tblRowContent", dtrowcontent);


                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }
        public DataTable CheckisSubMenu(string menuId)
        {
            DataTable ds = new DataTable();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("Pr_CheckisSubMenu", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@P_ID", menuId);
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }
        #region ContactMaster

        public DataSet pr_getContactMaster()
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_getContactMaster", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet pr_insertContactMaster(ContactMasters obj)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_insertContactMaster", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@v_Name", obj.Name);
                    cmdsrc.Parameters.AddWithValue("@v_contactNo", obj.contactNo);
                    cmdsrc.Parameters.AddWithValue("@v_email", obj.email);
                    cmdsrc.Parameters.AddWithValue("@v_category", obj.category);
                    cmdsrc.Parameters.AddWithValue("@v_Message", obj.Message);
                    cmdsrc.Parameters.AddWithValue("@v_CreatedBY", obj.CreatedBY);
                    cmdsrc.Parameters.AddWithValue("@v_CreatedIP", obj.CreatedIP);
                    cmdsrc.Parameters.AddWithValue("@v_IsActive", obj.IsActive);

                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet Insert_UpdateCategoryTypes(Category obj)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("Pr_Insert_UpdateCategoryTypes", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@P_ID", obj.categoryID);
                    cmdsrc.Parameters.AddWithValue("@P_CategoryName", obj.categoryName);
                    cmdsrc.Parameters.AddWithValue("@P_Description", obj.description);
                    cmdsrc.Parameters.AddWithValue("@P_CreatedBy", obj.createdBY);
                    cmdsrc.Parameters.AddWithValue("@P_CreatedIP", obj.createdIP);
                    cmdsrc.Parameters.AddWithValue("@P_isActive", obj.isActive);

                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet pr_getContactMasterbyID(int pk)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_getContactMasterbyID", con);
                    cmdsrc.Parameters.AddWithValue("@v_pk", pk);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet GetCategoryTypes(string flag, string id)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("Pr_GetCategoryTypes", con);
                    cmdsrc.Parameters.AddWithValue("@P_ID", id);
                    cmdsrc.Parameters.AddWithValue("@P_Flag", flag);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }
        public DataSet UpdateMenuMasterDet(MenuMasterBO objmm, MenuMasterPageContentBO objmmp, TableHeadersBO objth, TableRowContentBO objtrc, UploadImagesBO objimg, DataTable dtheaders, DataTable dtrowcontent, DataTable tblImages, string columnsChange, string rowsChange, int isTableAvailable, int isEventAvailable)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("Pr_UpdateMenuMasterDet", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@P_MenuID", objmmp.MenuMasterID);
                    cmdsrc.Parameters.AddWithValue("@P_MenuPageID", objmmp.ID);
                    cmdsrc.Parameters.AddWithValue("@P_MenuName", objmm.MenuName);
                    cmdsrc.Parameters.AddWithValue("@P_Description", objmm.Description);
                    cmdsrc.Parameters.AddWithValue("@P_Parent_MenuPK", objmm.Parent_MenuPK);
                    cmdsrc.Parameters.AddWithValue("@P_isActive", objmm.IsActive);
                    cmdsrc.Parameters.AddWithValue("@P_CreatedBy", objmm.CreatedBy);
                    cmdsrc.Parameters.AddWithValue("@P_CreatedIP", objmm.CreatedIP);
                    cmdsrc.Parameters.AddWithValue("@P_PageName", objmmp.PageName);
                    cmdsrc.Parameters.AddWithValue("@p_PageHeader", objmmp.PageHeader);
                    cmdsrc.Parameters.AddWithValue("@P_PageDescription", objmmp.PageDescription);
                    cmdsrc.Parameters.AddWithValue("@P_PageContent", objmmp.PageContent);
                    cmdsrc.Parameters.AddWithValue("@P_RowsChange", rowsChange.ToString());
                    cmdsrc.Parameters.AddWithValue("@P_ColumnsChange", columnsChange.ToString());

                    if (tblImages.Rows.Count == 0)
                    {
                        cmdsrc.Parameters.AddWithValue("@P_imagesAvailable", "0");
                    }
                    else
                    {
                        cmdsrc.Parameters.AddWithValue("@P_imagesAvailable", "1");
                    }

                    cmdsrc.Parameters.AddWithValue("@P_Uploadimages", tblImages);

                    //if (string.IsNullOrEmpty(tblImages))
                    //{
                    //    cmdsrc.Parameters.AddWithValue("@P_imagesAvailable", "0");
                    //}
                    //else
                    //{
                    //    cmdsrc.Parameters.AddWithValue("@P_imagesAvailable", "1");
                    //}

                    //cmdsrc.Parameters.AddWithValue("@P_Uploadimages", tblImages);
                    if (dtheaders.Rows.Count > 0)
                    {
                        cmdsrc.Parameters.AddWithValue("@P_TablesAvailable", "1");
                    }
                    else
                    {
                        cmdsrc.Parameters.AddWithValue("@P_TablesAvailable", "0");
                    }

                    cmdsrc.Parameters.AddWithValue("@isTableAvailable", isTableAvailable.ToString());
                    cmdsrc.Parameters.AddWithValue("@isEventAvailable", isEventAvailable.ToString());
                    cmdsrc.Parameters.AddWithValue("@tblHeaders", dtheaders);
                    cmdsrc.Parameters.AddWithValue("@tblRowContent", dtrowcontent);


                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }
        public DataSet GetEventImagesbyID(int eventID)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strConnectionString))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_GetEventImagesbyID", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@P_ID", eventID);
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        #endregion
    }

}