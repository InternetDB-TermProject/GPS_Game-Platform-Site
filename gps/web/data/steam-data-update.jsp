<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="util.DBUtil" %>
<%@ page import="repository.SteamRepository" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //이 페이지는 접속하지 말기 데이터 갱신용인데 한 번에 많은 데이터 수집이 불가능해서 끊어 치는 중
    SteamRepository.updateData();
%>

</body>
</html>
