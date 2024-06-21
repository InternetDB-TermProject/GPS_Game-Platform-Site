package payload.response;

public class GameBoardViewResponse {
    boolean success;
    long gameId;

    public GameBoardViewResponse(boolean success, long gameId) {
        this.success = success;
        this.gameId = gameId;
    }

    public boolean isSuccess() {
        return success;
    }

    public long getGameId() {
        return gameId;
    }
}
