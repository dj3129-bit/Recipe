package com.recipe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.recipe.model.Recipe;
import com.recipe.service.RecipeService;

@Controller
@RequestMapping("/post")
public class RecipeController {
	@Autowired
	RecipeService service;
	
	@GetMapping("/mypage")
	String list(Model model) {
		List<Recipe> list = service.list();
		
		model.addAttribute("list", list);
		return "redirect:mypage";
	}
	
	@GetMapping("/add")
	String add() {
		return "post/add";
	}
	
	@PostMapping("/add")
	String add(Recipe item) {
		service.add(item);
		
		return "redirect:mypage";
	}
}

