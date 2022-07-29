<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
  <head>
  	<meta charset="UTF-8">
  	<title>Main</title>
	<!-- <link rel="stylesheet" type="text/css" href="../css/index.css"/> -->
	<style>
		.main-container {
			width: 1024px;
			margin : 10px auto;
			padding : 20px;
			border : 1px solid #bcbcbc;
		}
		.main-nav {
			padding : 20px;
			margin-bottom : 20px;
			border : 1px solid #bcbcbc;
		}
		.main-header {
			padding : 20px;
			margin-bottom : 20px;
			border : 1px solid #bcbcbc;
		}
		.main-footer {
			padding : 20px;
			border : 1px solid #bcbcbc;
		}
		@media (max-width : 480px) {
			width : auto;
		}
	</style>
  </head>
  <body>
 	<div class="main-container">
  	<header class="main-header">
  		Header 영역
  	</header>
  	<div class="main-nav">
  		<div class="right-mn">
  			<ul class="mem-info">
  				<li><span></span>{user.name}(userRoleNm)</li>
  				
  			</ul>
  			
  			<ul class="">
  			
  			</ul>
  		</div>
  		<div class="right-mu">
  			<ul class="mem-menu">
  				<li><a>마이페이지</a></li>
  				<li><a href="mainPage.onClickLogout();">로그아웃</a></li>
  				<li><a href="mainPage.onCLickLogin();">로그인</a><li>
  			</ul>
  		</div>
  		
  	</div>
  	<div id="mainContentsArea">
  	
  	</div>
  	<footer class="main-footer">
  		<div class="footer-container">
  			<ul class="company-info">
  				<li>(주)회사이름</li>
  				<li>사업자등록번호</li>
  				<li>주소</li>
  				<li>Email. ehgks3323@naver.com</li>
  			</ul>
  			<p>Copyright © 2022 Crop.All rights reserved</p>
  		</div>
  	</footer>
  	</div>
  </body>
  
  
  
 <script type="text/javascript">
 	var mainPage = {
 		onClickLogin : function() {
 			
 		},
 		onClickLogOut : function() {
 			
 		}
 			
 			
 	}
 
 </script> 
</html>
