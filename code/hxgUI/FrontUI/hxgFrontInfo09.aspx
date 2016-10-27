<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hxgFrontInfo09.aspx.cs" Inherits="hxg.FrontUI.hxgFrontInfo09" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="../css/main.css">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=0">
<meta name="imagemode" content="force">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" type="image/x-icon" href="">
<link rel="apple-touch-icon-precomposed" href="">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="-1">
<script src="../scripts/jquery.min.js"></script>
</head>
<body>
<%--    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>--%>
<header>
	<a href="" class="back" onclick="javascript:history.go(-1);"></a>
	<h3>个人信息</h3>
</header>
<div class="h50"></div>


<ul class="page9">
	<li class="li1">
		<span>头像</span>
		<div class="face2">
			<div class="face-bg"><img src="../images/face-bg1.png" alt=""></div>
			<div class="face-img"><a href=""><img src="../images/face.png" alt=""></a></div>
			<%--<input type="file" name="" id="">--%>
		</div>
	</li>
	<!-- <li><span>昵称</span>妮妮</li>
	<li><span>性别</span>女</li>
	<li><span>年龄</span>2岁9个月</li>
	<li><span>账号</span>1234645</li>
	<li><span>签名</span>努力加油，go！</li> -->
	<li><span>昵称</span><input type="text" value="妮妮"></li>
	<li><span>性别</span><input type="text" value="女"></li>
	<li><span>年龄</span><input type="text" value="2岁9个月"></li>
	<li><span>账号</span><input type="text" value="1234645"></li>
	<li><span>签名</span><input type="text" value="努力加油，go！"></li>
</ul>



<script src="../scripts/slide.js"></script>
<script src="../scripts/main.js"></script>
</body>
</html>
