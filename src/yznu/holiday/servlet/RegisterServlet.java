package yznu.holiday.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import yznu.holiday.dao.UserDao;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Logger log = Logger.getLogger(RegisterServlet.class);
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String pathadd = request.getContextPath();
		// 提取注册页面参数
		String Uname = request.getParameter("usename");
		String Upsw = request.getParameter("Upsw");
		String UidCard = request.getParameter("idcard");
		String Utel = request.getParameter("phone");
		String UserId = request.getParameter("UserId");
		String Uage = request.getParameter("age");
		// 自动配置参数
		String arg[] = { Uname, Uage, UidCard, Utel, UserId, Upsw };
		// 生成类
		UserDao ud = new UserDao();
		int n = ud.addUser(arg);
		if (n != 0) {
			log.info("注册成功："+arg[4]);
			out.print("<script>alert('注册成功！');location.href='" + pathadd
					+ "/login.jsp';</script>");
		} else {
			log.info("注册失败");
			out.print("<script>alert('注册失败！');location.href='" + pathadd
					+ "/register.jsp';</script>");
		}
	}
}