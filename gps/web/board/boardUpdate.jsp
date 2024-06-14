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
	
	<form action="./BUpdate.jsp?bnum=${dto.bnum}" method="post">
		<h1 class="ins" id="insInfo">글 수정하기</h1><h3 id="nickname" class="ins">닉네임 : <span id="vwName">${dto.bwriter}</span></h3>
		<div id="insertForm" class="ins">
			<input type="text" value="${dto.btitle}" name="btitle" class="input" id="intitle">
			<hr>
			<input type="text" value="${dto.btag}" name="btag" class="input" id="intag">
			<button type = "submit" class="btn" id="update">수정</button></a>
		</div>
	</form>
		<button onClick="location.href='./boardView.board?bnum=${dto.bnum}'" class="btn" id="cancel">취소</button>
		<button onClick="location.href='./bDelete.board?bnum=${dto.bnum}'" class="btn">삭제</button>
</body>
</html>