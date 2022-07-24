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
  		header 영역입니다. 이미지 나중에 삽
  	</header>
  	<nav class="main-nav">
  		<button id="login" onclick="location.href='login'">로그인</button>
  	</nav>
  	<div id="">
  	
  	</div>
  	<footer class="main-footer">
  	</footer>
  	</div>
  </body>
</html>
