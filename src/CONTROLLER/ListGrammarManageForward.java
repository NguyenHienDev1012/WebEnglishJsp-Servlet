package CONTROLLER;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Grammar;
import DAO.GrammarManageDAO;
import DB.DBConnection;

@WebServlet("/ListGrammarManageForward")
public class ListGrammarManageForward extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ListGrammarManageForward() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Connection conn = DBConnection.createConnection();
		ArrayList<Grammar> list = GrammarManageDAO.displayGrammarManage(request, conn);
		request.setAttribute("listgrammarManage", list);
		RequestDispatcher rd = request.getRequestDispatcher("View/Admin/ListGrammarManage.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
