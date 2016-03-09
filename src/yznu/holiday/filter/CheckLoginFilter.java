package yznu.holiday.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yznu.holiday.bean.AdminBean;
import yznu.holiday.bean.UserInfoBean;

public class CheckLoginFilter implements Filter {

	@Override
	public void init(FilterConfig fConfig) throws ServletException {

	}

	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		HttpSession session = request.getSession();
		String pathadd = request.getContextPath();
		String exclude = request.getRequestURI();
		UserInfoBean user = (UserInfoBean) session.getAttribute("user");
		AdminBean admin = (AdminBean) session.getAttribute("admin");
		if (admin == null && user == null
				&& !exclude.endsWith(pathadd + "/login.jsp")
				&& !exclude.endsWith(pathadd + "/register.jsp")
				&& !exclude.endsWith(pathadd + "/image.jsp")) {
			response.sendRedirect(pathadd + "/login.jsp");
			return;
		}
		try {
			chain.doFilter(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}