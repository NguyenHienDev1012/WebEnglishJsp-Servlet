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
@WebServlet("/GrammarManageController")
public class GrammarManageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public GrammarManageController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Connection conn=DBConnection.createConnection();
		String name=request.getParameter("name");
		Grammar grammar=GrammarManageDAO.changeGrammar(conn, name);
		request.setAttribute("grammarchange", grammar);
		RequestDispatcher rd=request.getRequestDispatcher("View/Admin/GrammarManage.jsp");
		rd.forward(request, response);
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
		
		
		
				
	}

}
