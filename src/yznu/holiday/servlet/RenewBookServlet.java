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
import yznu.holiday.dao.BookDao;

public class RenewBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Logger log = Logger.getLogger(RenewBookServlet.class);
	public RenewBookServlet() {
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
		BookDao bd = new BookDao();
		String bid = request.getParameter("bookid");
		String args[] = { bid, userid };
		int n = bd.renewBook(args);
		System.out.println("续借是否成功" + n);
		log.info("续借成功！");
		response.sendRedirect("UserInfoServlet");
	}

}
