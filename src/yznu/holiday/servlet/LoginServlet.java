package yznu.holiday.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import yznu.holiday.bean.AdminBean;
import yznu.holiday.bean.UserInfoBean;
import yznu.holiday.dao.UserDao;

public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private Logger log = Logger.getLogger(LoginServlet.class);
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String pathadd = request.getContextPath();
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		String rand = (String) session.getAttribute("rand");
		String input = request.getParameter("rand");
		int type = Integer.parseInt(request.getParameter("type"));
		//判断是否选择了登录类型
		if (type != 0) {
			//是否输入正确的验证码
			if (rand.equals(input)) {
				// 从页面获取信息
				String userid = request.getParameter("userid");
				String password = request.getParameter("password");
				UserDao ud = new UserDao();
				String[] args = { userid, password };
				// System.out.println(userid + "zzzz" + password + "zzzzzzz" +
				// type);
				// 根据type检查是管理员还是普通用户登录
				UserInfoBean uib = null;
				AdminBean ab = null;
				if (type == 1) {
					uib = ud.checkLogin(args);
					if (uib == null)// 普通用户用户名或密码错误
						out.print("<script>alert('用户名或密码错误！');location.href='"
								+ pathadd + "/login.jsp';</script>");
					else {
						session.setAttribute("user", uib);
						log.info("普通用户登录成功：" + uib.getUserId());
						response.sendRedirect("userhome.jsp");
					}
				} else if (type == 2) {
					ab = ud.checkAdminLogin(args);

					if (ab == null)// 管理员用户名或密码错误
						out.print("<script>alert('用户名或密码错误！');location.href='"
								+ pathadd + "/login.jsp';</script>");
					else {
						System.out.println(ab.getAname());
						session.setAttribute("admin", ab);
						log.info("管理员登录成功：" + ab.getAid());
						response.sendRedirect("adminhome.jsp");
					}
				}
			} else {// 验证码填写错误
				out.print("<script>alert('请输入正确的验证码！');location.href='"
						+ pathadd + "/login.jsp';</script>");
			}
		} else {
			out.print("<script>alert('请选择登录类型！');location.href='" + pathadd
					+ "/login.jsp';</script>");
		}
	}
}