<%@ page import="repository.UserRepository" %>
<%@ page import="payload.request.UserLoginRequest" %>
<%@ page import="payload.response.UserLoginResponse" %>
<%@ page import="payload.dto.GameBoardViewDTO" %>
<%@ page import="repository.GameBoardRepository" %>
<
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String title = request.getParameter("mtitle");
    String mtag = request.getParameter("mtag");
    String filename = request.getParameter("filename");

    Object username = session.getAttribute("username");
    GameBoardViewDTO game = new GameBoardViewDTO(null, title, mtag, username, 0, null);
    GameBoardRepository.insertGame(game);

    //일치하는 계정이 없으면 isSuccess=false, nickname에 '해당하는 계정이 없습니다.' 반환.
    //계정이 존재하면 isSuccess=true, nickname 반환
    out.println("<script type='text/javascript'>");
    out.println("alert('게임을 저장하였습니다.');");
    out.println("window.location.href = '../signup/signup.jsp';");
    out.println("</script>");
%>

</body>
</html>
