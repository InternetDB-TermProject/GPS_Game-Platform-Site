<%@ page import="repository.UserRepository" %>
<%@ page import="payload.request.UserSignupReqeust" %><%--
  Created by IntelliJ IDEA.
  User: yiyop
  Date: 2024-06-14
  Time: 오전 1:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        UserSignupReqeust userSignupReqeust = new UserSignupReqeust(
                "email",
                "010-9999-9999",
                "nickname",
                "password",
                true,
                true
        );
        String message = UserRepository.signup(userSignupReqeust);

        out.println(message);
    %>
</body>
</html>
