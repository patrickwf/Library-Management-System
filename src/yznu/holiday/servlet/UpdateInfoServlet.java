package yznu.holiday.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import yznu.holiday.bean.UserInfoBean;
import yznu.holiday.dao.UserDao;

@WebServlet("/UpdateInfoServlet")
public class UpdateInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Logger log = Logger.getLogger(UpdateInfoServlet.class);
	public UpdateInfoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String pathadd = request.getContextPath();
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		String userid = ((UserInfoBean) (session.getAttribute("user")))
				.getUserId();
		UserDao ud = new UserDao();
		String newname = request.getParameter("newname");// 无法取到值 null
		String newtel = request.getParameter("newtel");
		System.out.println(newname + "**********" + userid);
		String args[] = { newname, newtel, userid };
		int n = ud.updateUserInfo(args);
		// 存入更新后的用户
		String a[] = { userid };
		UserInfoBean u = ud.getUser(a);
		session.setAttribute("user", u);
		System.out.println(n);
		log.info("更新用户成功！");
		if (n != 0)
			response.sendRedirect("UserInfoServlet");

	}

}
