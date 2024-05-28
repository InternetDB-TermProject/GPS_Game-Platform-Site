package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    private static final String URL = "jdbc:mariadb://svc.sel5.cloudtype.app:31866/gps";
    private static final String USER = "root";
    private static final String PASSWORD = "ggoomeme0406";
    private static Connection conn = null;
    static {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();

        }
    }
    public static Connection getConnection() {
        return conn;
    }
}
