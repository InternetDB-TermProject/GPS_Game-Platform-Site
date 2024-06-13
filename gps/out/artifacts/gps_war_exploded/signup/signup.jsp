<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link
    rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
	<link rel="stylesheet" href="resources/css/signup.css">
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<form action="insert.sign" method="post">
	<div id="signupArea">
		<div id="logoHeader">
			<div id="logo">
			<img src="resources/css/image/Alogo.png" alt="이미지 없음" width="100" height="100"><h1>GPS</h1>
			</div>
		</div>
		<div id="insertInfo">
			<input type="email" placeholder="이메일" autofocus="on" id="inputEmail" class="input" autocomplete="off" name="email"><br>
			<input type="text" placeholder="전화번호" id="inputPhone" class="input" autocomplete="off" name="infor"><br>
			<input type="text" placeholder="닉네임" class="input" id="userName" name="uname" autocomplete="off"><br>
			<input type="password" placeholder="비밀번호" id="inputPwd" class="input" name="pwd"><br>
			<input type="checkbox" class="inputCheck">GPS의 이용 약관 및 판매 약관을 이해했으며, 개인정보처리방침에 동의합니다.<br>
			<input type="checkbox" class="inputCheck">GPS 타이틀 관련 제안 및 정보가 포함된 독점 이메일 뉴스레터를 구독합니다. 구독은 언제든지 취소할 수 있습니다.<br><br><br>
			<input type="submit" id="btnTrans" value="가입하기" onclick=alert("가입완료")>
		</div>
	</div>
</form>
</body>
</html>