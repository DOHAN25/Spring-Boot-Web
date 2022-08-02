<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<style>
#main-container {
	width: 1024px;
	margin : 10px auto;
	padding : 20px;
	border : 1px solid #bcbcbc;
}
.input-box{
  position:relative;
  margin:10px 0;
}
.input-box > input{
  background:transparent;
  border:none;
  border-bottom: solid 1px #ccc;
  padding:20px 0px 5px 0px;
  font-size:14pt;
  width:100%;
}
input::placeholder{
	color:transparent;
}
input:placeholder-shown + label{
  color:#aaa;
  font-size:14pt;
  top:15px;
}
input:focus + label, label{
  color:#8aa1a1;
  font-size:10pt;
  pointer-events: none;
  position: absolute;
  left:0px;
  top:0px;
  transition: all 0.2s ease ;
  -webkit-transition: all 0.2s ease;
  -moz-transition: all 0.2s ease;
  -o-transition: all 0.2s ease;
}
input:focus, input:not(:placeholder-shown){
  border-bottom: solid 1px #8aa1a1;
  outline:none;
}
input[type=submit]{
                background-color: #8aa1a1;
                border:none;
                color:white;
                border-radius: 5px;
                width:100%;
                height:35px;
                font-size: 14pt;
                margin-top:100px;
            }
            #findPw{
                text-align: right;
                font-size:12pt;
                color:rgb(164, 164, 164);
                margin:10px 0px;
            }
            @media (max-width : 480px) {
				body {
					width : auto;
				}
			}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	function login() {
		var userId = $("#userId").val().trim();
		var password = $("#userPw").val().trim();
		
		var userInfo = {
				"userId" : userId,
				"userPw" : password
		}
		
		$.ajax({
			type:"post",
			url:"login.do",
			data: JSON.stringify(userInfo),
			contentType: "application/json",
			dataType: "json",
			success : function(data) {
				alert("환영합니다");
			},
			error : function() {
				alert("통신실패");
			}
		})
	}
</script>
</head>
<body>

	<form id="userInfoParam" onsubmit="login();" method="POST">
		<div id="main-container">
			 <div class="input-box">
                <input id="userId" type="text" name="userId" placeholder="아이디">
                <label for="userId">아이디</label>
            </div>

            <div class="input-box">
                <input id="userPw" type="password" name="userPw" placeholder="비밀번호">
                <label for="userPw">비밀번호</label>
            </div>
            <div id="findPw">비밀번호 찾기</div>
            <input type="submit" value="로그인">
            <button onclick="goRegist();" style="display:none;">회원가입</button>
		</div>
	</form>
	
</body>
</html>