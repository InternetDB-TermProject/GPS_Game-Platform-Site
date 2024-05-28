package repository;

import api.SteamAPI;
import payload.dto.AppDTO;
import payload.dto.AppDetailDTO;
import payload.dto.AppsDTO;
import payload.response.AppListResponse;
import util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class SteamRepository {
    public static void updateData() throws SQLException {
        boolean base = false;
        Connection conn = DBUtil.getConnection();

        AppListResponse appListResponse = SteamAPI.getAppList();
        AppsDTO appsDTO  = appListResponse.getApplist();
        List<AppDTO> appsDTOList = appsDTO.getApps();
        for(AppDTO appDTO : appsDTOList){
            if(appDTO.getAppid()==1817240){
                base=true;
                continue;
            }
            if(!base){
                continue;
            }
            Long appId = appDTO.getAppid();
            System.out.println(appId);
            AppDetailDTO appDetailDTO = null;
            try{
                appDetailDTO = SteamAPI.getAppDetail(appId);
            }
            catch(Exception e){
                e.printStackTrace();
                continue;
            }

            if(appDetailDTO==null) continue;

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

        System.out.println("updated steam_games");
    }
}
