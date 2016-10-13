using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hxg
{
    public partial class hxgFrontLogin : System.Web.UI.Page
    {
        public static string GLOBALNAME = "town";
        public static string GLOBALPASSWORD = "12345678";
        public static string COOKIEUSER = "HXGUSER";
        public static string COOKIEPASSWORD = "HXGPASSWORD";

        protected void Page_Load(object sender, EventArgs e)
        {
            //读取cookie中的用户密码
            if (Request.Cookies[COOKIEUSER] != null && Request.Cookies[COOKIEPASSWORD] != null)
            {
                string username = Request.Cookies[COOKIEUSER].Value.ToString();
                string password = Request.Cookies[COOKIEPASSWORD].Value.ToString();
                //判断用户密码是否正确
                if (GLOBALNAME == username && GLOBALPASSWORD == password)
                {
                    //跳转到主界面
                    //Response.Redirect("hxgFrontTelCheck");
                }
            }
        }

        protected void btnSumbit_Click(object sender, EventArgs e)
        {
            //判断用户密码是否正确
            if (txtName.Text == GLOBALNAME && txtPassword.Text == GLOBALPASSWORD)
            {               
                //判断客户端浏览器是否存在对应Cookie,存在先清除
                if (Request.Cookies[COOKIEUSER] != null && Request.Cookies[COOKIEPASSWORD] != null)
                {
                    Response.Cookies[COOKIEUSER].Expires = System.DateTime.Now.AddSeconds(-1);//设置cookie无效
                    Response.Cookies[COOKIEPASSWORD].Expires = System.DateTime.Now.AddSeconds(-1);
                }
                //向客户端浏览器加入cookie
                else
                {
                    HttpCookie hcUserName = new HttpCookie(COOKIEUSER);
                    hcUserName.Expires = System.DateTime.Now.AddDays(7);
                    hcUserName.Value = txtName.Text;
                    HttpCookie hcPassword = new HttpCookie(COOKIEPASSWORD);
                    hcPassword.Expires = System.DateTime.Now.AddDays(7);
                    hcPassword.Value = txtPassword.Text;
                    Response.Cookies.Add(hcUserName);
                    Response.Cookies.Add(hcPassword);
                }

                //跳转到主界面
                Response.Redirect("hxgFrontMain");
            }
            else
            {
                Response.Write("<script>alert('用户或密码错误！')</script>");
            }
        }
    }
}