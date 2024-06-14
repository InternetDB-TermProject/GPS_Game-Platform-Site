<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
    String email = (String)session.getAttribute("email");
	int category = Integer.parseInt(request.getParameter("category"));  
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
	<form action="./BInsert.jsp" method="post">
		<h1 class="ins" id="insInfo"><% //num 유형 번호에 따른 h1 표시
					if(category == 1) out.println("QnA");
		    		if(category == 2) out.println("자유"); %> 게시판 > 글쓰기</h1><h3 id="nickname" class="ins">닉네임 : <span id="vwName"><%= email %></span></h3>
		<div id="insertForm" class="ins">
			<input type="text" placeholder="제목" name="btitle" class="input" id="intitle">
			<hr>
			<textarea rows="10" cols="174" name="btag" id="btag" placeholder="내용" id="intag" ></textarea>
			<button type = "submit" class="btn" id="write">작성</button></a>
			<button class="btn" id="cancel">취소</button>
		</div>
	</form>
</body>
</html>