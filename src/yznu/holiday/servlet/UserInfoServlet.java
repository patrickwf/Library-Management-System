package yznu.holiday.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yznu.holiday.bean.UserInfoBean;
import yznu.holiday.dao.QueryDao;

public class UserInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserInfoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String pathadd = request.getContextPath();
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		// 得到用户ID
		String userid = ((UserInfoBean) (session.getAttribute("user")))
				.getUserId();
		QueryDao qd = new QueryDao();
		String args[] = { userid };
		List listrecord = qd.QueryBorrowRecord(args);
		request.setAttribute("listborrowrecord", listrecord);
		request.getRequestDispatcher("userinfo.jsp").forward(request, response);
	}

}
