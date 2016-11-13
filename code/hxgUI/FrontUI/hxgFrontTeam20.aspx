<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hxgFrontTeam20.aspx.cs" Inherits="hxg.FrontUI.hxgFrontTerm20" %>

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
	<h3>团队</h3>
</header>
<div class="h50"></div>


<div class="page20">
	<div class="hd">
		<a href="">我的团队</a>
		<a href="" class="on">上级团队</a>
		<a href="">以往团队</a>
	</div>

	<div class="bd">
		<!-- 我的团队 -->
		<div class="part1">
			<!-- 未创建时 -->
			<div class="step1">
				<p>你还没有建立自己的团队或参加其他团队；</p>
				<p>要建立自己的团队吗？</p>
				<br>
				<p>建立自己的团队</p>
				<p>让我在小伙伴的督促下</p>
				<p>用最好的表现</p>
				<p>打败所有坏习惯</p>
				<p>培养好习惯</p>
				<div class="operate">
					<a href="" class="btn1"><img src="../images/btn201.png" alt=""></a>
				</div>
			</div>
			<!-- 进入创建流程 -->
			<div class="step2">
				<a href="" class="btn-flag"><img src="../images/img203.png" alt=""></a>
				<div class="name">队名：<input type="text" placeholder="填写你的队名"></div>
				<div class="operate">
					<a href="" class="btn2"><img src="../images/btn202.png" alt=""></a>
				</div>
			</div>


			<!--创建时选择队旗 -->
			<div class="flag-alert">
				<div class="box">
					<div class="title"><img src="../images/title201.png" alt=""></div>

					<div id="banner20" class="banner20">
						<div class="hd2">
							<ul></ul>
						</div>
						<div class="bd2">
							<ul>
								<li>
									<div class="upload"><input type="file" name="" id=""></div>
									<a href=""><img src="../images/flag1.png" alt=""></a>
									<a href=""><img src="../images/flag2.png" alt=""></a>
									<a href=""><img src="../images/flag3.png" alt=""></a>
									<a href=""><img src="../images/flag4.png" alt=""></a>
									<a href=""><img src="../images/flag5.png" alt=""></a>
								</li>
								<li>
									<a href=""><img src="../images/flag1.png" alt=""></a>
									<a href=""><img src="../images/flag2.png" alt=""></a>
									<a href=""><img src="../images/flag3.png" alt=""></a>
									<a href=""><img src="../images/flag4.png" alt=""></a>
									<a href=""><img src="../images/flag5.png" alt=""></a>
								</li>
								<li>
									<a href=""><img src="../images/flag1.png" alt=""></a>
									<a href=""><img src="../images/flag2.png" alt=""></a>
									<a href=""><img src="../images/flag3.png" alt=""></a>
									<a href=""><img src="../images/flag4.png" alt=""></a>
									<a href=""><img src="../images/flag5.png" alt=""></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>


			<!-- 正常状态：我的团队 -->
			<div class="step4 show">
				<div class="tips1">可可邀请你加入大力士团队 <a href="" class="btn2 ok"></a><a href="" class="btn1 no"></a></div>
				<div class="team">
					<img src="../images/img205-1.png" alt="">
					<h3>彩虹队 <a href="" class="btn3"></a></h3>
					<p>队员:83   <span>积分:805542</span></p>
				</div>
				<ul class="page10">
					<li>
						<div class="face2">
							<div class="face-bg"><img src="../images/face-bg1.png" alt=""></div>
							<div class="face-img"><a href=""><img src="../images/face.png" alt=""></a></div>
						</div>
						<h3>妮妮·<i>队长</i><br>积分：360</h3>
					</li>
					<li>
						<div class="face2">
							<div class="face-bg"><img src="../images/face-bg1.png" alt=""></div>
							<div class="face-img"><a href=""><img src="../images/face.png" alt=""></a></div>
						</div>
						<h3>妮妮·队员<br>积分：230</h3>
					</li>
					<li>
						<div class="face2">
							<div class="face-bg"><img src="../images/face-bg1.png" alt=""></div>
							<div class="face-img"><a href=""><img src="../images/face.png" alt=""></a></div>
						</div>
						<h3>妮妮·队员<br>积分：230</h3>
					</li>
				</ul>
				<a href="" class="btn-add"></a>
			</div>


		</div>
		<!-- /我的团队 -->
		<!-- 上级团队 -->
		<div class="part2 show">
			<div class="team">
				<img src="../images/img201.png" alt="">
				<h3>梦想小队<i>（15648545）</i></h3>
				<p>队员:83   <span>积分:805542</span></p>
			</div>


			<div class="item bgn">
				<div class="face2">
					<div class="face-bg"><img src="../images/face-bg1.png" alt=""></div>
					<div class="face-img"><a href=""><img src="../images/face.png" alt=""></a></div>
				</div>
				<h3>大阳·队员</h3>
				<p>积分:251   <span>军职：少士</span></p>
				<a href="" class="btn-add"></a>
			</div>
			<div class="item">
				<div class="face2">
					<div class="face-bg"><img src="../images/face-bg1.png" alt=""></div>
					<div class="face-img"><a href=""><img src="../images/face.png" alt=""></a></div>
				</div>
				<h3>大阳·队员</h3>
				<p>积分:251   <span>军职：少士</span></p>
				<a href="" class="btn-add"></a>
			</div>
			<div class="item">
				<div class="face2">
					<div class="face-bg"><img src="../images/face-bg1.png" alt=""></div>
					<div class="face-img"><a href=""><img src="../images/face.png" alt=""></a></div>
				</div>
				<h3>大阳·队员</h3>
				<p>积分:251   <span>军职：少士</span></p>
				<a href="" class="btn-add"></a>
			</div>
		</div>
		<!-- /上级团队 -->
		<!-- 以往团队 -->
		<div class="part3">
			<div class="team">
				<img src="../images/img202.png" alt="">
				<h3>TFBOY（12565466）</h3>
				<p>队员:83   <span>积分:805542</span></p>
			</div>
			<div class="team">
				<img src="../images/img202.png" alt="">
				<h3>天使女孩（15456866）</h3>
				<p>队员:83   <span>积分:805542</span></p>
			</div>
		</div>
		<!-- /以往团队 -->
	</div>




</div>
    <script src="../scripts/slide.js"></script>
    <script src="../scripts/main.js"></script>
</body>
</html>
