using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hxg
{
    public partial class hxgEndUserManage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.DataBindToRepeater();//将数据绑定到Repeater控件上
            }
        }

        /// <summary>
        /// 将数据源绑定Repeater控件上
        /// </summary>
        private void DataBindToRepeater()
        {
            userRepeat.DataSource = hxgBLL.UserManagement.GetInstance().GetAllUser();
            userRepeat.DataBind();
        }

        private void UpdateUser()
        {

        }
    }
}