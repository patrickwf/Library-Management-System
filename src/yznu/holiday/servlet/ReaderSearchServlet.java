package yznu.holiday.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yznu.holiday.bean.BookInfoBean;
import yznu.holiday.bean.UserInfoBean;
import yznu.holiday.dao.QueryDao;

public class ReaderSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ReaderSearchServlet() {
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
		// 取得页面搜索词
		String search = new String(request.getParameter("search").getBytes(
				"ISO-8859-1"), "UTF-8");
		// System.out.println(search);
		// 进行模糊查询
		String args[] = null;
		String a[] = { search };
		QueryDao qd = new QueryDao();
		List<BookInfoBean> list = qd.QuerySearchBooks(args, a);
		request.setAttribute("searchresult", list);
		request.getRequestDispatcher("rsearchbookresult.jsp").forward(request,
				response);

	}

}
