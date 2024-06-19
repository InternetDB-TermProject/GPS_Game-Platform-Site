<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
	String email = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../resources/css/header.css">
<link rel="stylesheet" href="../resources/css/boardForm.css">
<meta charset="EUC-KR">
<title>게시판 작성</title>
</head>
<body>
	<div id="header">
	  <a href="../main/main.jsp"><img src="../resources/image/Alogo.png" width=70px height=70px></a><h2>| Board</h2>
	</div>
	<form action="./gameBoardWriteProcess.jsp" method="post" enctype = "multipart/form-data">
		<h1 class="ins" id="insInfo">게임 게시판 > 글쓰기</h1><h3 id="nickname" class="ins">닉네임 : <span id="vwName"><%= email %></span></h3>
		<div id="insertForm" class="ins">
			<input type="text" placeholder="제목" name="title" id="title" class="input" required>
			<hr>
<%--			<input type="text" placeholder="내용" name="mtag" class="input" id="intag">--%>
			<input type="file" class="form-control" id="text" name="text" multiple required>
			<button type = "submit" class="btn" id="write">작성</button></a>
			<button class="btn" id="cancel">취소</button>
		</div>
	</form>
</body>
</html>