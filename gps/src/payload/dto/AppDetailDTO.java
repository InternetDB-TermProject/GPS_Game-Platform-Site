package payload.dto;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class AppDetailDTO {
    Long steam_appId;
    String name;
    String type;
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
        this.type = (String)jsonObject.get("type");
        this.required_age = (Long)jsonObject.get("required_age")==0L ? 0L : Long.parseLong((String)jsonObject.get("required_age"));
        this.detailed_description = (String)jsonObject.getOrDefault("detailed_description", "");
        this.header_image = (String)jsonObject.getOrDefault("header_image", "");
        this.pc_requirements = jsonObject.get("pc_requirements") instanceof JSONArray ?
                "" : (String)((JSONObject)jsonObject.get("pc_requirements")).getOrDefault("minimum", "");
        this.price = (JSONObject)jsonObject.getOrDefault("price",null)==null ?
                0L : (Long)((JSONObject)jsonObject.get("price")).getOrDefault("final",0L);
        this.recommandations = (JSONObject)jsonObject.getOrDefault("recommandations",null)==null ?
                0L : (Long)((JSONObject)jsonObject.get("recommandations")).getOrDefault("total",0L);
        this.release_date = (JSONObject)jsonObject.getOrDefault("release_date", null)==null ?
                "" : (String)((JSONObject)jsonObject.get("release_date")).getOrDefault("date", "");
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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

    public Long getRecommandations() {
        return recommandations;
    }

    public void setRecommandations(Long recommandations) {
        this.recommandations = recommandations;
    }

    public void setPrice(Long price) {
        this.price = price;

    }

    public String getRelease_date() {
        return release_date;
    }

    public void setRelease_date(String release_date) {
        this.release_date = release_date;
    }
}
