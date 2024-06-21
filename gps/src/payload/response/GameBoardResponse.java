package payload.response;

import payload.dto.AppPreviewDTO;
import payload.dto.GameBoardViewDTO;

import java.util.List;
import java.util.Date;

public class GameBoardResponse {



    List<GameBoardViewDTO> gameBoardPriviewDTOList;

    public GameBoardResponse(List<GameBoardViewDTO> gameBoardPriviewDTOList) {
        this.gameBoardPriviewDTOList = gameBoardPriviewDTOList;
    }

    public List<GameBoardViewDTO> getGameBoardPriviewDTOList() {
        return gameBoardPriviewDTOList;
    }

    public void setGameBoardPriviewDTOList(List<GameBoardViewDTO> gameBoardPriviewDTOList) {
        this.gameBoardPriviewDTOList = gameBoardPriviewDTOList;
    }

}
