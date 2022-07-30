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
		ul li  {
			list-style-type : none;
			float : left;
			outline : 1px solid #bcbcbc;
			margin-left : 20px;
		}
		.mem-info > li {
			font-size : 12px;
		}
		.right-mu {
			padding : 0px 0px 0px 0px;
			margin : 0px 0px 0px 0px;
		}
		.main-container {
			width: 1024px;
			margin : 10px auto;
			padding : 20px;
			border : 1px solid #bcbcbc;
		}
		.main-serviceArea {
			padding : 0px 0px 0px 0px;
			margin : 0px 0px 0px 0px;
			border : 1px solid #bcbcbc;
			display : inline-block;
		}
		.right-mu {
			display : inline-block;
			float: right;
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
		#mainContentsArea {
			padding : 20px;
			margin-bottom : 20px;
			border : 1px solid #bcbcbc;
		}
		.main-footer {
			padding : 20px;
			border : 1px solid #bcbcbc;
		}
		@media (max-width : 480px) {
			body {
				width : auto;
			}
		}
	</style>
  </head>
  <body>
 	<div class="main-container">
  	<header class="main-header">
  		Header 영역
  		<div class="main-serviceArea">
 			<div class="right-mu">
  				<ul class="mem-info">
  					<li><span></span>{user.name}(userRoleNm)</li>
  					<li><a href="">마이페이지</a></li>
  					<li><a href="mainPage.onClickLogout();">로그아웃</a></li>
  					<li><a href="login.page">로그인</a><li>
  					<li><a href="join.page">회원가입</a></li>
  				</ul>
  			</div>
 		</div>
  		
  	</header>
  	<div class="main-nav">
  		
  		
  	</div>
  	
  	
  	<div id="mainContentsArea">
  		main content area
  	</div>
  	
  	
  	<footer class="main-footer">
  		<div class="footer-container">
  			<ul class="company-info">
  				<li>(주)회사이름</li>
  				<li>사업자등록번호</li>
  				<li>주소</li>
  				<li>Email. ehgks3323@naver.com</li>
  				<li>Copyright © 2022 Crop.All rights reserved</li>
  			</ul>
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
