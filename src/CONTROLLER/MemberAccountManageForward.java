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

import BEAN.Member;
import DAO.MemberAccountDAO;
import DB.DBConnection;


@WebServlet("/MemberAccountManageForward")
public class MemberAccountManageForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public MemberAccountManageForward() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn=DBConnection.createConnection();
		ArrayList<Member> list=MemberAccountDAO.displayMemberManage(request, conn);
		request.setAttribute("listAccountMember", list);
		RequestDispatcher rd=request.getRequestDispatcher("View/Admin/ListMemberAccountManage.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
