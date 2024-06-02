package payload.dto;

import java.util.List;

public class AppPreviewsDTO {
    List<AppPreviewDTO> apps;

    public AppPreviewsDTO(List<AppPreviewDTO> apps) {
        this.apps = apps;
    }

    public List<AppPreviewDTO> getApps() {
        return apps;
    }

    public void setApps(List<AppPreviewDTO> apps) {
        this.apps = apps;
    }
}
