package DB;

import java.sql.*;

public class DBConnection {
	public static Connection createConnection() {
		Connection con = null;
		String url = "jdbc:mysql://localhost:3306/webhoctienganh?useUnicode=true&amp;characterEncoding=utf8";
		String user = "root";
		String password = "passion";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return con;

	}

	public static void main(String[] args) {
		System.out.println(createConnection());
	}
}
