package com.recipe.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.recipe.model.RecipeUser;
import com.recipe.service.RecipeUserService;

@Controller
public class RootController {
	
	@Autowired
	RecipeUserService service;

	@GetMapping("/")
	String index(){
		return "index";
	}	
	
	@GetMapping("/login")
	String login() {
		return "login";
	}
	
	@PostMapping("/login")
	String login(RecipeUser recipeuser, HttpSession session) {
		if(service.login(recipeuser)) {
			session.setAttribute("recipeuser", recipeuser);
		}

		return "redirect:.";
	}
	
	@GetMapping("/agree")
	String agree() {
		return "agree";
	}
	
	@GetMapping("/signup")
	String signup() {
		return "signup";
	}
	
	@PostMapping("/signup")
	String signup(RecipeUser item) {
		service.add(item);
		
		return "redirect:welcome";
	}
	
	@GetMapping("/logout")
	String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:.";
	}
	
	@GetMapping("/findid")
	String findid() {
		return "findid";
	}
	
	@GetMapping("/welcome")
	String welcome() {
		return "welcome";
	}
	
	@GetMapping("/mypage")
	String mypage() {
		return "mypage";
	}
}
