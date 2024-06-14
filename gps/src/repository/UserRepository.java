package repository;

import payload.request.UserLoginRequest;
import payload.request.UserSignupReqeust;
import payload.response.UserLoginResponse;
import util.DBUtil;

import java.sql.*;

public class UserRepository {

    public static String signup(UserSignupReqeust request) throws SQLException {
        //reuest가 없으면 x
        if(request==null) return "잘못된 양식입니다.";

        //이용약관에 동의하지 않았으면
        if(!request.isTerms()) return "약관에 동의해주십시오.";

        Connection conn = DBUtil.getConnection();

        //email이 이미 존재하면 x
        String query = "select email from users where email=?";
        PreparedStatement preparedStatement = conn.prepareStatement(query);
        preparedStatement.setString(1, request.getEmail());
        ResultSet rs =preparedStatement.executeQuery();
        if(rs.next()) return "이미 존재하는 email입니다.";

        String query3 = "insert into users(id, email, phone, nickname, password) " +
                "values (?, ?, ?, ?, ?)";
        PreparedStatement preparedStatement3 = conn.prepareStatement(query3);

        preparedStatement3.setNull(1, Types.BIGINT);
        preparedStatement3.setString(2, request.getEmail());
        preparedStatement3.setString(3, request.getNickname());
        preparedStatement3.setString(4, request.getNickname());
        preparedStatement3.setString(5, request.getPassword());
        preparedStatement3.executeUpdate();

        return "회원가입에 성공하셨습니다.";
    }

    public static UserLoginResponse login(UserLoginRequest request) throws SQLException {
        Connection conn = DBUtil.getConnection();

        String query = "select email from users where email=? and password=?";
        PreparedStatement preparedStatement = conn.prepareStatement(query);
        preparedStatement.setString(1, request.getEmail());
        preparedStatement.setString(2, request.getPassword());
        ResultSet rs =preparedStatement.executeQuery();
        if(rs.next()) {
            String nickname = rs.getString("email");
            return new UserLoginResponse(true, nickname);
        }
        else{
            return new UserLoginResponse(false, "해당하는 계정이 없습니다.");
        }
    }
}
