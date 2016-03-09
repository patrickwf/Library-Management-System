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

@WebServlet("/DonateBookServlet")
public class DonateBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Logger log = Logger.getLogger(DonateBookServlet.class);

	public DonateBookServlet() {
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
		BookDao bd = new BookDao();
		// 从页面获取捐赠图书信息

		String ISBN = request.getParameter("ISBN");
		String typeId = request.getParameter("typeId");
		String bookname = request.getParameter("bookname");
		String writer = request.getParameter("writer");
		String publisher = request.getParameter("publisher");
		String date = request.getParameter("date");
		String price = request.getParameter("price");
		String args[] = { ISBN, typeId, bookname, writer, "无", publisher, date,
				price };
		int n = bd.addBooks(args);
		String a[]= {ISBN};
		int adds = bd.addNewStocks(a);
		System.out.println("捐赠是否成功" + n);
		if (n != 0&&adds!=0) {
			log.info("捐赠图书成功！");
			response.sendRedirect("TypeBooksServlet?type=" + typeId);
		}
	}

}
