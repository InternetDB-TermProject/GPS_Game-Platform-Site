package api;

import com.google.gson.Gson;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import payload.dto.AppDTO;
import payload.dto.AppDetailDTO;
import payload.dto.AppsDTO;
import payload.response.AppListResponse;
import util.DBUtil;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class SteamAPI {
    public static AppListResponse getAppList(){
        String apiUrl = "https://api.steampowered.com/ISteamApps/GetAppList/v2";
        StringBuilder result = new StringBuilder();

        try {
            URL url = new URL(apiUrl);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");

            BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream(),"UTF-8"));
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
        Gson gson = new Gson();
        AppListResponse appListResponse = gson.fromJson(apiResponse, AppListResponse.class);
        return appListResponse;
    }

    public static AppDetailDTO getAppDetail(Long appId) throws ParseException {
        String apiUrl = "https://store.steampowered.com/api/appdetails?appids="+appId+"&l=korean";
        StringBuilder result = new StringBuilder();

        try {
            URL url = new URL(apiUrl);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");

            BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream(),"UTF-8"));
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

        //JSON으로 변환해서 data부분 빼오기
        JSONParser parser = new JSONParser();
        JSONObject jsonObject = (JSONObject) parser.parse(apiResponse);
        JSONObject loadApp = (JSONObject) jsonObject.get(String.valueOf(appId));
        JSONObject dataJsonObject = (JSONObject) loadApp.get("data");

        if(dataJsonObject==null) {
            return null;
        }
        else{
            AppDetailDTO appDetailDTO = new AppDetailDTO(appId, dataJsonObject);
            return appDetailDTO;
        }
    }


}
