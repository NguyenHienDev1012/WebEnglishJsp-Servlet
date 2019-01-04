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


@WebServlet("/ListGrammarContentController")
public class ListGrammarContentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public ListGrammarContentController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Connection conn=DBConnection.createConnection();
		String grammarid=request.getParameter("grammarid");
		Grammar grammar=GrammarManageDAO.displayGrammarContent(conn, Integer.parseInt(grammarid));
		request.setAttribute("displaygrammarcontent", grammar);
		RequestDispatcher rd=request.getRequestDispatcher("View/DisplayGrammarContent.jsp");
		rd.forward(request, response);
		
		
		
		
		
		
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
