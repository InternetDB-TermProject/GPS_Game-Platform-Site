<%@ page import="repository.UserRepository" %>
<%@ page import="payload.request.UserLoginRequest" %>
<%@ page import="payload.response.UserLoginResponse" %><%--
  Created by IntelliJ IDEA.
  User: yiyop
  Date: 2024-06-17
  Time: 오후 8:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String email = request.getParameter("lemail");
  String pwd = request.getParameter("lpwd");

  UserLoginRequest userLoginRequest = new UserLoginRequest(email, pwd);
  UserLoginResponse result = UserRepository.login(userLoginRequest);

  //일치하는 계정이 없으면 isSuccess=false, nickname에 '해당하는 계정이 없습니다.' 반환.
  //계정이 존재하면 isSuccess=true, nickname 반환

  if(result.isSuccess()){
    session.setAttribute("username", result.getNickname());
    response.sendRedirect("/gps_war_exploded/main/main.jsp");
  }else{
    out.println("<script type='text/javascript'>");
    out.println("alert('"+ result.getNickname()+"');");
    out.println("window.location.href = '../signup/signup.jsp';");
    out.println("</script>");
  }
%>

</body>
</html>
