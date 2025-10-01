package com.recipe.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.recipe.model.RecipeUser;
import com.recipe.service.QuestionService;
import com.recipe.service.RecipeUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	RecipeUserService rservice;
	
	@Autowired
	QuestionService qservice;
	
	@GetMapping("/update/{userid}")
	String update(@PathVariable String userid, Model model) {
		RecipeUser item = rservice.item(userid);
		
		model.addAttribute("item", item);
		return "user/update";
	}
	
	@PostMapping("/update/{userid}")
	String update(@PathVariable String userid, RecipeUser item) {
		item.setUserid(userid);
		
		rservice.update(item);
		return "redirect:/post/mypage";
	}
	
	@GetMapping("/changepw/{userid}")
	String changepw() {
		
		return "user/changepw";
	}
	
	@PostMapping("/changepw/{userid}")
	String changepw(@RequestParam("newpw") String newpw, HttpSession session, RedirectAttributes redirectAttributes) {
		//String encodedPw = passwordEncoder.encode(newpw);   Spring security 사용시
		
		RecipeUser user = (RecipeUser) session.getAttribute("user");
		
		user.setUserpw(newpw);
		rservice.update(user);
		
		redirectAttributes.addFlashAttribute("resetpw", true);
		
		return "user/changepw";
	}
}
