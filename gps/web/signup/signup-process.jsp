<%@ page import="payload.request.UserSignupReqeust" %>
<%@ page import="repository.UserRepository" %><%--
  Created by IntelliJ IDEA.
  User: yiyop
  Date: 2024-06-17
  Time: 오후 7:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String email = request.getParameter("email");
    String phone = request.getParameter("infor");
    String name = request.getParameter("uname");
    String password = request.getParameter("pwd");

    UserSignupReqeust userSignupReqeust = new UserSignupReqeust(
            email,
            phone,
            name,
            password,
            true,
            true
    );

    String message = UserRepository.signup(userSignupReqeust);

    if (message.equals("회원가입에 성공하셨습니다.")) {
        // 데이터가 정상적으로 전달된 경우
        out.println("<script type='text/javascript'>");
        out.println("alert('회원가입에 성공하셨습니다.');");
        out.println("window.location.href = '/gps_war_exploded/login/login.jsp';");
        out.println("</script>");

    } else {
        // 데이터가 없는 경우
        out.println("<script type='text/javascript'>");
        out.println("alert('"+message+"');");
        out.println("window.location.href = './signup.jsp';");
        out.println("</script>");
    }


%>
</body>
</html>
