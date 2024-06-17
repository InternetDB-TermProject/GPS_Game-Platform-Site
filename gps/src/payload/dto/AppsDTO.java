package payload.dto;

import java.util.List;

public class AppsDTO {
    List<AppDTO> apps;

    public AppsDTO(List<AppDTO> apps) {
        this.apps = apps;
    }

    public List<AppDTO> getApps() {
        return apps;
    }

    public void setApps(List<AppDTO> apps) {
        this.apps = apps;
    }
}
