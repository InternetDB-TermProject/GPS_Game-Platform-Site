<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String jdbcUrl = "jdbc:mariadb://svc.sel5.cloudtype.app:31866/gps";
    String dbId = "root";
    String dbPwd = "ggoomeme0406";

    try{
        Class.forName("org.mariadb.jdbc.Driver");
        Connection connection = DriverManager.getConnection(jdbcUrl, dbId, dbPwd);
        out.println("MySQL 연결 성공");
    } catch (Exception e){
        out.println("연결 오류입니다. 오류 메시지 : " + e.getMessage());
    }
%>

</body>
</html>
