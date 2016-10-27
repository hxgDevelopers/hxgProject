<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hxgFrontTelCheck.aspx.cs" Inherits="hxg.hxgFrontTelCheck" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>验证</title>
    <!-- Bootstrap -->
    <link href="../Css/bootstrap.min.css" rel="stylesheet">
	  <script src="../Scripts/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
      <script src="../Scripts/index.js" type="text/javascript" charset="utf-8"></script>
	  <link rel="stylesheet" type="text/css" href="../Css/index.css"/>
    <script src="../Scripts/bootstrap.min.js"></script>
</head>
<body>
        <div class="container-max landscape-hide telpage">
          <div class="telForm">
              <form id="form1" runat="server">
                  <div class="rows">
                      <asp:TextBox placeholder="请输入你的手机号码：" type="text" runat="server" ID="txtTel"></asp:TextBox>
                      <asp:Button class="send" runat="server" ID="txtSendCheck" OnClick="txtSendCheck_Click"/>
<%--                  <input type="text" placeholder="请输入你的手机号码：" />
                      <button type="button" class="send">发送验证码</button>--%>
                  </div>
                  <div class="rows">
<%--                   <input type="text" placeholder="请输入你的手机号码：" />
                      <button type="button" class="enter">确认</button>--%>
                      <asp:TextBox placeholder="请输入你的验证码：" type="text" runat="server" ID="txtCheck"></asp:TextBox>
                      <asp:Button class="enter" runat="server" ID="txtSubmit" OnClick="txtSubmit_Click"/>
                  </div>

              </form>
          </div>
          <div class="loginbottom">
              <div>
                  东方爱婴汕尾中心
              </div>
          </div>
        </div>
</body>
</html>
