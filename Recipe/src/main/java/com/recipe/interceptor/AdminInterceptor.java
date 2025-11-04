package com.recipe.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.recipe.model.RecipeUser;

public class AdminInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();
		
		RecipeUser recipeuser = (RecipeUser) session.getAttribute("recipeuser");
		
		if(recipeuser != null && recipeuser.getUserid().equals("admin"))
			return true;
		
		response.sendRedirect("/");
		
		return false;
	}
}
