package payload.dto;

public class AppPreviewDTO {
    Long steam_appid;
    String name;
    int price;
    String header_iamge;

    public AppPreviewDTO(Long steam_appid, String name, int price, String header_iamge) {
        this.steam_appid = steam_appid;
        this.name = name;
        this.price = price;
        this.header_iamge = header_iamge;
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

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getHeader_iamge() {
        return header_iamge;
    }

    public void setHeader_iamge(String header_iamge) {
        this.header_iamge = header_iamge;
    }
}
