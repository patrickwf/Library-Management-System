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

import yznu.holiday.bean.AdminBean;
import yznu.holiday.bean.BlackListBean;
import yznu.holiday.bean.UserInfoBean;
import yznu.holiday.dao.UserDao;

@WebServlet("/AddBlackListServlet")
public class AddBlackListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Logger log = Logger.getLogger(AddBlackListServlet.class);
	
	public AddBlackListServlet() {
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
		String aid = ((AdminBean) (session.getAttribute("admin"))).getAid();
		String userid = request.getParameter("userid");
		String args[] = { userid };
		UserDao ud = new UserDao();
		UserInfoBean user = ud.getUser(args);
		String a[] = { user.getUname(), user.getUserId(), user.getUidCard(),
				user.getBalance() };
		// BlackListBean arruser=new
		// BlackListBean(user.getUname(),user.getUserId(),user.getUidCard());
		int n = ud.addArrearageUser(a);
		if (n != 0) {
			log.info("管理员："+aid+"将普通用户："+a[1]+"加入黑名单");
			out.print("<script>alert('添加黑名单成功！');location.href='" + pathadd
					+ "/ManageUserServlet';</script>");
		}
	}
}