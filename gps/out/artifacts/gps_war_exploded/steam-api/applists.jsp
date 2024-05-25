<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.net.URL" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="java.util.stream.Collectors" %>
<%@ page import="org.json.simple.parser.JSONParser" %>
<%@ page import="org.json.simple.JSONArray" %>
<%@ page import="org.json.simple.parser.ParseException" %>
<!DOCTYPE html>
<html>
<head>
    <title>API Data</title>
</head>
<body>
<h1>API Data</h1>
<%
    String apiUrl = "https://api.steampowered.com/ISteamApps/GetAppList/v2";
    StringBuilder result = new StringBuilder();

    try {
        URL url = new URL(apiUrl);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");

        BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        String line;
        while ((line = rd.readLine()) != null) {
            result.append(line);
        }
        rd.close();
    } catch (Exception e) {
        e.printStackTrace();
        result.append("Error: ").append(e.getMessage());
    }

    String apiResponse = result.toString();

    JSONParser parser = new JSONParser();
    JSONObject jsonObject = null;
    try {
        jsonObject = (JSONObject) parser.parse(apiResponse);
    } catch (ParseException e) {
        e.printStackTrace();
    }

    // JSON 객체에 접근하여 필요한 데이터 가져오기
    JSONObject applist = (JSONObject) jsonObject.get("applist");
    JSONArray apps = (JSONArray) applist.get("apps");
    for (Object app : apps) {
        JSONObject appObj = (JSONObject) app;
        long appid = (long) appObj.get("appid");
        String name = (String) appObj.get("name");
        out.println("{appId : "+appid+", name : "+name+"}<br>");
    }
%>
</body>
</html>
