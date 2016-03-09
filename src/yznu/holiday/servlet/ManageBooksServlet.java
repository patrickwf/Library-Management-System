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

import org.apache.log4j.Logger;

import yznu.holiday.bean.AdminBean;
import yznu.holiday.bean.BookInfoBean;
import yznu.holiday.bean.BookTypeBean;
import yznu.holiday.bean.UserInfoBean;
import yznu.holiday.dao.QueryDao;

/**
 * Servlet implementation class ManageBooks
 */
@WebServlet("/ManageBooksServlet")
public class ManageBooksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public ManageBooksServlet() {
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
		String aid = ((AdminBean) (session.getAttribute("admin"))).getAid();
		QueryDao qd = new QueryDao();
		String args[] = null;
		List allNames = qd.queryAllTypeName(args);
		request.setAttribute("allNames", allNames);
		request.getRequestDispatcher("managebooks.jsp").forward(request,
				response);

	}

}
