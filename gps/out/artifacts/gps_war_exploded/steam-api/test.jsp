<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="payload.response.AppListResponse" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="java.net.URL" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="org.json.simple.parser.JSONParser" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="payload.dto.AppDetailDTO" %>
<%@ page import="api.SteamAPI" %><%--
  Created by IntelliJ IDEA.
  User: yiyop
  Date: 2024-05-27
  Time: 오후 2:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    //DB에서 데이터 정보 가져오고 AppDetailDTO로 변환
    AppDetailDTO appDetailDTO = SteamAPI.getAppDetail(10L);
  %>
  </body>
</html>
