<%@ page import="payload.response.AppListResponse" %>
<%@ page import="api.SteamAPI" %>
<%@ page import="payload.dto.AppDTO" %>
<!DOCTYPE html>
<html>
<head>
    <title>API Data</title>
</head>
<body>
<h1>API Data</h1>
<%
    //DB
    AppListResponse appListResponse = SteamAPI.getAppList();
    AppDTO appDTO = appListResponse.getApplist().getApps().get(200);
    out.println(appDTO.getAppid()+" : "+appDTO.getName());
%>
</body>
</html>
