using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hxgBLL;

namespace hxg
{
    public partial class hxgFrontLogin : System.Web.UI.Page
    {
        public static string COOKIEUSER = "HXGUSER";
        public static string COOKIEPASSWORD = "HXGPASSWORD";
        public static string COOKIEREMEMBER = "HXGREMEMBER";
        public static string COOKIEAUTOLOGIN = "HXGAUTOLOGIN";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string username = "";
                string password = "";
                string remember = "";
                string auto = "";
                if (Request.Cookies[COOKIEREMEMBER] != null && Request.Cookies[COOKIEAUTOLOGIN] != null)
                {
                    remember = Request.Cookies[COOKIEREMEMBER].Value;
                    auto = Request.Cookies[COOKIEAUTOLOGIN].Value;
                    checkboxRem.Checked = remember == "true" ? true : false;
                    checkboxAuto.Checked = auto == "true" ? true : false;
                }

                //判断保存用户密码
                if (remember.Equals("true"))
                {
                    //读取cookie中的用户密码
                    if (Request.Cookies[COOKIEUSER] != null && Request.Cookies[COOKIEPASSWORD] != null)
                    {
                        username = Request.Cookies[COOKIEUSER].Value.ToString();
                        password = Request.Cookies[COOKIEPASSWORD].Value.ToString();
                        txtName.Text = username;
                        txtPassword.Text = password;
                    }
                }

                //判断自动登录
                if (auto.Equals("true"))
                {
                    //登录
                    if (UserManagement.GetInstance().Login(username, password))
                    {
                        //跳转到主界面
                        Response.Redirect("FrontUI/hxgFrontMain12");
                    }
                } 
            }
        }

        protected void btnSumbit_Click(object sender, EventArgs e)
        {
            //记录“记住用户密码”
            if (checkboxRem.Checked)
            {
                if (Request.Cookies[COOKIEREMEMBER] != null)
                {
                    Response.Cookies[COOKIEREMEMBER].Value = checkboxRem.Checked.ToString();
                }
                else
                {
                    HttpCookie hcRemember = new HttpCookie(COOKIEREMEMBER);
                    hcRemember.Expires = System.DateTime.Now.AddDays(7);
                    hcRemember.Value = checkboxRem.Checked.ToString();
                    Response.Cookies.Add(hcRemember);
                } 
            }

            if (checkboxRem.Checked)
            {
                //判断客户端浏览器是否存在用户密码Cookie,存在先清除
                if (Request.Cookies[COOKIEUSER] != null && Request.Cookies[COOKIEPASSWORD] != null)
                {
                    Response.Cookies[COOKIEUSER].Expires = System.DateTime.Now.AddSeconds(-1);//设置cookie无效
                    Response.Cookies[COOKIEPASSWORD].Expires = System.DateTime.Now.AddSeconds(-1);
                }
                //向客户端浏览器加入用户密码cookie
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
            }

            //记录“自动登录”
            if (checkboxAuto.Checked) 
            {
                if (Response.Cookies[COOKIEREMEMBER].Value != null)
                {
                    Response.Cookies[COOKIEREMEMBER].Value = checkboxAuto.Checked.ToString();
                }
                else
                {
                    HttpCookie hcAutoLogin = new HttpCookie(COOKIEAUTOLOGIN);
                    hcAutoLogin.Expires = System.DateTime.Now.AddDays(7);
                    hcAutoLogin.Value = checkboxAuto.Checked.ToString();
                    Response.Cookies.Add(hcAutoLogin);
                }
                
            }
          
            //登录
            if (UserManagement.GetInstance().Login(txtName.Text,txtPassword.Text))
            {             
                //跳转到主界面
                Response.Redirect("FrontUI/hxgFrontMain12");
            }
            else
            {
                Response.Write("<script>alert('用户或密码错误！')</script>");
            }
        }
    }
}