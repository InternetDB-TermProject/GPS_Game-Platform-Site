<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.net.URL" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="java.util.stream.Collectors" %>
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
    out.println(apiResponse);
%>
</body>
</html>
