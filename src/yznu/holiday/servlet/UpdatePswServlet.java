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

public class UpdatePswServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Logger log = Logger.getLogger(UpdatePswServlet.class);
	public UpdatePswServlet() {
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
		HttpSession session = request.getSession();
		String pathadd = request.getContextPath();
		PrintWriter out = response.getWriter();
		String userid = ((UserInfoBean) (session.getAttribute("user")))
				.getUserId();
		UserDao ud = new UserDao();
		// 从页面传入参数,判断2次输入的新设密码是否一样
		String psw1 = request.getParameter("newpsw");
		String psw2 = request.getParameter("conforim");
		String newpsw = null;
		boolean check = false;
		if (psw1.equals(psw2)) {
			newpsw = psw1;
			check = true;
		}
		if (check) {
			String args[] = { newpsw, userid };
			int n = ud.updatePsw(args);
			// 存入更新后的用户
			String a[] = { userid };
			UserInfoBean u = ud.getUser(a);
			session.setAttribute("user", u);
			System.out.println(n);
			if (n != 0) {
				log.info("修改密码成功！");
				response.sendRedirect("login.jsp");
			}else {
				log.info("修改密码失败！");
				response.sendRedirect("userinfo.jsp");
			}
		} else {
			out.print("<script>alert('两次密码不一样，请重新输入！');location.href='"
					+ pathadd + "/userinfo.jsp';</script>");
		}

	}

}
