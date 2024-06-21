<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="repository.GameBoardRepository" %>
<%@ page import="payload.dto.GameBoardDetailDTO" %>

<%
	long gameId = Integer.parseInt(request.getParameter("gameId"));

	GameBoardDetailDTO apps = GameBoardRepository.getAppDetail(gameId);

%>

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
	
	<form action="./gameBoardUpdateProcess.jsp?gameId=<%=apps.getGameId()%>" method="post" enctype="multipart/form-data">>
		<h1 class="ins" id="insInfo">글 수정하기</h1><h3 id="nickname" class="ins">닉네임 : <span id="vwName"><%=apps.getWriter()%></span></h3>
		<div id="insertForm" class="ins">
			<h2> 제목 </h2>
			<input type="text" value="<%=apps.getTitle()%>" name="title" class="input" id="title">
			<hr>
			<b> 현재 파일 : <%=apps.getText()%></b>
			<input type="file" class="form-control" id="text" name="text"  multiple required>
			<button type = "submit" class="btn" id="update">수정</button></a>
		</div>
	</form>
	
	<button onClick="location.href='./gameBoardView.jsp?gameId=<%=apps.getGameId()%>'" class="btn" id="cancel">취소</button>
</body>
</html>