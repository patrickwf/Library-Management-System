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
import yznu.holiday.dao.BookDao;
import yznu.holiday.dao.QueryDao;

public class EditTypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Logger log = Logger.getLogger(EditTypeServlet.class);
	public EditTypeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// response.setContentType("text/html;charset=UTF-8");
		String pathadd = request.getContextPath();
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		String aid = ((AdminBean) (session.getAttribute("admin"))).getAid();
		// 得到页面传过来的参数
		String typeid = (String) request.getParameter("ll");
		String newname = request.getParameter("newname");
		BookDao qd = new BookDao();
		String args[] = { newname, typeid };
		System.out.println(newname + "zzzzzzzzzzz" + typeid);
		int n = qd.updateKindsbooks(args);
		System.out.println(n);
		if (n != 0)
			log.info("修改图书类别成功！");
			response.sendRedirect("ManageBooksServlet");

	}

}
