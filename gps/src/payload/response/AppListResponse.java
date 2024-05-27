package payload.response;

import payload.dto.AppsDTO;

public class AppListResponse {
    AppsDTO applist;

    public AppsDTO getApplist() {
        return applist;
    }

    public void setApplist(AppsDTO applist) {
        this.applist = applist;
    }
}
