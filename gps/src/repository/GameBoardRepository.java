package repository;

import payload.dto.AppDetailDTO;
import payload.dto.AppPreviewDTO;
import payload.dto.GameBoardDetailDTO;
import payload.dto.GameBoardViewDTO;
import payload.response.AppListResponse;
import payload.response.GameBoardResponse;
import util.DBUtil;
import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class GameBoardRepository {
    public static GameBoardResponse getGameBoardList() throws SQLException {
        Connection conn = DBUtil.getConnection();
        String query = "select gameId, title, text, writer, gameBoardView, create_date from game_board order by create_date desc";
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

    public static void insertGame(GameBoardViewDTO request) throws SQLException{
        Connection conn = DBUtil.getConnection();

        System.out.println(request.getTitle());
        System.out.println(request.getText());
        System.out.println(request.getWriter());
        String query = "insert into game_board(gameId, title, text, writer, gameBoardView, create_date) " +
                "values (?, ?, ?, ?, ?, ?)";


        PreparedStatement preparedStatement = conn.prepareStatement(query);

        preparedStatement.setNull(1, Types.BIGINT);
        preparedStatement.setString(2, request.getTitle());
        preparedStatement.setString(3, request.getText());
        preparedStatement.setString(4, request.getWriter());
        preparedStatement.setInt(5, request.getGameBoardView());
        preparedStatement.setDate(6, Date.valueOf(LocalDate.now()));
        preparedStatement.executeUpdate();
        System.out.println(query);

    }

    public static void updateGame(GameBoardViewDTO request) throws SQLException{
        Connection conn = DBUtil.getConnection();

        String query = "update game_board set title=?, text=?, gameBoardView=?, create_date=?) " +
                "where gameId=?";


        PreparedStatement preparedStatement = conn.prepareStatement(query);

        preparedStatement.setString(1, request.getTitle());
        preparedStatement.setString(2, request.getText());
        preparedStatement.setInt(3, request.getGameBoardView());
        preparedStatement.setDate(4, Date.valueOf(LocalDate.now()));
        preparedStatement.setLong(5, request.getGameId());
        preparedStatement.executeUpdate();
        System.out.println(query);
    }

    public static void deleteGame(Long gameId) throws SQLException{
        Connection conn = DBUtil.getConnection();

        String query = "delete from game_board where gameId=?";


        PreparedStatement preparedStatement = conn.prepareStatement(query);

        preparedStatement.setLong(1, gameId);
        preparedStatement.executeUpdate();
        System.out.println(query);
    }

    public static GameBoardDetailDTO getAppDetail(Long ParamgameId) throws SQLException{
        Connection conn = DBUtil.getConnection();
        String query = "select * from game_board where gameId=?";
        PreparedStatement preparedStatement = conn.prepareStatement(query);

        preparedStatement.setLong(1, ParamgameId);
        ResultSet rs =preparedStatement.executeQuery();

        GameBoardDetailDTO result = null;
        while (rs.next()) {
            Long gameId = rs.getLong("gameId");
            String title = rs.getString("title");
            String text = rs.getString("text");
            String writer = rs.getString("writer");
            int gameBoardView = rs.getInt("gameBoardView");
            Date create_date = rs.getDate("create_date");

            result = new GameBoardDetailDTO(gameId, title, text, writer, gameBoardView, create_date);
        }

        return result;
    }

}
