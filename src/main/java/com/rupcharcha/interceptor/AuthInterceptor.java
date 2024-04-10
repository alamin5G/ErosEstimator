package com.rupcharcha.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.rupcharcha.entity.User;

public class AuthInterceptor implements HandlerInterceptor {
	
	@Autowired
	HttpSession session;

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub

		
		User user = (User) request.getSession().getAttribute("loginSuccess");
		if(user != null) {
			return true;
		}else {
			response.getWriter().write("<h2>Invalid Access Request..</h2>");
			session.setAttribute("msg", "Please, Login First...");
			String path = request.getContextPath();
			response.sendRedirect(path+"/user-login");
			return false;
		}
		
		
	}

}
