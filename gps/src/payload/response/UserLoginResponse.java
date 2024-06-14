package payload.response;

public class UserLoginResponse {
    boolean success;
    String nickname;

    public UserLoginResponse(boolean success, String nickname) {
        this.success = success;
        this.nickname = nickname;
    }

    public boolean isSuccess() {
        return success;
    }

    public String getNickname() {
        return nickname;
    }
}
