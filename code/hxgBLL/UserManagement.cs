using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using hxgDAL;
using System.Data;

namespace hxgBLL
{
    public class UserManagement
    {
        private UserManagementDal userManageDal = null;
        private static UserManagement instance = null;

        public UserManagement()
        {
            if (userManageDal == null)
            {
                userManageDal = new UserManagementDal(); 
            }
        }

        public static UserManagement GetInstance()
        {
            if (instance == null)
            {
                instance = new UserManagement();
            }
            return instance;
        }

        public bool Login(string loginName,string Password)
        {
            return userManageDal.Login(loginName, Password);
        }

        public DataTable GetAllUser()
        {
            return hxgUtilis.DataConverter.ConvertToDataTable<USER>(userManageDal.QueryAllUser2());
        }

        public bool SelectUser()
        {
            return false;
        }

        public bool UpdateUser(USER user)
        {
            return userManageDal.UpdateUser(user);
        }

        public bool DeleteUser(long Id)
        {
            return userManageDal.DeleteUser(new USER() { US_ID = Id});
        }

        public bool AddUser(USER user)
        {
            return userManageDal.InsertUser(user);
        }
    }
}
