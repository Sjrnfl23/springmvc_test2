package com.junefw.infra.modules.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.junefw.infra.modules.common.Constants;

public class CheckLoginSessionInterception extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		if (request.getSession().getAttribute("sessSeq") != null) {
			// by pass
		} else {
			System.out.println("비정상적인 접근");
			response.sendRedirect(Constants.URL_LOGINFORM);
            return false;
		}
		
		return super.preHandle(request, response, handler);
	}

}
