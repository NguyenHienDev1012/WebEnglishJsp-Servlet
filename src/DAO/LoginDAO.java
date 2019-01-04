package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Member;

public class LoginDAO {
	public static boolean authenticationMember(Connection conn, Member member) {
		PreparedStatement ptmt = null;
		String sql = "select * from member";
		try {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				String username = rs.getString("username");
				String password = rs.getString("password");
				if (member.getUsername().equals(username) && member.getPassword().equals(password)) {
					return true;
				}

			}
			ptmt.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;

	}
	public static int authorizationMember(Connection conn,Member member) {
		int categorymemberid=0;
		PreparedStatement ptmt = null;
		String sql =  "select categorymemberid from member where username='" + member.getUsername() +"' and password='"+member.getPassword()+"'";
		try {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				 categorymemberid=rs.getInt("categorymemberid");
				
			}
			ptmt.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return categorymemberid;

		
		
	}

}
