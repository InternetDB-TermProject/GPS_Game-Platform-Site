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
        //email 중복검사 있어서 바꿔줘야 회원가입 성공함.
        UserSignupReqeust userSignupReqeust = new UserSignupReqeust(
                "email",
                "010-9999-9999",
                "nickname",
                "password",
                true, //이용 약관. false면 회원가입 실패
                true  //구독. db에 저장하지는 않음.
        );

        //message가 정확히 '회원가입에 성공하셨습니다.'가 아니라 다른거면 회원가입 실패한거임
        //alert나 예외처리로 쓰면될듯
        String message = UserRepository.signup(userSignupReqeust);

        out.println(message);
    %>
</body>
</html>
