package yznu.holiday.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import yznu.holiday.bean.BlackListBean;
import yznu.holiday.bean.UserInfoBean;
import yznu.holiday.dao.BookDao;
import yznu.holiday.dao.QueryDao;
import yznu.holiday.dao.UserDao;

public class BorrowServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private Logger log = Logger.getLogger(BorrowServlet.class);
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
		String userid = ((UserInfoBean) (session.getAttribute("user")))
				.getUserId();
		UserInfoBean uall = (UserInfoBean) session.getAttribute("user");
		// 判断该用户是否在黑名单内
		boolean auser = false;
		UserDao ud = new UserDao();
		String au[] = { userid };
		BlackListBean ArrearageUser = ud.getArrearageUser(au);
		if (ArrearageUser == null)
			auser = true;
		// 不在黑名单则可选择借书
		if (auser) {
			String ISBN = request.getParameter("isbn");
			QueryDao qd = new QueryDao();
			String[] args = { ISBN };
			int n = qd.QueryBookStock(args);
			if (n == 0) {// 没有库存
				out.print("<script>alert('您所借阅的图书目前没有库存！');location.href='"
						+ pathadd + "/searchbooks.jsp';</script>");
			} else if (n != 0) {// 借阅成功
				BookDao bd = new BookDao();
				String[] arg = { ISBN, userid };
				bd.borrowBook(arg);
				//判断当前用户额
				Double ba = Double.parseDouble(uall.getBalance());
				boolean cba = false;
				if (ba >= 0) {
					cba = true;//未欠费
				}
				if (cba) {
					log.info("借阅成功");
					out.print("<script>alert('恭喜你借阅成功！');location.href='"
							+ pathadd + "/searchbooks.jsp';</script>");
				} else {
					log.info("借阅成功，但用户欠费");
					out.print("<script>alert('恭喜你借阅成功！但您已欠费,请尽快充值噢！');location.href='"
							+ pathadd + "/UserInfoServlet';</script>");
				}
			}

		} else {
			log.info("借阅失败，用户欠费");
			out.print("<script>alert('您因欠费已被加入黑名单无法借阅读书,请尽快充值！');location.href='"
					+ pathadd + "/UserInfoServlet';</script>");
		}
	}
}