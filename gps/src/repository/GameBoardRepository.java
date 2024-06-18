package repository;

import payload.dto.AppPreviewDTO;
import payload.dto.GameBoardViewDTO;
import payload.response.AppListResponse;
import payload.response.GameBoardResponse;
import util.DBUtil;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class GameBoardRepository {
    public static GameBoardResponse getGameBoardList() throws SQLException {
        Connection conn = DBUtil.getConnection();
        String query = "select gameId, title, text, writer, gameBoardView, create_date from game_board where type=? order by create_date desc";
        PreparedStatement preparedStatement = conn.prepareStatement(query);

        preparedStatement.setString(1, "game");
        ResultSet rs =preparedStatement.executeQuery();

        List<GameBoardViewDTO> gameBoardViewDTOList = new ArrayList<>();
        while (rs.next()) {
            Long gameId = rs.getLong("gameId");
            String title = rs.getString("title");
            String text = rs.getString("text");
            String writer = rs.getString("writer");
            int gameBoardView = rs.getInt("gameBoardView");
            Date create_date = rs.getDate("create_date");
            gameBoardViewDTOList.add(new GameBoardViewDTO(gameId, title, text, writer, gameBoardView, create_date));
        }

        return new GameBoardResponse(gameBoardViewDTOList);
    }

}
