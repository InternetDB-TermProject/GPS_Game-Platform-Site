<%@ page import="payload.dto.SteamAppListResponse" %>
<%@ page import="api.SteamAPI" %>
<%@ page import="payload.dto.AppPreviewDTO" %>
<%@ page import="payload.dto.AppPreviewsDTO" %>
<%@ page import="repository.SteamRepository" %>
<%@ page import="java.util.List" %>
<%@ page import="payload.dto.AppDetailDTO" %>
<!DOCTYPE html>
<html>
<head>
  <title>API Data</title>
</head>
<body>
<h1>API Data</h1>
<%
  //게임 디테일 불러오기 id값은 리스트에서 넘겨주는 식으로 만들어야 할듯
  AppDetailDTO appDetail = SteamRepository.getAppDetail(1820380L);
  out.println(appDetail.getSteam_appId()+"<br>");
  out.println(appDetail.getName()+"<br>");
  out.println(appDetail.getType()+"<br>");
  out.println(appDetail.getHeader_image()+"<br>");
  out.println(appDetail.getDetailed_description()+"<br>");
  out.println(appDetail.getRequired_age()+"<br>");
  out.println(appDetail.getRecommandations()+"<br>");
  out.println(appDetail.getPc_requirements()+"<br>");
  out.println(appDetail.getPrice()+"<br>");
  out.println(appDetail.getRelease_date()+"<br>");
%>
</body>
</html>
