<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hxgFrontFriends13.aspx.cs" Inherits="hxg.hxgFrontFriends" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="../Css/main.css">
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
<script src="../Scripts/jquery.min.js"></script>
</head>
<body>
    <header>
        <a href="" class="close" onlick="javascript:history.go(-1);"></a>
        <h3>好友</h3>
    </header>
    <div class="h50"></div>

<div class="page13">
	<div class="hd">
		<a href="">消息</a>
		<a href="" class="on">好友</a>
		<a href="">动态</a>
	</div>
	<div class="bd">
		<!-- 消息 -->
		<div class="part1">
			<ul class="list2">
				<li><a href=""><img src="../images/face134.png" alt="" class="face0">彩虹队</a></li>
				<li><a href=""><img src="../images/face135.png" alt="" class="face0">范菲菲</a></li>
				<li><a href=""><img src="../images/face136.png" alt="" class="face0">龙卷风</a></li>
				<li><a href=""><img src="../images/face131.png" alt="" class="face0">抱抱熊</a></li>
			</ul>
		</div>
		<!-- /消息 -->
		<!-- 好友 -->
		<div class="part2 show">
			<div class="search">
				<input type="text" placeholder="请输入账号或昵称">
				<input type="submit" value="">
			</div>
			<ul class="list1">
				<li><a href=""><img src="../images/face131.png" alt="" class="face0">抱抱熊</a></li>
				<li><a href=""><img src="../images/face132.png" alt="" class="face0">公告</a></li>
				<li><a href=""><img src="../images/face133.png" alt="" class="face0">新朋友</a></li>
			</ul> 
			<ul class="list2">
				<li><a href=""><img src="../images/face134.png" alt="" class="face0">彩虹队</a></li>
				<li><a href=""><img src="../images/face135.png" alt="" class="face0">范菲菲</a></li>
				<li><a href=""><img src="../images/face136.png" alt="" class="face0">龙卷风</a></li>
				<li><a href=""><img src="../images/face131.png" alt="" class="face0">抱抱熊</a></li>
			</ul>
		</div>
		<!-- /好友 -->
		<!-- 动态 -->
		<div class="part3">
			<a href="" class="edit"></a>
			<div class="item bdn">
				<div class="face3">
					<div class="face-bg"><img src="../images/face-bg133.png" alt=""></div>
					<div class="face-img"><a href=""><img src="../images/face.png" alt=""></a></div>
				</div>
				<h3><a href="">妮妮</a><time>32分钟前</time> <a href="" class="btn-delete">删除</a></h3>
				<h3>今天我学会了做家务洗碗，妈妈奖励了我一个苹果，好开心呀。</h3>
				<div class="operate">
					<a href="" class="btn1"></a><a href="" class="btn2"></a>
				</div>
				<div class="con">
					<i></i>
					<p>小明：赞一个！</p>
					<p>妮妮：真好你太棒了</p>
				</div>
			</div>
			<div class="item">
				<div class="face3">
					<div class="face-bg"><img src="../images/face-bg132.png" alt=""></div>
					<div class="face-img"><a href=""><img src="../images/face.png" alt=""></a></div>
				</div>
				<h3><a href="">缓缓</a><time>昨天</time> <a href="" class="btn-delete">删除</a></h3>
				<h3>经过一个月的努力终于拿到了我想了很久的彩笔。</h3>
				<div class="operate">
					<a href="" class="btn1"></a><a href="" class="btn2"></a>
				</div>
				<div class="con">
					<i></i>
					<p>小明：赞一个！</p>
					<p>妮妮：真好你太棒了</p>
				</div>
			</div>
			<div class="item">
				<div class="face3">
					<div class="face-bg"><img src="../images/face-bg133.png" alt=""></div>
					<div class="face-img"><a href=""><img src="../images/face.png" alt=""></a></div>
				</div>
				<h3><a href="">巴拉巴拉小魔仙</a><time>2天前</time> <a href="" class="btn-delete">删除</a></h3>
				<h3>个华盛顿饭后撒的奇偶的赶脚红色地方iOS点哦。</h3>
				<div class="operate">
					<a href="" class="btn1"></a><a href="" class="btn2"></a>
				</div>
				<div class="con">
					<i></i>
					<p>小明：赞一个！</p>
					<p>妮妮：真好你太棒了</p>
				</div>
			</div>
		</div>
		<!-- /动态 -->
	</div>
		
</div>

    <div class="h50"></div>
    <!-- 页底 -->
    <ul class="footer">
        <li><a href="hxgFrontMain12"></a></li>
        <li class="on"><a href=""></a></li>
        <li><a href="hxgFrontMy30"><i></i></a></li>
    </ul>

    <script src="../Scripts/slide.js"></script>
    <script src="../Scripts/main.js"></script>
</body>
</html>
