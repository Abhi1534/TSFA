using System;
using System.Collections.Generic;

using System.Web;
using System.Configuration;

namespace EmployeePortal
{
    public class InsEncrypt
    {
        protected InsEncrypt(string strKey)
        {
        }
        public static string Encrypt(string src)
        {
            string strEncrypted = src;
            try
            {

                if (!string.IsNullOrEmpty(src))
                {
                    XCryptEngine xc = new XCryptEngine(XCryptEngine.AlgorithmType.DES);
                    strEncrypted = xc.Encrypt(src, ConfigurationManager.AppSettings["EncryptKey"]);
                }
            }
            catch (Exception ex)
            {
            }
            return strEncrypted;

        }
        //public static string Decrypt(string src)
        //{
        //    XCryptEngine xc = new XCryptEngine(XCryptEngine.AlgorithmType.DES);
        //    string strDecrypted = xc.Decrypt(src, ConfigurationManager.AppSettings["EncryptKey"]);
        //    return strDecrypted;
        //}
        public static string Decrypt(string src)
        {
            string strDecrypted = src;
            if (!String.IsNullOrEmpty(src))
            {
                string Decrypt_MEM = HttpUtility.UrlDecode(src);
                Decrypt_MEM = Decrypt_MEM.Replace(' ', '+');
                //Decrypt_MEM = InsEncrypt.Decrypt(Decrypt_MEM);
                XCryptEngine xc = new XCryptEngine(XCryptEngine.AlgorithmType.DES);
                strDecrypted = xc.Decrypt(Decrypt_MEM, ConfigurationManager.AppSettings["EncryptKey"]);
            }
            return strDecrypted;
        }

        public static string Encrypt(int src)
        {
            string strEncrypted = Convert.ToString(src);
            if (!string.IsNullOrEmpty(strEncrypted))
            {
                XCryptEngine xc = new XCryptEngine(XCryptEngine.AlgorithmType.DES);
                strEncrypted = xc.Encrypt(strEncrypted, ConfigurationManager.AppSettings["EncryptKey"]);
            }
            return strEncrypted;
        }
        public static string Decrypt(int src)
        {
            string strDecrypted = Convert.ToString(src);
            if (!String.IsNullOrEmpty(strDecrypted))
            {
                string Decrypt_MEM = HttpUtility.UrlDecode(strDecrypted);
                Decrypt_MEM = Decrypt_MEM.Replace(' ', '+');
                //Decrypt_MEM = InsEncrypt.Decrypt(Decrypt_MEM);
                XCryptEngine xc = new XCryptEngine(XCryptEngine.AlgorithmType.DES);
                strDecrypted = xc.Decrypt(Decrypt_MEM, ConfigurationManager.AppSettings["EncryptKey"]);
            }
            return strDecrypted;
        }
    }

}