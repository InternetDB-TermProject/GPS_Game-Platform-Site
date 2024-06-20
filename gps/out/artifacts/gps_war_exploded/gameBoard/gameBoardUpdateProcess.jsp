<%@ page import="payload.dto.GameBoardViewDTO" %>
<%@ page import="repository.GameBoardRepository" %>
<%@ page import="java.io.*, java.util.*, javax.servlet.*, javax.servlet.http.*, com.oreilly.servlet.MultipartRequest" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>게임 게시판 > 업데이트 처리</title>
</head>
<body>
<%
    try {
        String uploadPath = application.getRealPath("./uploadGames");
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs(); // 디렉토리가 존재하지 않으면 생성합니다.
        }

        MultipartRequest multi = new MultipartRequest(request, uploadPath, 10 * 1024 * 1024);
        String title = multi.getParameter("title");
        String text = multi.getParameter("text");
        String fileName = null;

        // 업로드된 파일의 이름을 가져옵니다.
        Enumeration files = multi.getFileNames();
        while (files.hasMoreElements()) {
            String name = (String) files.nextElement();
            fileName = multi.getFilesystemName(name);
        }

        System.out.println("Upload Path: " + uploadPath);
        System.out.println("Title: " + title);
//        System.out.println("Text: " + text);
        System.out.println("File: " + fileName);

        long gameId = Integer.parseInt(request.getParameter("gameId"));
        String writer = (String) session.getAttribute("username");

        GameBoardViewDTO game = new GameBoardViewDTO(gameId, title, fileName, writer, 0, null);
        GameBoardRepository.updateGame(game);

        out.println("<script type='text/javascript'>");
        out.println("alert('게시판을 수정했습니다..');");
        out.println("window.location.href = './gameBoard.jsp';");
        out.println("</script>");
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<script type='text/javascript'>");
        out.println("alert('수정하는 중에 오류가 발생했습니다.');");
        out.println("window.location.href = './gameBoard.jsp';");
        out.println("</script>");
    }
%>
</body>
</html>
