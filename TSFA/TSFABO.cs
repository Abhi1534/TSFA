using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TSFA
{
    public class TSFABO
    {
        public class MainMenuBO
        {
            public int? MenuID { get; set; }
            public string MenuName { get; set; }
            public string Description { get; set; }
            public string CreatedBY { get; set; }
            public string CreatedIP { get; set; }
            public string ModifiedBY { get; set; }
            public string ModifiedIP { get; set; }
            public string IsActive { get; set; }
            public string flag { get; set; }
        }

        public class LatestNewsMasterBO
        {
            public int? LatestNewsID { get; set; }
            public string LatestNewsName { get; set; }
            public DateTime LatestNewsDate { get; set; }
            public string Docpath { get; set; }
            public string Description { get; set; }
            public string CreatedBY { get; set; }
            public string CreatedIP { get; set; }
            public string ModifiedBY { get; set; }
            public string ModifiedIP { get; set; }
            public string IsActive { get; set; }
            public string flag { get; set; }
        }

        public class AdministrationTypeBO
        {
            public int? AdministrationTypeID { get; set; }
            public string AdministrationTypeName { get; set; }
            public string Description { get; set; }
            public string CreatedBY { get; set; }
            public string CreatedIP { get; set; }
            public string ModifiedBY { get; set; }
            public string ModifiedIP { get; set; }
            public string IsActive { get; set; }
            public string flag { get; set; }
        }
        public class AdministartiveMembersBO
        {
            public int? pk { get; set; }
            public int AdministrationTypeID_fk { get; set; }

            public string AdministrationMemberName { get; set; }
            public string Designation { get; set; }
            public string Department { get; set; }

            public string ContactNo { get; set; }

            public string Email { get; set; }

            public string Address { get; set; }

            public string Photofilepath { get; set; }

            public string Description { get; set; }
            public string CreatedBY { get; set; }
            public DateTime CreatedDate { get; set; }
            public string CreatedIP { get; set; }
            public string ModifiedBY { get; set; }
            public DateTime ModifiedDate { get; set; }
            public string ModifiedIP { get; set; }
            public string IsActive { get; set; }

            public string flag { get; set; }

        }

        public class AdministartivefacilitiesBO
        {
            public int? pk { get; set; }
            public string facilityName { get; set; }

            public string FromDate { get; set; }

            public string ToDate { get; set; }
            public string Imgfilepath { get; set; }

            public string Description { get; set; }
            public string CreatedBY { get; set; }
            public DateTime CreatedDate { get; set; }
            public string CreatedIP { get; set; }
            public string ModifiedBY { get; set; }
            public DateTime ModifiedDate { get; set; }
            public string ModifiedIP { get; set; }
            public string IsActive { get; set; }

            public string flag { get; set; }

        }
        public class MessageMasters
        {
            public int? pk { get; set; }
            public string GuestName { get; set; }        
            public string Guestdesignation { get; set; }
            public string FromDate { get; set; }
            public string ToDate { get; set; }
            public string Description { get; set; }
            public string Guestphoto { get; set; }
            public string CreatedBY { get; set; }           
            public string CreatedIP { get; set; }
            public string ModifiedBY { get; set; }         
            public string ModifiedIP { get; set; }
            public string IsActive { get; set; }
            public string flag { get; set; }

        }

        public class MenuMasterBO
        {
            public int? ID { get; set; }
            public string MenuName { get; set; }
            public string Description { get; set; }
            public string Parent_MenuPK { get; set; }
            public string CreatedBy { get; set; }
            public string CreatedIP { get; set; }
            public string ModifiedBy { get; set; }
            public string ModifiedIP { get; set; }
            public string IsActive { get; set; }
        }

        public class MenuMasterPageContentBO
        {
            public int? ID { get; set; }
            public string PageName { get; set; }
            public string PageHeader { get; set; }
            public string PageDescription { get; set; }
            public string PageContent { get; set; }

            public string MenuMasterID { get; set; }
            public string CreatedBy { get; set; }
            public string CreatedIP { get; set; }
            public string ModifiedBy { get; set; }
            public string ModifiedIP { get; set; }
            public string IsActive { get; set; }
        }

        public class TableHeadersBO
        {
            public int? ID { get; set; }
            public string PageID { get; set; }
            public string Header1 { get; set; }
            public string Header2 { get; set; }
            public string Header3 { get; set; }

            public string Header4 { get; set; }
            public string Header5 { get; set; }
            public string Header6 { get; set; }

            public string MenuMasterID { get; set; }
            public string CreatedBy { get; set; }
            public string CreatedIP { get; set; }
            public string ModifiedBy { get; set; }
            public string ModifiedIP { get; set; }
            public string IsActive { get; set; }
        }

        public class TableRowContentBO
        {
            public int? ID { get; set; }
            public string PageID { get; set; }
            public string HeaderID { get; set; }
            public string Header1 { get; set; }
            public string Header2 { get; set; }
            public string Header3 { get; set; }

            public string Header4 { get; set; }
            public string Header5 { get; set; }
            public string Header6 { get; set; }

            public string MenuMasterID { get; set; }
            public string CreatedBy { get; set; }
            public string CreatedIP { get; set; }
            public string ModifiedBy { get; set; }
            public string ModifiedIP { get; set; }
            public string IsActive { get; set; }
        }

        public class UploadImagesBO
        {
            public int? ID { get; set; }
            public string PageID { get; set; }
            public string PageName { get; set; }
            public string PageHeader { get; set; }
            public string Upload_Files { get; set; }          

            public string MenuMasterID { get; set; }
            public string CreatedBy { get; set; }
            public string CreatedIP { get; set; }
            public string ModifiedBy { get; set; }
            public string ModifiedIP { get; set; }
            public string IsActive { get; set; }
        }

        public class ContactMasters
        {
            public int? pk { get; set; }
            public string Name { get; set; }

            public string contactNo { get; set; }

            public string email { get; set; }

            public string category { get; set; }

            public string Message { get; set; }
            public string CreatedBY { get; set; }
            public DateTime CreatedDate { get; set; }
            public string CreatedIP { get; set; }
            public string ModifiedBY { get; set; }
            public DateTime ModifiedDate { get; set; }
            public string ModifiedIP { get; set; }
            public string IsActive { get; set; }

        }
        public class Category
        {
            public string categoryName { get; set; }

            public string description { get; set; }

            public string categoryID { get; set; }
            public string isActive { get; set; }

            public string createdBY { get; set; }
            public string createdIP { get; set; }
        }
    }
}