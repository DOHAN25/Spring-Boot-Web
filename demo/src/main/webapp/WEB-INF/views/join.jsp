<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join</title>
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
                background-color: #333333;
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
</style>
</head>
<body>
	<form action="" method="POST">
		<div id="main-container">
			<div class="input-box">
				<input id="userName" type="text" name="userName" placeholder="이름">
				<label for="userName">이름</label>
			</div>
			<div class="input-box">
                <input id="userId" type="text" name="userId" placeholder="아이디">
                <label for="userId">아이디</label>
            </div>
            <div class="input-box">
                <input id="password" type="password" name="password" placeholder="비밀번호">
                <label for="password">비밀번호</label>
            </div>
          	<div class="input-box">
          		<input id="passwordConfirm" type="password" name="passwordConfirm" palceholder="비밀번호 확인">
          		<label for="passwordConfirm">비밀번호 확인</label>
          	</div>
          	<div>
          	</div>
            <input type="submit" value="회원가입하기">
            <button onclick="goRegist();" style="display:none;">회원가입</button>
		</div>
	</form>

</body>
</html>