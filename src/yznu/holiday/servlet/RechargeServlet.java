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

import yznu.holiday.bean.BlackListBean;
import yznu.holiday.bean.UserInfoBean;
import yznu.holiday.dao.QueryDao;
import yznu.holiday.dao.UserDao;

public class RechargeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Logger log = Logger.getLogger(RechargeServlet.class);
	public RechargeServlet() {
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
		String userid = ((UserInfoBean) (session.getAttribute("user")))
				.getUserId();
		UserDao ud = new UserDao();
		QueryDao qd = new QueryDao();
		String money = request.getParameter("money");
		// 充值所需参数
		String args[] = { money, userid };
		int n = ud.rechargeUser(args);

		// 删除黑名单用户所需参数
		String uid[] = { userid };
		System.out.println("传递的Userid" + userid);
		// 判断该用户是否在黑名单内
		boolean auser = false;
		String au[] = { userid };
		BlackListBean ArrearageUser = ud.getArrearageUser(au);
		if (ArrearageUser != null)
			auser = true;
		// 如果存在黑名单之内则更改黑名单上的余额
		if (auser) {
			int c = ud.rechargeArrearageUser(args);
			System.out.println("充值黑名单用户是否成功" + c);
			// 如果更改后的余额已>=0则将次用户从黑名单上删掉
			String arrbalance = qd.QueryArrearageBalance(uid);
			System.out.println("黑名单充值后的余额显示" + arrbalance);
			float ab = Float.parseFloat(arrbalance);
			if (ab >= 0) {
				int cc = ud.deleteArrearageUser(uid);
				System.out.println("删除用户是否成功" + cc);
			}
		}

		// 存入更新后的用户
		String a[] = { userid };
		UserInfoBean u = ud.getUser(a);
		session.setAttribute("user", u);
		System.out.println(n);
		if (n != 0)
			response.sendRedirect("UserInfoServlet");
		else
			response.sendRedirect("userinfo.jsp");
	}

}
