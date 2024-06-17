<!--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>-->
<%@ page import="payload.dto.SteamAppsResponse" %>
<%@ page import="api.SteamAPI" %>
<%@ page import="payload.dto.AppDTO" %>
<%@ page import="payload.dto.AppsDTO" %>
<%@ page import="repository.SteamRepository" %>
<%@ page import="java.util.List" %>
<%@ page import="payload.response.AppListResponse" %>
<%@ page import="payload.dto.AppPreviewDTO" %>
<!DOCTYPE html>
<html>
<head>
    <title>API Data</title>
</head>
<body>
<h1>API Data</h1>
<%
    //게임 id랑 이름 불러오기.. 사진도 포함된거 하나 만들어야겠네
    List<AppPreviewDTO> apps = SteamRepository.getAppList().getAppPreviewDTOList();
    for(AppPreviewDTO d : apps){
        out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ<br>");
        out.println(d.getSteam_appid()+"<br>");
        out.println(d.getHeader_iamge()+"<br>");
        out.println(d.getName()+"<br>");
        out.println(d.getPrice()+"<br>");
    }
%>
</body>
</html>
