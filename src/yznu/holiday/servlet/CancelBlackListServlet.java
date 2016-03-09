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
import yznu.holiday.dao.UserDao;

/**
 * Servlet implementation class CancelBlackListServlet
 */
@WebServlet("/CancelBlackListServlet")
public class CancelBlackListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Logger log = Logger.getLogger(CancelBlackListServlet.class);
    public CancelBlackListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		String pathadd = request.getContextPath();
		PrintWriter out = response.getWriter();
		String aid = ((AdminBean) (session.getAttribute("admin"))).getAid();
		String userid = request.getParameter("userid");
		String args[] = { userid };
		UserDao ud = new UserDao();
		int n = ud.deleteArrearageUser(args);
		if (n != 0) {
			log.info("取消黑名单成功！");
			out.print("<script>alert('取消黑名单成功！');location.href='" + pathadd
					+ "/ManageUserServlet';</script>");
		}
	}

}
