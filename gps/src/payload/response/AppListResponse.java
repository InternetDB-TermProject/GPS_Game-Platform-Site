package payload.response;

import payload.dto.AppPreviewDTO;

import java.util.List;

public class AppListResponse {
    List<AppPreviewDTO> appPreviewDTOList;

    public AppListResponse(List<AppPreviewDTO> appPreviewDTOList) {
        this.appPreviewDTOList = appPreviewDTOList;
    }

    public List<AppPreviewDTO> getAppPreviewDTOList() {
        return appPreviewDTOList;
    }

    public void setAppPreviewDTOList(List<AppPreviewDTO> appPreviewDTOList) {
        this.appPreviewDTOList = appPreviewDTOList;
    }
}
