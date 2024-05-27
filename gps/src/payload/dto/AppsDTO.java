package payload.dto;

import payload.dto.AppDTO;

import java.util.List;

public class AppsDTO {
    List<AppDTO> apps;

    public List<AppDTO> getApps() {
        return apps;
    }

    public void setApps(List<AppDTO> apps) {
        this.apps = apps;
    }
}
