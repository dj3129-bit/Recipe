package com.recipe.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.recipe.model.Notification;
import com.recipe.model.RecipeUser;
import com.recipe.service.QuestionService;
import com.recipe.service.RecipeUserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	RecipeUserService ruservice;
	
	@Autowired
	QuestionService qservice;
	
	@GetMapping("/dashboard")
	public String dashboard() {
		return "admin/dashboard";
	}
	
	@GetMapping("/userlist")
	public String userList(Model model) {
		List<RecipeUser> users = ruservice.findAll();
		model.addAttribute("users", users);
		return "admin/userlist";
	}
	
	@PostMapping("/dashboard")
	public String notify(Notification item, HttpSession session) {
		String userid = (String) session.getAttribute("userid");
		item.setUserid(userid);
		
		qservice.add(item);
		return "redirect:/user/usercenter"; 
	}
	
	public enum Status{
		NORMAL,
		REPLY,
		IMPORTANT
	}
}
