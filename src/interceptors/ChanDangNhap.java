package interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

public class ChanDangNhap implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		if(session.getAttribute("nd") == null) {
			String url = request.getRequestURI();
			url = url.substring(url.lastIndexOf("/") + 1);
			session.setAttribute("url", url);
			response.sendRedirect("dang-nhap");
			return false;
		}
		return true;
	}
}
