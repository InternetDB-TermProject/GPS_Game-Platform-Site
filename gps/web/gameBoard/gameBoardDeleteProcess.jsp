<%@ page import="repository.GameBoardRepository" %>
<%@ page import="payload.response.GameBoardViewResponse" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>게임 게시판 > 게시글 삭제 처리</title>
</head>
<body>
<%
    long gameId = Integer.parseInt(request.getParameter("gameId"));

    GameBoardViewResponse result = GameBoardRepository.deleteGame(gameId);

    //일치하는 계정이 없으면 isSuccess=false, nickname에 '해당하는 계정이 없습니다.' 반환.
    //계정이 존재하면 isSuccess=true, nickname 반환

    if(result.isSuccess()){
        out.println("<script type='text/javascript'>");
        out.println("alert('게시판을 삭제했습니다.');");
        out.println("window.location.href = './gameBoard.jsp';");
        out.println("</script>");
    }else{
        out.println("<script type='text/javascript'>");
        out.println("alert('수정 실패했습니다.');");
        out.println("window.location.href = './gameBoardView.jsp?gameId=" + gameId +"';");
        out.println("</script>");
    }
%>
</body>
</html>
