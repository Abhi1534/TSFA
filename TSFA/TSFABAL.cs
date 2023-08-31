using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using static TSFA.TSFABO;

namespace TSFA
{
    public class TSFABAL
    {
        TSFADAL DBDAL = new TSFADAL();

        #region MAIN MENU MASTER
        public DataSet Pr_insert_mainmenumaster(MainMenuBO objmtm)
        {
            return DBDAL.Pr_insert_mainmenumaster(objmtm);
        }
        public DataSet pr_get_mainmenumaster()
        {
            return DBDAL.pr_get_mainmenumaster();
        }
        public DataSet pr_get_mainmenumasterbyID(int MenuID)
        {
            return DBDAL.pr_get_mainmenumasterbyID(MenuID);
        }
        #endregion

        #region LatestNewsmaster
        public DataSet Pr_insert_LatestNewsmaster(LatestNewsMasterBO objmtm)
        {
            return DBDAL.Pr_insert_LatestNewsmaster(objmtm);
        }
        public DataSet pr_get_LatestNewsmaster()
        {
            return DBDAL.pr_get_LatestNewsmaster();
        }
        public DataSet pr_get_LatestNewsmasterbyID(int LatestNewsID)
        {
            return DBDAL.pr_get_LatestNewsmasterbyID(LatestNewsID);
        }
        #endregion

        #region AdministrationTypeMaster
        public DataSet Pr_insert_AdministrationTypeMaster(AdministrationTypeBO objmtm)
        {
            return DBDAL.Pr_insert_AdministrationTypeMaster(objmtm);
        }
        public DataSet pr_get_AdministrationTypeMaster()
        {
            return DBDAL.pr_get_AdministrationTypeMaster();
        }
        public DataSet pr_get_AdministrationTypebyID(int AdministrationTypeID)
        {
            return DBDAL.pr_get_AdministrationTypebyID(AdministrationTypeID);
        }
        public DataSet pr_get_AdministrationTypeMasterIsActive()
        {
            return DBDAL.pr_get_AdministrationTypeMasterIsActive();
        }

        #endregion

        public DataSet pr_getadministrativemembermaster()
        {
            return DBDAL.pr_getadministrativemembermaster();
        }

        public DataSet Pr_insert_Administrationmembermaster(AdministartiveMembersBO objmm)
        {
            return DBDAL.Pr_insert_Administrationmembermaster(objmm);
        }

        public DataSet pr_get_AdministrationMemberbyID(int AdministrationMemberID)
        {
            return DBDAL.pr_get_AdministrationMemberbyID(AdministrationMemberID);
        }
        public DataSet pr_getfacility()
        {
            return DBDAL.pr_getfacility();
        }

        public DataSet pr_insert_facility(AdministartivefacilitiesBO objmm)
        {
            return DBDAL.pr_insert_facility(objmm);
        }

        public DataSet pr_getfacilitybyID(int facilityid)
        {
            return DBDAL.pr_getfacilitybyID(facilityid);
        }
        public DataSet pr_getmessage()
        {
            return DBDAL.pr_getmessage();
        }

        public DataSet pr_getfacilitymenus()
        {
            return DBDAL.pr_getfacilitymenus();
        }
        public DataSet pr_getmessagebyID(int pk)
        {
            return DBDAL.pr_getmessagebyID(pk);
        }


        public DataSet pr_insert_message(MessageMasters obj)
        {
            return DBDAL.pr_insert_message(obj);
        }

        public DataSet Pr_AdministrationMembersdetailsbyAdmintype(string Membertypeid)
        {
            return DBDAL.Pr_AdministrationMembersdetailsbyAdmintype(Membertypeid);
        }

        public DataSet Pr_InsertMenuMasterDet(MenuMasterBO objmm, MenuMasterPageContentBO objmmp, TableHeadersBO objth, TableRowContentBO objtrc, UploadImagesBO objimg, DataTable dtheaders, DataTable dtrowcontent, DataTable tblImages)
        {
            return DBDAL.Pr_InsertMenuMasterDet(objmm, objmmp, objth, objtrc, objimg, dtheaders, dtrowcontent, tblImages);
        }

        public DataSet UpdateMenuMasterDet(MenuMasterBO objmm, MenuMasterPageContentBO objmmp, TableHeadersBO objth, TableRowContentBO objtrc, UploadImagesBO objimg, DataTable dtheaders, DataTable dtrowcontent, DataTable tblImages, string columnsChange, string rowsChange,int isTableAvailable,int isEventAvailable)
        {
            return DBDAL.UpdateMenuMasterDet(objmm, objmmp, objth, objtrc, objimg, dtheaders, dtrowcontent, tblImages, columnsChange, rowsChange, isTableAvailable, isEventAvailable);
        }

        public DataSet Pr_GetMenusList()
        {
            return DBDAL.Pr_GetMenusList();
        }

        public DataSet Pr_GetMenuContentDetails(string flag, string menuId)
        {
            return DBDAL.Pr_GetMenuContentDetails(flag, menuId);
        }
        public DataTable CheckisSubMenu(string menuId)
        {
            return DBDAL.CheckisSubMenu(menuId);
        }
        public DataSet pr_getContactMaster()
        {
            return DBDAL.pr_getContactMaster();
        }

        public DataSet pr_insertContactMaster(ContactMasters obj)
        {
            return DBDAL.pr_insertContactMaster(obj);
        }

        public DataSet pr_getContactMasterbyID(int pk)
        {
            return DBDAL.pr_getContactMasterbyID(pk);
        }
        public DataSet Insert_UpdateCategoryTypes(Category obj)
        {
            return DBDAL.Insert_UpdateCategoryTypes(obj);
        }

        public DataSet GetCategoryTypes(string flag, string id)
        {
            return DBDAL.GetCategoryTypes(flag, id);
        }
        public DataSet GetEventImagesbyID(int eventID)
        {
            return DBDAL.GetEventImagesbyID(eventID);
        }
    }
}