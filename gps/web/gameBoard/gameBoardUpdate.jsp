<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../resources/css/header.css">
<link rel="stylesheet" href="../resources/css/boardForm.css">
<meta charset="EUC-KR">
<title>Board Write</title>
</head>
<body>
	<div id="header">
	  <a href="../main/main.jsp"><img src="../resources/image/Alogo.png" width=70px height=70px></a><h2>| Board</h2>
	</div>
	
	<form action="./gameBUpdate.jsp?mnum=${dto.mnum}" method="post">
		<h1 class="ins" id="insInfo">글 수정하기</h1><h3 id="nickname" class="ins">닉네임 : <span id="vwName">${dto.mwriter}</span></h3>
		<div id="insertForm" class="ins">
			<input type="text" value="${dto.mtitle}" name="mtitle" class="input" id="intitle">
			<hr>
			<input type="text" value="${dto.mtag}" name="btag" class="input" id="intag">
			<input type="file" class="form-control" id="filename" name="filename" value="game/${dto.mfile }">
			<button type = "submit" class="btn" id="update">수정</button></a>
		</div>
	</form>
	
	<button onClick="location.href='./gameBoardView.jsp?mnum=${dto.mnum}'" class="btn" id="cancel">취소</button>
</body>
</html>