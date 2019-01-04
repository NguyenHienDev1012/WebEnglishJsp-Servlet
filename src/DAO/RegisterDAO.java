package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import BEAN.Member;

public class RegisterDAO {
	public static boolean insertAccount(HttpServletRequest request,Connection conn, Member member) {
		PreparedStatement ptmt = null;
		String sql = "insert into member(username,email,password,categorymemberid) values (?,?,?,?)";

		try {
			ptmt = conn.prepareStatement(sql);
			String username = member.getUsername();
			String email=member.getEmail();
			String password = member.getPassword();
			int categorymemberid=1;
			ptmt.setString(1,username);
			ptmt.setString(2,email);
			ptmt.setString(3,password);
			ptmt.setInt(4, categorymemberid);
			int kt = ptmt.executeUpdate();
			if (kt != 0) {
				return true;
			}
			ptmt.close();
		} catch (SQLException e) {
			//e.printStackTrace();
			request.setAttribute("msgregister", e.getMessage());
		}
		return false;
	}


}
