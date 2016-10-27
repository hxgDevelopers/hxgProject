<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hxgFrontLogin.aspx.cs" Inherits="hxg.hxgFrontLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <!-- Bootstrap -->
      <link href="../Css/bootstrap.min.css" rel="stylesheet">
	  <script src="../Scripts/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
      <script src="../Scripts/index.js" type="text/javascript" charset="utf-8"></script>
	  <link rel="stylesheet" type="text/css" href="../Css/index.css"/>
</head>
<body>
		<%--<div class="container-max landscape-hide loginpage">--%>
	  	  
	  	  <div class="loginForm">
	  	  		<form id="form1" runat="server">
	  	  				<div class="rows">
<%--	  	  					<input type="text" placeholder="账号：" runat="server" id ="txtName"/> --%>
                                <asp:TextBox type="text" placeholder="账号：" runat="server" ID="txtName" ></asp:TextBox>
	  	  				</div>
	  	  				<div class="rows">
	  	  						<%--<input type="password" placeholder="密码：" runat="server" id ="txtPassword"/>--%>
                                <asp:TextBox type="password" placeholder="密码：" runat="server" ID="txtPassword" ></asp:TextBox>
	  	  				</div>
	  	  				<div class="checkbox-row text-center">
	  	  						<%--<input type="checkbox" id="checkbox1"/>--%>
                                <asp:CheckBox runat="server" ID="checkboxRem"/>
	  	  						<label for="checkbox1">记住密码</label>　　
	  	  						<%--<input type="checkbox" id="checkbox2"/>--%>
                                <asp:CheckBox runat="server" ID="checkboxAuto"/>
	  	  						<label for="checkbox2">自动登录</label>
	  	  				</div>
	  	  				<%--<button type="submit" class="submit" runat="server" id="btnSumbit" OnClick="btnSumbit_Click">登录</button>--%>
                        <asp:Button runat="server" class="submit" ID="btnSumbit" OnClick="btnSumbit_Click"/>
	  	  		</form>
	  	  </div>
	  	  

				<div class="loginbottom">
					    <div class="links">
					    	<a href="">注册</a><span>|</span><a href="hxgFrontTelCheck">找回密码</a>
					    </div>
					    <div>
					    		东方爱婴汕尾中心
					    </div>
				</div>			
		<%--</div>--%>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
