package com.recipe.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.recipe.model.Recipe;
import com.recipe.model.RecipeUser;
import com.recipe.service.RecipeService;
import com.recipe.service.RecipeUserService;

@Controller
@RequestMapping("/post")
public class RecipeController {
	@Autowired
	RecipeService rservice;
	
	@Autowired
	RecipeUserService ruservice;
	
	@GetMapping("/mypage")
	String list(HttpSession session, Model model) {
		List<Recipe> list = rservice.list();
		model.addAttribute("list", list);
		
		String userid = (String) session.getAttribute("userid");
		if(userid != null) {
			RecipeUser recipeuser = ruservice.item(userid);
			model.addAttribute("item", recipeuser);
		}
		
		return "post/mypage";
	}
	
	@GetMapping("/add")
	String add() {
		return "post/add";
	}
	
	@PostMapping("/add")
	String add(Recipe item, HttpSession session) {
		String userid = (String) session.getAttribute("userid");
		
		if (userid == null) {
	        return "redirect:/login"; 
	    }
		
		item.setUserid(userid);
		rservice.add(item);
		
		return "redirect:mypage";
	}
	
	@GetMapping("/update/{recipeid}")
	String update(@PathVariable int recipeid, Model model) {
		Recipe item = rservice.item(recipeid);
		
		model.addAttribute("item", item);
		return "post/update";
	}
	
	@PostMapping("/update/{recipeid}")
	String update(@PathVariable int recipeid, Recipe item) {
		item.setRecipeid(recipeid);
		
		rservice.update(item);
		return "redirect:/post/mypage";
	}
	
	@GetMapping("/delete/{recipeid}")
	String delete(@PathVariable int recipeid) {
		rservice.delete(recipeid);
		
		return "redirect:/post/mypage";
	}
	
	@GetMapping("/question")
	String question() {
		return "user/question";
	}
}

