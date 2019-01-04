package CONTROLLER;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Member;
import DAO.MemberAccountDAO;
import DB.DBConnection;


@WebServlet("/NewMemberAccountController")
public class NewMemberAccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public NewMemberAccountController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
		Connection conn=DBConnection.createConnection();
		Member member=new Member();
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String password=request.getParameter("pass");
		String categorymemberid=request.getParameter("categorymemberid");
		member.setUsername(username);
		member.setPassword(password);
		member.setEmail(email);
		member.setCategorymemberid(Integer.parseInt(categorymemberid));
		boolean check=MemberAccountDAO.adminInsertNewAccount(request, conn, member);
		if(check) {
			request.setAttribute("messageAdminInsertAccount", "Bạn đã thêm thành công");
			RequestDispatcher rd=request.getRequestDispatcher("NewMemberAccountForward");
			rd.forward(request, response);
			
		}else {
			request.setAttribute("messageAdminInsertAccount", "Bạn đã thêm thất bại,hãy thử lại!!!");
			RequestDispatcher rd=request.getRequestDispatcher("NewMemberAccountForward");
			rd.forward(request, response);
		}
		
		
	}

}
