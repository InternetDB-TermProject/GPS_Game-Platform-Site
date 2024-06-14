<%@ page import="repository.UserRepository" %>
<%@ page import="payload.request.UserLoginRequest" %>
<%@ page import="payload.response.UserLoginResponse" %><%--
  Created by IntelliJ IDEA.
  User: yiyop
  Date: 2024-06-14
  Time: 오전 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        UserLoginRequest userLoginRequest = new UserLoginRequest("123@email.com", "password");
        UserLoginResponse result = UserRepository.login(userLoginRequest);

        //일치하는 계정이 없으면 isSuccess=false, nickname에 '해당하는 계정이 없습니다.' 반환.
        //계정이 존재하면 isSuccess=true, nickname 반환
        out.println(result.isSuccess());
        out.println(result.getNickname());
    %>
</body>
</html>
