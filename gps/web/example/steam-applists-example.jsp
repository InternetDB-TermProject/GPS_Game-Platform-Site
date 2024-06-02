<%@ page import="payload.dto.SteamAppListResponse" %>
<%@ page import="api.SteamAPI" %>
<%@ page import="payload.dto.AppPreviewDTO" %>
<%@ page import="payload.dto.AppPreviewsDTO" %>
<%@ page import="repository.SteamRepository" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>API Data</title>
</head>
<body>
<h1>API Data</h1>
<%
    //게임 id랑 이름 불러오기.. 사진도 포함된거 하나 만들어야겠네
    List<AppPreviewDTO> apps = SteamRepository.getAppList().getApps();
    for(AppPreviewDTO d : apps){
        out.println(d.getAppid()+" : "+d.getName()+"<br>");
    }
%>
</body>
</html>
