package payload.dto;

import org.json.simple.JSONObject;

public class AppDetailDTO {
    Long steam_appId;
    String name;
    Long required_age;
    String detailed_description;
    String header_image;
    String pc_requirements;
    Long price;
    Long recommandations;
    String release_date;

    public AppDetailDTO(Long steam_appId, JSONObject jsonObject) {
        this.steam_appId = steam_appId;
        this.name = (String)jsonObject.get("name");
        this.required_age = (Long)jsonObject.get("required_age");
        this.detailed_description = (String)jsonObject.get("detailed_description");
        this.header_image = (String)jsonObject.get("header_image");
        this.pc_requirements = (String)((JSONObject)jsonObject.get("pc_requirements")).get("minimum");
        this.price = (Long)((JSONObject) jsonObject.get("price_overview")).get("final");
        this.recommandations = (Long)((JSONObject)jsonObject.get("recommandations")).get("total");
        this.release_date = (String)((JSONObject)jsonObject.get("release_date")).get("date");
    }

    public Long getSteam_appId() {
        return steam_appId;
    }

    public void setSteam_appId(Long steam_appId) {
        this.steam_appId = steam_appId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getRequired_age() {
        return required_age;
    }

    public void setRequired_age(Long required_age) {
        this.required_age = required_age;
    }

    public String getDetailed_description() {
        return detailed_description;
    }

    public void setDetailed_description(String detailed_description) {
        this.detailed_description = detailed_description;
    }

    public String getHeader_image() {
        return header_image;
    }

    public void setHeader_image(String header_image) {
        this.header_image = header_image;
    }

    public String getPc_requirements() {
        return pc_requirements;
    }

    public void setPc_requirements(String pc_requirements) {
        this.pc_requirements = pc_requirements;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Long getRecommandations() {
        return recommandations;
    }

    public void setRecommandations(Long recommandations) {
        this.recommandations = recommandations;
    }

    public String getRelease_date() {
        return release_date;
    }

    public void setRelease_date(String release_date) {
        this.release_date = release_date;
    }
}
