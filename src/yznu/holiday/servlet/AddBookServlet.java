package yznu.holiday.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import yznu.holiday.bean.AdminBean;
import yznu.holiday.bean.BookInfoBean;
import yznu.holiday.bean.UserInfoBean;
import yznu.holiday.dao.BookDao;
import yznu.holiday.dao.QueryDao;

public class AddBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Logger log = Logger.getLogger(AddBookServlet.class);
	public AddBookServlet() {
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
		QueryDao qd=new QueryDao();
		String args[]=null;
		List<BookInfoBean> listnewbooks=qd.QueryNewBooks(args);
		request.setAttribute("listnewbooks", listnewbooks);
		log.info("管理员"+aid+"添加图书成功");
		request.getRequestDispatcher("addbook.jsp").forward(request,
				response);
		
		
		
		
		
		
		
		
		
		
/*		String ISBN = request.getParameter("isbn");
		String bname = request.getParameter("bname");
		String write = request.getParameter("write");
		String pub = request.getParameter("pub");
		String date = request.getParameter("date");
		String price = request.getParameter("price");
		// String btid = (String) request.getAttribute("btid");
		String btid = request.getParameter("btid");
		BookDao bd = new BookDao();
		String args[] = { ISBN, btid, bname, write, "无", pub, date, price };
		int n = bd.addBooks(args);
		System.out.println(n);
		response.sendRedirect("ManageBooksServlet");*/
	}

}
