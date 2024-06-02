package payload.dto;

//Steam에서 AppList받아오고 Gson으로 편리하게 객체 매핑하기 위해 사용
public class SteamAppListResponse {
    AppPreviewsDTO applist;

    public AppPreviewsDTO getApplist() {
        return applist;
    }

    public void setApplist(AppPreviewsDTO applist) {
        this.applist = applist;
    }
}
