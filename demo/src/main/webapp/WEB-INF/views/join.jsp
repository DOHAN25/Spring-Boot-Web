<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- 도로명주소api daum -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
#main-container {
	width: 868px;
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
.input-box:nth-child(5) {
	margin-top: 20px;
	margin-bottom : 20px;
}
.input-box:nth-child(6) {
	display : inline-block;
	width: 50%;
}
#post-area {
	float:left;
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
            
</style>
</head>
<body>
	<form action="" method="POST">
		<div id="main-container">
			<div class="input-box">
                <input id="userId" type="text" name="userId" placeholder="아이디">
                <label for="userId">아이디</label>
            </div>
            <div class="input-box">
                <input id="password" type="password" name="password" placeholder="비밀번호">
                <label for="password">비밀번호</label>
            </div>
          	<div class="input-box">
          		<input id="passwordConfirm" type="password" name="passwordConfirm" placeholder="비밀번호 확인">
          		<label for="passwordConfirm">비밀번호 확인</label>
          	</div>
          	<div class="input-box">
				<input id="userName" type="text" name="userName" placeholder="이름">
				<label for="userName">이름</label>
			</div>
			<div class="input-box">
				<span><input id="maleCheck" type="checkbox" name="userSex" value="M">남</span>
				<span><input id="femaleCheck" type="checkbox" name="userSex" value="F">여</span>
			</div>
			<div class="input-box">
				<input id="userPostNm" type="text" name="userPostNm" placeholder="우편번호" onclick="joinPage.execDaumPostcode();">
				<label for="userPostNm">우편번호</label>
			</div>
			<div class="input-box">
				<input id="userAddr" type="text" name="userAddr" placeholder="주소">
				<label for="userAddr">주소</label>
			</div>
			<div class="input-box">
				<input id="userAddrDetail" type="text" name="userAddrDetail" placeholder="상세주소">
				<label for="userAddrDetail">상세주소</label>
			</div>
            <input type="submit" value="회원가입하기">
            <button onclick="goRegist();" style="display:none;">회원가입</button>
		</div>
	</form>
	
	<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
		<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
	</div>
<script type="text/javascript">
	$(document).ready(function(){
		
	});
	
	var joinPage = {
		execDaumPostcode : function() {
			// 우편번호 찾기 api 실행되는곳
			
			//우편번호 찾기 화면을 넣을 element
			var element_layer = document.getElementById('layer');
		}
		
	}
	
	
	
	$("#maleCheck").click(function() {
		$("#femaleCheck").prop("checked", false);
	});
	$("#femaleCheck").click(function() {
		$("#maleCheck").prop("checked", false);
	});
</script>
</body>
</html>