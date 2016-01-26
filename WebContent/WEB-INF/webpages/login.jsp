<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<title>水资源信息管理系统</title>
<link rel="stylesheet" href="style/login-style.css" type="text/css" media="screen" />
<link rel="stylesheet" href="style/colors/blue.css" type="text/css" media="screen" />
<!-- To change the color scheme, change blue.css with green.css, orange.css, red.css, purple.css and pink.css-->

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.min.js"></script>
<script type="text/javascript" src="js/supersized.3.2.7.js"></script>
<script type="text/javascript" src="js/supersized.shutter.js"></script>
<script type="text/javascript" src="js/jquery.countdown.js"></script>
<script type="text/javascript" src="js/jquery.contact.js"></script>
<script type="text/javascript" src="js/jquery.subscribe.js"></script>

<script type="text/javascript" src="js/jquery.ui.core.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.widget.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.mouse.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.draggable.min.js"></script>

<script type="text/javascript" src="js/jquery.label_better.js"></script>

<script type="text/javascript" src="js/custom.js"></script>

<script>
	$(document).ready(function() {
		$(".label_better").label_better({
			easing : "bounce"
		});
		
		//根据登陆效果响应样式
		var loginState = ${loginStateMap }+'';
		if(loginState != '' && loginState == '1'){
			var elementUserName = $('input[name=\'userName\']');
			elementUserName.attr('placeholder','用户名错误');
		}else if((loginState != '' && loginState == '2')){
			
		}
		
		
	});
</script>

</head>
<body>

	<div id="wrapper">
		<div id="container">

			<div id="progress"></div>

			<ul class="top-buttons">
				<!-- drag and toggle buttons-->
				<li><a class="trigger">toggle me</a></li>
				<!-- 移动 按钮 <li><a class="drag">drag me with your mouse</a></li>   -->
			</ul>
			<!--end top-buttons-->
			<div id="totoggle">
				<div id="infopage">
					<div class="content">
						<h2>水资源信息管理系统</h2>
						<p>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<span>水资源信息管理系统</span>是专门为水务部门开发的管理系统，
							适用于水务部门监控自备井取水、监测水厂进出水流量、监测明渠流量、
							监测地下水水位、监测水源地水质以及进行水资源远程售水管理等。
							系统为有效保护水资源、合理利用水资源、加强社会节水意识发挥了重要作用。
						<p>
						<h2>当前系统版本</h2>
						<p>v 1.0.0</p>
					</div>
					<!--end content-->

					<ul class="buttons">
						<li><a class="info">I show some info</a></li>
						<li><a class="infocontact">I reveal the contact form</a></li>
					</ul>
					<!--end buttons-->
				</div>
				<!--end infopage-->

				<div id="contactpage">
					<div class="content">
						<div class="one-half">
							<h2>找回密码的方式</h2>
							<h3>1.通过邮箱找回</h3>
							<p>在右侧输入您的<span>用户名</span>和<span>密码</span>，我们将以邮件的方式将您的新密码发送至您的邮箱。</p>
							<p></p>
							<h3>2.联系管理员</h3>
							<p>
								<span>联系方式1:</span> <a href="#">13812345678</a><p>
								<span>联系方式2:</span> <a href="#">admin@water.com</a>
							</p>
						</div>
						<!--end one-half-->

						<div class="one-half last cf">
							<div id="contactform">
								<div id="message"></div>
								<form method="post" action="php/contact.php" name="cform" id="cform">
									<input type="text" name="name" placeholder="用户名" id="name" />
									<input type="text" name="email" placeholder="邮箱" id="email" />
									<textarea name="comments" placeholder="备注消息" id="comments"></textarea>
									<input type="submit" class="login" name="send" value="找回密码" id="submit" />
								</form>
							</div>
							<!--end contactform-->
						</div>
						<!--end one-half-->
					</div>
					<!--end content-->

					<div class="clear"></div>

					<ul class="buttons">
						<li><a class="contactinfo">I show some info</a></li>
						<li><a class="contact">I reveal the contact form</a></li>
					</ul>
					<!--end buttons-->
				</div>
				<!--end contactpage-->

				<div id="homepage">
					<a class="logo" href="javascript:;"><img src="style/images/logo.png" alt="logo" /></a>
					<h2>
						<span>水资源信息管理系统</span>
					</h2>

					<!--
					<div id="countdown"></div>
					-->
					<div class="wrapper">
						<div class="main">
							<div id="page-container"></div>
							<form class="bl_form" method="post" action="${basePath }checkLogin">
								<input name="userName" type="text" class="label_better" data-new-placeholder="账号" placeholder="账号"> 
								<input name="passWord" type="password" class="label_better" data-new-placeholder="密码" placeholder="密码"><p>
								<input type="submit" value="登陆" class="login" />
							</form>
						</div>
					</div>
					<ul class="buttons">
						<li><a class="info">I show some info</a></li>
						<li><a class="contact">I reveal the contact form</a></li>
					</ul>
					<!--end buttons-->
				</div>
				<!--end homepage-->
			</div>
			<!--end totoggle-->
		</div>
		<!--end container-->

		<!--Thumbnail Navigation-->
		<div id="prevthumb"></div>
		<div id="nextthumb"></div>

		<!--Arrow Navigation-->
		<div id="thumb-tray" class="load-item">
			<div id="thumb-back"></div>
			<div id="thumb-forward"></div>
		</div>

		<!--Time Bar-->
		<div id="progress-back" class="load-item">
			<div id="progress-bar"></div>
		</div>

		<!--Control Bar-->
		<div id="controls-wrapper" class="load-item">
			<div id="controls">
				<div id="social">
					<h4>Copyright &copy; 2016 北京嘉名时代科技有限公司</h4>
					<!--	<ul>
						<li><a class="rss" href="#"><img src="images/social/rss.png" alt="" /></a></li>
						<li><a class="twitter" href="#"><img src="images/social/twitter.png" alt="" /></a></li>
						<li><a class="facebook" href="#"><img src="images/social/facebook.png" alt="" /></a></li>
						<li><a class="flickr" href="#"><img src="images/social/flickr.png" alt="" /></a></li>
						<li><a class="google" href="#"><img src="images/social/google.png" alt="" /></a></li>
						<li><a class="skype" href="#"><img src="images/social/skype.png" alt="" /></a></li>
						<li><a class="stumbleupon" href="#"><img src="images/social/stumbleupon.png" alt="" /></a></li>
						<li><a class="vimeo" href="#"><img src="images/social/vimeo.png" alt="" /></a></li>
						<li><a class="dribbble" href="#"><img src="images/social/dribbble.png" alt="" /></a></li>
						<li><a class="forrst" href="#"><img src="images/social/forrst.png" alt="" /></a></li>

					</ul> -->
				</div>
				<!--end social-->

				<div class="centered-controls">
					<a id="prevslide" class="load-item"><img src="style/images/back.png" alt="" /></a> 
					<a id="play-button"><img id="pauseplay" src="style/images/pause.png" alt="" /></a> 
					<a id="nextslide" class="load-item"><img src="style/images/forward.png" alt="" /></a>
				</div>
				<!--end centered-controls-->

				<!--Thumb Tray button(the button from the bottom-right area)-->
				<a id="tray-button"><img id="tray-arrow" src="style/images/button-tray-up.png" alt="" /></a>

			</div>
			<!--end controls-->
		</div>
		<!--end controls-wrapper-->
	</div>
	<!--end wrapper-->

	<script type="text/javascript" src="js/jquery.placeholder.js"></script>
	<!-- placeholder html5 tag support for IE and Old Browsers -->

</body>
</html>