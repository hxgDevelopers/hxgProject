using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace hxgDAL
{
    public class UserManagementDal
    {
        public  bool InsertUser(USER user)
        {
            using (hxgEntities hxg = new hxgEntities())
            {
                if (user != null)
                {
                    hxg.USER.Add(user);
                    return hxg.SaveChanges() == 1;
                }
            }
            return false;
        }

        public  bool DeleteUser(USER user)
        {
            using (hxgEntities hxg = new hxgEntities())
            {
                hxg.USER.Remove(user);
                return hxg.SaveChanges() == 1;
            }
            return false;
        }

        //修改和新增一致？
        public  bool UpdateUser(USER user)
        {
            using (hxgEntities hxg = new hxgEntities())
            {
                if (user != null)
                {
                    hxg.USER.Add(user);
                    return hxg.SaveChanges() == 1;
                }
            }
            return false;
        }

        public  List<USER> QueryAllUser()
        {
            using (hxgEntities hxg = new hxgEntities())
            {
                IQueryable<USER> linq = from user in hxg.USER select user;
                return linq.ToList<USER>();
                
            }
            return null;            
        }

        public IQueryable<USER> QueryAllUser2()
        {
            //using (hxgEntities hxg = new hxgEntities())
            //{
            //使用using下文找不到dbContext.
            hxgEntities hxg = new hxgEntities();
            IQueryable<USER> linq = from user in hxg.USER select user;
            return linq;
            //}
            //return null;
        }

        public bool Login(string loginName, string Password)
        {
            using (hxgEntities hxg = new hxgEntities())
            {
                IQueryable<USER> linq = from user in hxg.USER where user.US_LOGNAME == loginName && user.US_PASSWORD == Password select user;
                
                if (linq.Count() > 0)
                    return true;
                else
                    return false;

            }
        }
    }
}
