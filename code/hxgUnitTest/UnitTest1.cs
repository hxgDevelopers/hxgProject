using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using hxgDAL;
using System.Data;
using System.Xml;

namespace hxgUnitTest
{
    [TestClass]
    public class UnitTest1
    {
        
        public void TestInsertUser()
        {
            USER user = new USER()
            {
                //US_ID = 168242,
                US_LOGNAME = "admin",
                US_PASSWORD = "123456",
                US_AGE = 8,
                US_NICKNAME = "apple",
                US_TYPE = "E",
                US_GENDER = "M",
                US_LOGO = "xxxxxx",
                US_PARENTSPSWD = "13713001490",
                US_SCORE = 0,
                ISACTIVE = 0,
                CREATETIME = System.DateTime.Now,
                LASTUPDATETIME = System.DateTime.Now
            };
            UserManagementDal umd = new UserManagementDal();
            bool flag = umd.InsertUser(user);
        }

        [TestMethod]
        public void TestQueryUser()
        {
            UserManagementDal umd = new UserManagementDal();
            DataTable table = hxgUtilis.DataConverter.ConvertToDataTable<USER>(umd.QueryAllUser2());
            
            //bool f1 = umd.Login("1234", "123456");
            //bool f2 = umd.Login("admin","123456");
        }
    }
}
