package CONTROLLER;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Grammar;
import DAO.GrammarManageDAO;
import DB.DBConnection;

@WebServlet("/GrammarManageUpdateController")
public class GrammarManageUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GrammarManageUpdateController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Connection conn = DBConnection.createConnection();
		String grammarname = request.getParameter("grammarname");
		String grammarimage = request.getParameter("grammarimage");
		String grammarcontent = request.getParameter("grammarcontent");
		Grammar grammar = new Grammar(0, grammarname, grammarimage, grammarcontent);
		boolean update = GrammarManageDAO.updateGrammar(conn, grammar);
		if (update) {
			request.setAttribute("messageupdate", "Cập nhật thành công");
			RequestDispatcher rd = request.getRequestDispatcher("ListGrammarManageForward");
			rd.forward(request, response);

		} else {
			request.setAttribute("messageupdate", "Cập nhật thất bại,hãy thử lại");
			RequestDispatcher rd = request.getRequestDispatcher("ListGrammarManageForward");
			rd.forward(request, response);
		}
	}

}
