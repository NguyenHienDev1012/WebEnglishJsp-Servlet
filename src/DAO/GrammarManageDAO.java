package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import BEAN.Grammar;
import BEAN.Member;
import DB.DBConnection;

public class GrammarManageDAO {
	public static ArrayList<Grammar> displayGrammarManage(HttpServletRequest request, Connection conn) {
		ArrayList<Grammar> list = new ArrayList<Grammar>();
		PreparedStatement ptmt = null;
		String sql = "select * from grammar";
		try {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			if (rs.isBeforeFirst()) {
				while (rs.next()) {
					Grammar grammar = new Grammar();
					int grammarid = rs.getInt("grammarid");
					String grammarname = rs.getString("grammarname");
					String grammarimage = rs.getString("grammarimage");
					String grammarcontent = rs.getString("grammarcontent");
					grammar.setGrammarid(grammarid);
					grammar.setGrammarname(grammarname);
					grammar.setGrammarimage(grammarimage);
					grammar.setGrammarcontent(grammarcontent);
					list.add(grammar);
				}
			} else {
				request.setAttribute("messageListgrammarManage", "Bạn chưa có bài học ngữ pháp nào!!!");
			}
			ptmt.close();
			rs.close();
		} catch (SQLException e) {
			request.setAttribute("messageListgrammarManage", e.getMessage());
		}
		return list;
	}

	public static Grammar changeGrammar(Connection conn, String name) {
		ArrayList<Grammar> list = new ArrayList<Grammar>();
		PreparedStatement ptmt = null;
		String sql = "select * from grammar where grammarname='" + name + "'";
		Grammar grammar=new Grammar();
		try {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				int grammarid = rs.getInt("grammarid");
				String grammarname = rs.getString("grammarname");
				String grammarimage = rs.getString("grammarimage");
				String grammarcontent = rs.getString("grammarcontent");
				grammar=new Grammar(0, grammarname, grammarimage, grammarcontent);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return grammar;
	}

	public static boolean updateGrammar(Connection conn, Grammar grammar) {
		PreparedStatement ptmt = null;
		String sql = "update grammar set grammarimage=?, grammarcontent=? where grammarname=?";

		try {
			ptmt=conn.prepareStatement(sql);
			ptmt.setString(1, grammar.getGrammarimage());
			ptmt.setString(2, grammar.getGrammarcontent());
			ptmt.setString(3, grammar.getGrammarname());
			int kt = ptmt.executeUpdate();
			if (kt != 0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
	public static boolean adminInsertNewGrammar(HttpServletRequest request,Connection conn, Grammar grammar) {
		PreparedStatement ptmt = null;
		String sql = "insert into grammar(grammarname,grammarimage,grammarcontent) values (?,?,?)";

		try {
			ptmt = conn.prepareStatement(sql);
			String grammarname = grammar.getGrammarname();
			String grammarimage=grammar.getGrammarimage();
			String grammarcontent = grammar.getGrammarcontent();
			ptmt.setString(1,grammarname);
			ptmt.setString(2,grammarimage);
			ptmt.setString(3,grammarcontent);
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
	public static ArrayList<Grammar> displayGrammar(int start,int count,HttpServletRequest request, Connection conn) {
		ArrayList<Grammar> list = new ArrayList<Grammar>();
		PreparedStatement ptmt = null;
		String sql = "select * from grammar limit "+(start-1)+", "+count+"";
		try {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			if (rs.isBeforeFirst()) {
				while (rs.next()) {
					Grammar grammar = new Grammar();
					int grammarid = rs.getInt("grammarid");
					String grammarname = rs.getString("grammarname");
					String grammarimage = rs.getString("grammarimage");
					String grammarcontent = rs.getString("grammarcontent");
					grammar.setGrammarid(grammarid);
					grammar.setGrammarname(grammarname);
					grammar.setGrammarimage(grammarimage);
					grammar.setGrammarcontent(grammarcontent);
					list.add(grammar);
				}
			} else {
				request.setAttribute("messageListgrammar", "Bạn chưa có bài học ngữ pháp nào!!!");
			}
			ptmt.close();
			rs.close();
		} catch (SQLException e) {
			request.setAttribute("messageListgrammar", e.getMessage());
		}
		return list;
	}
	public static Grammar displayGrammarContent(Connection conn, int id) {
		ArrayList<Grammar> list = new ArrayList<Grammar>();
		PreparedStatement ptmt = null;
		String sql = "select * from grammar where grammarid='" + id + "'";
		Grammar grammar=new Grammar();
		try {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				int grammarid = rs.getInt("grammarid");
				String grammarname = rs.getString("grammarname");
				String grammarimage = rs.getString("grammarimage");
				String grammarcontent = rs.getString("grammarcontent");
				grammar=new Grammar(0, grammarname, grammarimage, grammarcontent);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return grammar;
	}


	public static void main(String[] args) {
//		Grammar grammar=new Grammar(0, "HTD", "m", "m");
//		Connection conn=DBConnection.createConnection();
//		ArrayList<Grammar> list=GrammarManageDAO.changeGrammar(conn, "HTD");
//		boolean s =GrammarManageDAO.updateGrammar(conn, grammar);
//		System.out.println(s);

	}

}