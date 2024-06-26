package repository;

import api.SteamAPI;
import payload.dto.*;
import payload.response.AppListResponse;
import util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SteamRepository {
    public static void updateData() throws SQLException {
        Connection conn = DBUtil.getConnection();

        SteamAppsResponse appListResponse = SteamAPI.getAppListFromSteam();
        AppsDTO appsDTO = appListResponse.getApplist();
        List<AppDTO> appsDTOList = appsDTO.getApps();
        boolean base = false;
        for (AppDTO appDTO : appsDTOList) {
            if (appDTO.getAppid() == 2216261L) {
                base = true;
                continue;
            }
            if (!base) {
                continue;
            }
            Long appId = appDTO.getAppid();
            System.out.println(appId);
            AppDetailDTO appDetailDTO = null;
            try {
                appDetailDTO = SteamAPI.getAppDetailFromSteam(appId);
            } catch (Exception e) {
                e.printStackTrace();
                continue;
            }

            if (appDetailDTO == null) continue;

            String query = "insert into steam_games(steam_appId, name, type, required_age, detailed_description, header_image, pc_requirements, price, recommendations, release_date, website) " +
                    "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = conn.prepareStatement(query);

            preparedStatement.setLong(1, appDetailDTO.getSteam_appId());
            preparedStatement.setString(2, appDetailDTO.getName());
            preparedStatement.setString(3, appDetailDTO.getType());
            preparedStatement.setLong(4, appDetailDTO.getRequired_age());
            preparedStatement.setString(5, appDetailDTO.getDetailed_description());
            preparedStatement.setString(6, appDetailDTO.getHeader_image());
            preparedStatement.setString(7, appDetailDTO.getPc_requirements());
            preparedStatement.setLong(8, appDetailDTO.getPrice());
            preparedStatement.setLong(9, appDetailDTO.getRecommendations());
            preparedStatement.setString(10, appDetailDTO.getRelease_date());
            preparedStatement.setString(11, appDetailDTO.getWebsite());
            preparedStatement.executeUpdate();
        }
    }

    public static AppListResponse getAppList() throws SQLException {
        Connection conn = DBUtil.getConnection();
        String query = "select steam_appid, name, header_image, recommendations, website from steam_games where type=? order by recommendations desc";
        PreparedStatement preparedStatement = conn.prepareStatement(query);

        preparedStatement.setString(1, "game");
        ResultSet rs =preparedStatement.executeQuery();

        List<AppPreviewDTO> appPreviewDTOList = new ArrayList<>();
        while (rs.next()) {
            Long steam_appid = rs.getLong("steam_appid");
            String name = rs.getString("name");
            String header_image = rs.getString("header_image");
            Long recommendations = rs.getLong("recommendations");
            String website = rs.getString("website");
            appPreviewDTOList.add(new AppPreviewDTO(steam_appid, name, header_image, recommendations, website));
        }

        return new AppListResponse(appPreviewDTOList);
    }

    public static AppDetailDTO getAppDetail(Long appId) throws SQLException{
        Connection conn = DBUtil.getConnection();
        String query = "select * from steam_games where steam_appid=?";
        PreparedStatement preparedStatement = conn.prepareStatement(query);

        preparedStatement.setLong(1, appId);
        ResultSet rs =preparedStatement.executeQuery();

        AppDetailDTO result = null;
        while (rs.next()) {
            Long steam_appId = rs.getLong("steam_appid");
            String name = rs.getString("name");
            String type = rs.getString("type");
            Long required_age = rs.getLong("required_age");
            String detailed_description = rs.getString("detailed_description");
            String header_image = rs.getString("header_image");
            String pc_requirements = rs.getString("pc_requirements");
            Long price = rs.getLong("price");
            Long recommendations = rs.getLong("recommendations");
            String release_date = rs.getString("release_date");
            String website = rs.getString("website");

            result = new AppDetailDTO(steam_appId, name, type, required_age, detailed_description, header_image,
                    pc_requirements, price, recommendations, release_date, website);
        }

        return result;
    }
}
