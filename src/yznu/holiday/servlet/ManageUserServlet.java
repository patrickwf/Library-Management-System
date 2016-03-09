package yznu.holiday.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yznu.holiday.bean.AdminBean;
import yznu.holiday.bean.UserInfoBean;
import yznu.holiday.dao.UserDao;

@WebServlet("/ManageUserServlet")
public class ManageUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ManageUserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String aid = ((AdminBean) (session.getAttribute("admin"))).getAid();
		UserDao ud = new UserDao();
		String args[] = null;
		List list = ud.getAllUser(args);
		request.setAttribute("allUser", list);
		request.getRequestDispatcher("manageuser.jsp").forward(request,
				response);
	}

}
