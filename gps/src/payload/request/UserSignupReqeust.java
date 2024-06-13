package payload.request;

public class UserSignupReqeust {
    String email;
    String phone;
    String nickname;
    String password;
    boolean terms;
    boolean subscribe;

    public UserSignupReqeust(String email, String phone, String nickname, String password, boolean terms, boolean subscribe) {
        this.email = email;
        this.phone = phone;
        this.nickname = nickname;
        this.password = password;
        this.terms = terms;
        this.subscribe = subscribe;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isTerms() {
        return terms;
    }

    public void setTerms(boolean terms) {
        this.terms = terms;
    }

    public boolean isSubscribe() {
        return subscribe;
    }

    public void setSubscribe(boolean subscribe) {
        this.subscribe = subscribe;
    }
}
