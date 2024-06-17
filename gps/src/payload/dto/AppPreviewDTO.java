package payload.dto;

public class AppPreviewDTO {
    Long steam_appid;
    String name;
    String header_iamge;
    Long recommendations;
    String website;

    public AppPreviewDTO(Long steam_appid, String name, String header_iamge, Long recommendations, String website) {
        this.steam_appid = steam_appid;
        this.name = name;
        this.header_iamge = header_iamge;
        this.recommendations = recommendations;
        this.website = website;
    }

    public Long getSteam_appid() {
        return steam_appid;
    }

    public void setSteam_appid(Long steam_appid) {
        this.steam_appid = steam_appid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getHeader_iamge() {
        return header_iamge;
    }

    public void setHeader_iamge(String header_iamge) {
        this.header_iamge = header_iamge;
    }

    public Long getRecommendations() {
        return recommendations;
    }

    public void setRecommendations(Long recommendations) {
        this.recommendations = recommendations;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }
}
