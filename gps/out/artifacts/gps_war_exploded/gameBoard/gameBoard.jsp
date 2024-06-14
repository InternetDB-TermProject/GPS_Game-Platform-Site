<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>  
<%--<%@page import="board.BoardDto"%>--%>
<%--<%@page import="board.BoardDao"%>--%>
<%
	//세션으로 로그인된 회원 정보 가져오기
    String email = (String)session.getAttribute("email"); 

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<link rel="stylesheet" href="../resources/css/header.css">
<link rel="stylesheet" href="../resources/css/board.css"><title>게임 게시판</title>
</head>
<body>
	<div id="header">
	  <a href="../main/main.jsp"><img src="../resources/image/Alogo.png" width=70px height=70px></a><h2>| Board</h2>
	</div>
	<div class="container">
	<table class="table table-hover">
		<caption id="bgcaption"><h1>게임 게시판</h1></caption>
		<caption id="smcaption"><a href="./gameBoardWrite.jsp"><button id="btnwrite">게시글 작성</button></a></caption>
<%--		<caption>--%>
<%--			<div class="d-flex justify-content-center">--%>
<%--				<nav aria-label="Page navigation example">--%>
<%--				  <ul class="pagination">--%>
<%--				    <c:if test="${startNum <= 1 }">--%>
<%--					  <li class="page-item"><a class="page-link" style = "color:grey" onclick = "alert('첫 페이지입니다.')">Previous</a></li>--%>
<%--					</c:if>--%>
<%--					<c:if test="${startNum > 1 }">--%>
<%--					  <li class="page-item"><a class="page-link" href="mBoard.make?p=${startNum - 1}">Previous</a></li>--%>
<%--					</c:if>--%>
<%--					<c:forEach var = "i" begin="0" end="${numOfPages-1}" step="1">--%>
<%--						<c:if test="${startNum+i <= lastNum }">--%>
<%--							<c:if test = "${startNum+i == p}">--%>
<%--						  	<li class="page-item active"><a class="page-link" href="mBoard.make?p=${startNum + i}">${startNum + i}</a></li>	--%>
<%--							</c:if>--%>
<%--							<c:if test = "${startNum+i != p}">--%>
<%--						  	<li class="page-item"><a class="page-link" href="mBoard.make?p=${startNum + i}">${startNum + i}</a></li>	--%>
<%--							</c:if>--%>
<%--						</c:if>--%>
<%--					</c:forEach>--%>
<%--					<c:if test="${startNum + numOfPages > lastNum }">--%>
<%--					  <li class="page-item"><a class="page-link" style = "color:grey" onclick = "alert('다음 페이지가 없습니다.')">Next</a></li>--%>
<%--					</c:if>--%>
<%--					<c:if test="${startNum + numOfPages <= lastNum }">--%>
<%--					  <li class="page-item"><a class="page-link" href="mBoard.make?p=${startNum+numOfPages}">Next</a></li>--%>
<%--					</c:if>--%>
<%--				  </ul>--%>
<%--				</nav>--%>
<%--			</div>--%>
<%--		</caption>--%>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var='dto' items='${dtos}'>
				<tr onClick="location.href='./gameBoardView.make?mnum=${dto.mnum}'">
					<td>${dto.mnum}</td>
					<td>${dto.mtitle}</td>
					<td>${dto.mwriter}</td>
					<td><fmt:formatDate value="${dto.mdate}"/></td>
					<td>${dto.mview}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>