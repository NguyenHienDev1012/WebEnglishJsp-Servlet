<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
</head>
<body>
<%if(session.getAttribute("sessionname")==null) {%>
<div id="header-row">
		<div class="container">
			<div class="row">
				<!--LOGO-->
				<div class="span3">
					<a class="brand" href="HomeForward"><img
						src="Template/Frontend/img/logo.png" /></a>
				</div>
				<!-- /LOGO -->

				<!-- MAIN NAVIGATION -->
				<div class="span9">
					<div class="navbar  pull-right">
						<div class="navbar-inner">
							<a data-target=".navbar-responsive-collapse"
								data-toggle="collapse" class="btn btn-navbar"><span
								class="icon-bar"></span><span class="icon-bar"></span><span
								class="icon-bar"></span></a>
							<div class="nav-collapse collapse navbar-responsive-collapse">
								<ul class="nav">
									<li><a href="RegisterForward">Tuyển Dụng</a></li>
									<li><a href="CourseForward">Khóa Học</a></li>
									<li><a href="ListenToMusicForward">Nghe nhạc</a></li>
									<li><a href="ContactForward">Liên hệ</a></li>
									<li><a href="RegisterForward">Đăng Ký</a></li>
									<li><a href="LoginForward">Đăng Nhập</a></li>

								</ul>
							</div>

						</div>
					</div>
				</div>
				<!-- MAIN NAVIGATION -->
			</div>
		</div>
	</div>
	<%} else{%>
		
		<div id="header-row">
		<div class="container">
			<div class="row">
				<!--LOGO-->
				<div class="span3">
					<a class="brand" href="HomeForward"><img
						src="Template/Frontend/img/logo.png" /></a>
				</div>
				<!-- /LOGO -->

				<!-- MAIN NAVIGATION -->
				<div class="span9">
					<div class="navbar  pull-right">
						<div class="navbar-inner">
							<a data-target=".navbar-responsive-collapse"
								data-toggle="collapse" class="btn btn-navbar"><span
								class="icon-bar"></span><span class="icon-bar"></span><span
								class="icon-bar"></span></a>
							<div class="nav-collapse collapse navbar-responsive-collapse">
								<ul class="nav">
									<li><a href="RegisterForward">Tuyển Dụng</a></li>
									<li><a href="RegisterForward">Khóa Học</a></li>
									<li><a href="#"> Wellcome:${sessionname}</a></li>
									<li><a href="LogoutController">Thoát</a></li>

								</ul>
							</div>

						</div>
					</div>
				</div>
				<!-- MAIN NAVIGATION -->
			</div>
		</div>
	</div>
	<% }%>
</body>
</html>