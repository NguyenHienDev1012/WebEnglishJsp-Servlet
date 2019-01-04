package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import BEAN.Member;


public class MemberAccountDAO {
	
	public static ArrayList<Member> displayMemberManage(HttpServletRequest request, Connection conn) {
		ArrayList<Member> list = new ArrayList<Member>();
		PreparedStatement ptmt = null;
		String sql = "select * from member";
		try {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			if (rs.isBeforeFirst()) {
				while (rs.next()) {
					Member member = new Member();
					int memberid = rs.getInt("memberid");
					String username  = rs.getString("username");
					String password  = rs.getString("password");
					String email = rs.getString("email");
					int categorymemberid = rs.getInt("categorymemberid");
					member.setUsername(username);
					member.setMemberid(memberid);
					member.setEmail(email);
					member.setPassword(password);
					member.setCategorymemberid(categorymemberid);
					list.add(member);
				}
			} else {
				request.setAttribute("messagelistAccount", "Chưa có tài khoản nào đăng ký!!!");
			}
			ptmt.close();
			rs.close();
		} catch (SQLException e) {
			request.setAttribute("messagelistAccount", e.getMessage());
		}
		return list;
	}

	public static boolean adminInsertNewAccount(HttpServletRequest request,Connection conn, Member member) {
		PreparedStatement ptmt = null;
		String sql = "insert into member(username,email,password,categorymemberid) values (?,?,?,?)";

		try {
			ptmt = conn.prepareStatement(sql);
			String username = member.getUsername();
			String email=member.getEmail();
			String password = member.getPassword();
			int categorymemberid=member.getCategorymemberid();
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
			request.setAttribute("msgAdminInsert", e.getMessage());
		}
		return false;
	}


}
