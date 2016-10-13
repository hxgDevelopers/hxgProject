using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hxgUtilis;
using System.Text.RegularExpressions;

namespace hxg
{
    public partial class hxgFrontTelCheck : System.Web.UI.Page
    {
        //不设为static在txtSubmit_Click中读取的时候为0？
        static string VerificateCode = "";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void txtSendCheck_Click(object sender, EventArgs e)
        {
            //手机号码做正则校验
            Regex phoneReg = new Regex ("^[0-9]{11,11}$");
            if (phoneReg.IsMatch(txtTel.Text.Trim()))
            {
                //通过短信接口发送验证码到输入的手机号码
                VerificateCode = CommonUtilis.GenerateRandom();
                CommonUtilis.SendVerification(txtTel.Text, VerificateCode); 
            }
            else
            {
                txtTel.Text = "";
                Response.Write("<script>alert('号码输入错误，重新输入！')</script>");
            }
        }

        protected void txtSubmit_Click(object sender, EventArgs e)
        {
            //将本地验证码和用户验证码做比较，失效重新生成6位新验证码
            if (txtCheck.Text.Trim() == VerificateCode)
            {
                //进入下一页
                //Response.Redirect("");
            }
            else
            {
                Response.Write("<script>alert('验证码错误！')</script>");
            }
        }
    }
}