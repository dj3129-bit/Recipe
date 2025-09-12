package com.recipe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.recipe.model.RecipeUser;
import com.recipe.service.RecipeUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	RecipeUserService service;
	
	@GetMapping("/update/{userid}")
	String update(@PathVariable String userid, Model model) {
		RecipeUser item = service.item(userid);
		
		model.addAttribute("item", item);
		return "user/update";
	}
	
	@PostMapping("/update/{userid}")
	String update(@PathVariable String userid, RecipeUser item) {
		item.setUserid(userid);
		
		service.update(item);
		return "redirect:/post/mypage";
	}
	
	@GetMapping("/question")
	String question() {
		return "user/question";
	}
}
