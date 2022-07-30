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
	<form id="signUpParam" onsubmit="joinPage.signUp();" method="POST">
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
				<input id="userEmail" type="text" name="userEmail" placeholder="이메일">
				<label for="userEmail">이메일</label>
			</div>
			<div class="input-box">
				<input id="userPhNum" type="text" name="userPhNum" placeholder="핸드폰 번호">
				<label for="userPhNum">핸드폰 번호</label>
			</div>
			<div class="input-box">
				<input id="userPostCode" type="text" name="userPostCode" placeholder="우편번호" onclick="joinPage.execDaumPostcode();">
				<label for="userPostCode">우편번호</label>
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
	
	//우편번호 찾기 화면을 넣을 element
	var element_layer = document.getElementById('layer');
	
	function closeDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_layer.style.display = 'none';
    }
	

	
	
	
	var joinPage = {
		
		
		execDaumPostcode : function() {
			// 우편번호 찾기 api 실행되는곳
			
			
			
			new daum.Postcode({
	            oncomplete: function(data) {
	                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수

	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }

	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    //document.getElementById("sample2_extraAddress").value = extraAddr;
	                
	                } else {
	                    //document.getElementById("sample2_extraAddress").value = '';
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('userPostCode').value = data.zonecode;
	                document.getElementById("userAddr").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("userAddrDetail").focus();

	                // iframe을 넣은 element를 안보이게 한다.
	                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
	                element_layer.style.display = 'none';
	            },
	            width : '100%',
	            height : '100%',
	            maxSuggestItems : 5
	        }).embed(element_layer);

	        // iframe을 넣은 element를 보이게 한다.
	        element_layer.style.display = 'block';

	        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
	        joinPage.initLayerPosition();
		}, 
		initLayerPosition : function() {
			var width = 300; //우편번호서비스가 들어갈 element의 width
	        var height = 400; //우편번호서비스가 들어갈 element의 height
	        var borderWidth = 5; //샘플에서 사용하는 border의 두께
			
	        // 위에서 선언한 값들을 실제 element에 넣는다.
	        element_layer.style.width = width + 'px';
	        element_layer.style.height = height + 'px';
	        element_layer.style.border = borderWidth + 'px solid';
	        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
	        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
	        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
		},
		signUp : function() {
			var param = {};
			
			
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