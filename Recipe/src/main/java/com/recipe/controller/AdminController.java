package com.recipe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.recipe.model.RecipeUser;
import com.recipe.service.RecipeUserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	RecipeUserService ruservice;
	
	@GetMapping("/dashboard")
	public String dashboard() {
		return "admin/dashboard";
	}
	
	@GetMapping("/allusers")
	public String userList(Model model) {
		List<RecipeUser> users = ruservice.findAll();
		model.addAttribute("users", users);
		return "admin/userlist";
	}
}
