package payload.dto;

public class AppDTO {
    Long appid;
    String name;

    public AppDTO() {
    }

    public AppDTO(Long appid, String name) {
        this.appid = appid;
        this.name = name;
    }

    public Long getAppid() {
        return appid;
    }

    public void setAppid(Long appid) {
        this.appid = appid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
