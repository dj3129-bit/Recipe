package com.recipe.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.recipe.util.JwtUtil;

public class JwtInterceptor implements HandlerInterceptor{
	
	//HTTP Basic -> Bearer
	private final String TOKEN_PREFIX = "Bearer ";
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String authHeader = request.getHeader("Authorization");
        
        //로그인, 회원가입은 예외처리
        String uri = request.getRequestURI();
        if (uri.startsWith("/login") || uri.startsWith("/signup")) {
            return true;
        }
        
        if (authHeader != null && authHeader.startsWith("Bearer ")) {
            String token = authHeader.substring(TOKEN_PREFIX.length());
            String user = JwtUtil.validateToken(token);
            
            if (user != null) {
                return true;
            }
        }
        
        //토큰 없거나 잘못된 경우
        response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
        return false;
    }

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {	
	}

}
