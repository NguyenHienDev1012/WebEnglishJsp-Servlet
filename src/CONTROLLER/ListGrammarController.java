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


@WebServlet("/ListGrammarController")
public class ListGrammarController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public ListGrammarController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		Connection conn=DBConnection.createConnection();
		String pageidstr=request.getParameter("pageid");
		int pageid=Integer.parseInt(pageidstr);
		int count=3;
		if(pageid==1) {
		}
		else {
			pageid = pageid - 1;
			pageid = pageid * count+1;
		}
		ArrayList<Grammar> listgrammarshow=GrammarManageDAO.displayGrammar(pageid, count, request, conn);
		request.setAttribute("listgrammarshow", listgrammarshow);
		request.setAttribute("numberpage", Integer.parseInt(pageidstr));
		RequestDispatcher rd=request.getRequestDispatcher("View/ListGrammar.jsp");
		rd.forward(request, response);
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
