package CONTROLLER;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import BEAN.Member;
import DAO.RegisterDAO;
import DB.DBConnection;

@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Connection conn = (Connection) DBConnection.createConnection();
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		Member member = new Member();
		member.setUsername(username);
		member.setEmail(email);
		member.setPassword(password);
		String err = "";
		Pattern pattenObj = Pattern.compile(
				"^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");
		Matcher matcherObj = pattenObj.matcher(email);
		if (!matcherObj.matches()) {
			err += "Email sai định dạng,bạn vui lòng xem lại!";
			request.setAttribute("erremail", err);
			RequestDispatcher rq = request.getRequestDispatcher("RegisterForward");
			rq.forward(request, response);
		}
		if (err.length() == 0) {
			boolean kt = RegisterDAO.insertAccount(request, conn, member);
			request.setAttribute("msgregister", "REGISTER SUCCESS !!!");
			RequestDispatcher rq = request.getRequestDispatcher("RegisterForward");
			rq.forward(request, response);
		} else {
			request.setAttribute("msgregister", "REGISTER FAILED,PLEASE AGAIN!!!");
			RequestDispatcher rq = request.getRequestDispatcher("RegisterForward");
			rq.forward(request, response);
		}
	}

}
