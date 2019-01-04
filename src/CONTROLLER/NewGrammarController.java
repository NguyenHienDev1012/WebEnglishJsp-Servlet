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

@WebServlet("/NewGrammarController")
public class NewGrammarController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public NewGrammarController() {
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
		Connection conn=DBConnection.createConnection();
		String grammarname=request.getParameter("grammarname");
		String grammarimage=request.getParameter("grammarimage");
		String grammarcontent=request.getParameter("grammarcontent");
		Grammar grammar=new Grammar();
		grammar.setGrammarname(grammarname);
		grammar.setGrammarimage(grammarimage);
		grammar.setGrammarcontent(grammarcontent);
		boolean check=GrammarManageDAO.adminInsertNewGrammar(request, conn, grammar);
		if(check) {
			request.setAttribute("messageInsertGrammar", "Thêm bài ngữ pháp thành công!");
			RequestDispatcher rd=request.getRequestDispatcher("NewGrammarForward");
			rd.forward(request, response);
		}
		else {
			request.setAttribute("messageInsertGrammar", "Thêm bài ngữ pháp thất bại!,Mời thêm lại!");
			RequestDispatcher rd=request.getRequestDispatcher("NewGrammarForward");
			rd.forward(request, response);
		}
		
		
	}

}
