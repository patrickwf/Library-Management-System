package yznu.holiday.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import yznu.holiday.bean.BookInfoBean;
import yznu.holiday.bean.UserInfoBean;
import yznu.holiday.dao.QueryDao;
import yznu.holiday.dao.UserDao;

public class TypeBooksServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		// String pathadd = request.getContextPath();
		HttpSession session = request.getSession();
		// PrintWriter out = response.getWriter();
		// String userid =
		// ((UserInfoBean)(session.getAttribute("user"))).getUserId();
		String type = request.getParameter("type");
		System.out.println("aaaaa" + type);
		if (session.getAttribute("type") == null && type != null) {
			session.setAttribute("type", type);
		} else if (session.getAttribute("type") != null && type == null) {
			type = (String) session.getAttribute("type");
			// System.out.println("知不执行");
		} else if (session.getAttribute("type") != null && type != null) {
			type = request.getParameter("type");// 取得图书种类编号
			session.setAttribute("type", type);
		}
		// System.out.println(session.getAttribute("type")+"**/*/*/*//");
		// System.out.println(type+"++++++++++++");
		// System.out.println(type);
		QueryDao qd = new QueryDao();
		String[] args = { type };
		String typename = qd.queryTypeName(args);
		request.setAttribute("typename", typename);
		List<BookInfoBean> list = null;
		/**********************************************/
		String page = request.getParameter("page"); // 从页面获得要显示的页码
		int pageNum = 1; // 显示第几页
		int pageTotal = 0; // 总页数
		int pageContent = 3; // 每页显示记录条数
		int count = 0; // 数据库总记录数
		try {
			count = qd.count(args); // 通过模型类的方法获得数据库记录总数
			System.out.println(count + "数据库总记录数");
			if (count > 0) {
				pageTotal = count / pageContent; // 计算页数
				if (pageTotal * pageContent != count) { // 处理余数
					pageTotal = pageTotal + 1;
				}
			}
			if (page != null) { // 如果获得的显示页码值不为空
				pageNum = Integer.parseInt(page); // 做数据类型的转换
			}
			list = qd.pageList(pageNum, pageContent, type); // 调用模型，进行分页查询，返回分页显示的数据
		} catch (Exception e) {
			e.printStackTrace();
		}
		// System.out.println("*********"+pageTotal);
		// System.out.println("*********"+list);
		request.setAttribute("choosebooks", list);
		request.setAttribute("pageTotal", pageTotal);
		request.getRequestDispatcher("bookdetail.jsp").forward(request,
				response);
	}
}