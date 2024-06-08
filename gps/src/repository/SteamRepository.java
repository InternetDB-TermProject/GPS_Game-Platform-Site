package repository;

import api.SteamAPI;
import payload.dto.AppPreviewDTO;
import payload.dto.AppDetailDTO;
import payload.dto.AppPreviewsDTO;
import payload.dto.SteamAppListResponse;
import util.DBUtil;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SteamRepository {
    public static void updateData() throws SQLException {
        Connection conn = DBUtil.getConnection();

        SteamAppListResponse appListResponse = SteamAPI.getAppListFromSteam();
        AppPreviewsDTO appsDTO = appListResponse.getApplist();
        List<AppPreviewDTO> appsDTOList = appsDTO.getApps();
        boolean base = false;
        for (AppPreviewDTO appDTO : appsDTOList) {
            if (appDTO.getAppid() >= 1263200) {
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

            String query = "insert into steam_games(steam_appId, name, type, required_age, detailed_description, header_image, pc_requirements, price, recommandations, release_date) " +
                    "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = conn.prepareStatement(query);

            preparedStatement.setLong(1, appDetailDTO.getSteam_appId());
            preparedStatement.setString(2, appDetailDTO.getName());
            preparedStatement.setString(3, appDetailDTO.getType());
            preparedStatement.setLong(4, appDetailDTO.getRequired_age());
            preparedStatement.setString(5, appDetailDTO.getDetailed_description());
            preparedStatement.setString(6, appDetailDTO.getHeader_image());
            preparedStatement.setString(7, appDetailDTO.getPc_requirements());
            preparedStatement.setLong(8, appDetailDTO.getPrice());
            preparedStatement.setLong(9, appDetailDTO.getRecommandations());
            preparedStatement.setString(10, appDetailDTO.getRelease_date());
            preparedStatement.executeUpdate();
        }
    }

    public static AppPreviewsDTO getAppList() throws SQLException {
        Connection conn = DBUtil.getConnection();
        String query = "select steam_appid, name from steam_games where type=?";
        PreparedStatement preparedStatement = conn.prepareStatement(query);

        preparedStatement.setString(1, "game");
        ResultSet rs =preparedStatement.executeQuery();

        List<AppPreviewDTO> appPreviewDTOList = new ArrayList<>();
        while (rs.next()) {
            Long steam_appid = rs.getLong("steam_appid");
            String name = rs.getString("name");
            appPreviewDTOList.add(new AppPreviewDTO(steam_appid, name));
        }

        return new AppPreviewsDTO(appPreviewDTOList);
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
            Long recommandations = rs.getLong("recommandations");
            String release_date = rs.getString("release_date");

            result = new AppDetailDTO(steam_appId, name, type, required_age, detailed_description, header_image,
                    pc_requirements, price, recommandations, release_date);
        }

        return result;
    }
}
