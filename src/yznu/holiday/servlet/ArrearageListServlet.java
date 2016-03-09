package yznu.holiday.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
import yznu.holiday.bean.UserInfoBean;
import yznu.holiday.dao.UserDao;

@WebServlet("/ArrearageListServlet")
public class ArrearageListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Logger log = Logger.getLogger(ArrearageListServlet.class);
	public ArrearageListServlet() {
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
		// 先查询所有用户，再将已经欠费的用户添加到listArrearage中
		UserDao ud = new UserDao();
		String args[] = null;
		List<UserInfoBean> listall = ud.getAllUser(args);
		List<UserInfoBean> listArrearage = new ArrayList<UserInfoBean>();
		Iterator<UserInfoBean> itall = listall.iterator();
		while (itall.hasNext()) {
			UserInfoBean user = itall.next();
			if (Double.parseDouble(user.getBalance()) < 0)
				listArrearage.add(user);
		}
		request.setAttribute("listArrearage", listArrearage);
		log.info("管理员"+aid+"查询欠费列表成功");
		request.getRequestDispatcher("arrearageuser.jsp").forward(request,
				response);
	}

}
