<%--<%@page import="signUp.LoginCheckDto"%>--%>
<%--<%@page import="signUp.LoginCheckDao"%>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	// 회원가입 했을때 uri자원의 email 파라미터값을 변수로 받아와서 이메일 입력칸에 자동으로 value값 설정하기
	String email = request.getParameter("email");
	
%>	
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./login.css">
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<form action="./login-process.jsp" method="post">
	<div id="imgArea">
		<img src="../resources/image/Alogo.png" alt="이미지 없음" width="100" height="100">
		<div id="loginBack">
			<div id="login">
				<input type="text" placeholder="이메일 입력" id="putId" class="inputs" autocomplete="off" autofocus="on" name="lemail"><br>
				<input type="password" placeholder="비밀번호 입력" id="putPwd" class="inputs" autocomplete="off" name="lpwd"><br>
				<input type="submit" value="로그인" id="btnLogin"><br>
				<a href="../signup/signup.jsp"><input type="button" value="회원가입" id="btnSignUp"></a>
			</div>
		</div>
	</div>
</form>
</body>
</html>