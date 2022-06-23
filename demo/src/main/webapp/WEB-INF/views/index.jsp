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
		body {
			height: 100%;
		}
		#main-container {
			width : 1280px;
			height : 100%;
			margin : 10px auto;
			padding : 20px;
			border : 1px solid #bcbcbc;
			background-color : black;
			display : flex;
			justify-content : center;
			flex-direction : row;
			flex-wrap : wrap;
		}
		#main-header {
			width : 1280px;
			height: 100%;
  			display: flex;
  			align-items: center;
  			justify-content: space-between;
  			background-color : yellow;
		}
		#main-content {
			width : 1080px;
			padding : 20px;
			margin-bottom : 20px;
			float : none;
			border : 1px solid #bcbcbc;
			background-color : white;
			
		}
		#main-footer {
			width : 1100px;
			margin : 10px auto;
			padding : 20px;
			border : 1px solid #bcbcbc;
			display : block;
			background-color : pink;
		}
		
		@media (max-width: 480px) {
			#main-container {
				width : auto;
			}
			#main-content {
				float : none;
				width : auto;
			}
			#main-footer {
				width : auto;
			}
		}
		#menu-area {
			width : 100%;
			background-color : green;
		}
		#button-area {
			width : 100%;
			background-color : white;
		}
		
	</style>
  </head>
  <body>
  <div id="main-header">
  	<div id="menu-area">
  		<select>
  			<option>메뉴1</option>
  			<option>메뉴2</option>
  		</select>
  	</div>
  	<div id="button-area">
  		<button>로그인</button>
  		<button>회원가입</button>
  		<button>마이페이지</button>
  	</div>
  </div>
  	<div id="main-container">
  		<div id="main-content">
  					
  		</div>
  		<div id="main-footer">
  		
  		</div>
  	</div>
  </body>
</html>
