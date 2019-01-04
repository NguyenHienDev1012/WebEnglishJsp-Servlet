package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import BEAN.Member;
import DAO.MailForgotPassDAO;
import DB.DBConnection;

@WebServlet("/ForgotPassController")
public class ForgotPassController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ForgotPassController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
		Connection conn = (Connection) DBConnection.createConnection();
		String email = request.getParameter("email");
		Member member = new Member();
		member.setEmail(email);
		ArrayList<Member> list = MailForgotPassDAO.checkMemberForgotPassByEmail(conn, member);
		String username = "";
		String password = "";
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getEmail().equals(email)) {
				username = list.get(i).getUsername();
				password = list.get(i).getPassword();
			}
		}
		if(username.equals("")&password.equals("")) {
			request.setAttribute("messageMail", "Not mail here,please again!");
			RequestDispatcher rq = request.getRequestDispatcher("ForgotPassForward");
			rq.forward(request, response);
		}
		else {
			MailForgotPassDAO.sendMail(email, "Username&Password:", username+"&"+password);
			request.setAttribute("messageMail", "Check Mail,please!");
			RequestDispatcher rq = request.getRequestDispatcher("ForgotPassForward");
			rq.forward(request, response);
		}

	}
}