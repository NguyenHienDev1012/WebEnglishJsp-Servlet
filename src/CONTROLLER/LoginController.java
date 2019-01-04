package CONTROLLER;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BEAN.Member;
import DAO.LoginDAO;
import DB.DBConnection;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public LoginController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
		Connection conn=DBConnection.createConnection();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		Member member=new Member();
		member.setUsername(username);
		member.setPassword(password);
		boolean authentication=LoginDAO.authenticationMember(conn, member);
		if(authentication) {
			int authorization=LoginDAO.authorizationMember(conn, member);
			if(authorization==2) {
				HttpSession session=request.getSession(true);
				session.setAttribute("sessionAdmin", username);
				RequestDispatcher rd=request.getRequestDispatcher("AdminForward");
				rd.forward(request, response);
				
			}
				
			if(authorization==1) {				
				HttpSession session=request.getSession(true);
				session.setAttribute("sessionname", username);
				RequestDispatcher rd=request.getRequestDispatcher("HomeForward");
				rd.forward(request, response);
			}	

			
		}
		else {
			request.setAttribute("messeageLogin", "Username or Password Erro");
			RequestDispatcher rd=request.getRequestDispatcher("LoginForward");
			rd.forward(request, response);
		}
		
		
		
	}

}
