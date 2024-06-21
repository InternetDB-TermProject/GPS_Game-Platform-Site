package payload.dto;

import java.util.Date;

public class GameBoardDetailDTO {

    Long gameId;
    String title;
    String text;
    String writer;
    int gameBoardView;
    Date create_date;

    public GameBoardDetailDTO(Long gameId, String title, String text, String writer, int gameBoardView, Date create_date) {
        this.gameId = gameId;
        this.title = title;
        this.text = text;
        this.writer = writer;
        this.gameBoardView = gameBoardView;
        this.create_date = create_date;
    }

    public Long getGameId() {
        return gameId;
    }

    public void setGameId(Long gameId) {
        this.gameId = gameId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public int getGameBoardView() {
        return gameBoardView;
    }

    public void setGameBoardView(int gameBoardView) {
        this.gameBoardView = gameBoardView;
    }

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }
}
