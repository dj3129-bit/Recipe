package com.recipe.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recipe.model.Ingredient;
import com.recipe.model.Recipe;
import com.recipe.model.RecipeUser;
import com.recipe.service.RecipeService;
import com.recipe.service.RecipeUserService;

@Controller
public class RootController {
	
	@Autowired
	RecipeUserService service;
	
	@Autowired
	RecipeService rservice;

	@GetMapping("/")
	String index(Model model){
		List<Recipe> list = rservice.list();
		model.addAttribute("list", list);
		
		return "index";
	}	
	
	@GetMapping("/login")
	String login() {
		return "login";
	}
	
	@PostMapping("/login")
	String login(RecipeUser recipeuser, HttpSession session, Model model) {
		RecipeUser recipeUser = service.login(recipeuser); 
		if(recipeUser != null) {
			session.setAttribute("userid", recipeUser.getUserid());
			session.setAttribute("recipeuser", recipeUser);
			return "redirect:.";
		} 
		
		model.addAttribute("loginError", "아이디 또는 비밀번호를 다시 입력해주세요.");
		return "login";
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
	String signup(String userid, String userpw, String username, String nickname, String usertel, 
			@RequestParam("emailid") String emailid,
            @RequestParam("domain") String domain) {
		String useremail = emailid + "@" + domain;
		
		RecipeUser item = new RecipeUser();
		item.setUserid(userid);
		item.setUserpw(userpw);
		item.setUsername(username);
		item.setNickname(nickname);
		item.setUsertel(usertel);
		item.setUseremail(useremail);
		
		service.add(item);
		
		return "redirect:welcome";
	}
	
	@GetMapping("/logout")
	String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
	@GetMapping("/findid")
	String findid() {
		return "findid";
	}
	
	@PostMapping("/findid")
	String findid(String username, String useremail, Model model) {
		String userId = service.findUserId(username, useremail);
		model.addAttribute("userId", userId);
		return "findresult";
	}
	
	@GetMapping("/findresult")
	String findresult() {
		return "findresult";
	}
	
	@GetMapping("/welcome")
	String welcome() {
		return "welcome";
	}
	
	@ResponseBody
	@GetMapping("/check_id/{userid}")
	String checkId(@PathVariable String userid) {
		if(service.checkId(userid))
			return "OK";
		return "FAIL";
	}
	
	@GetMapping("/detail/{recipeid}")
	String detail(@PathVariable int recipeid, Model model) {
		Recipe item = rservice.item(recipeid);
		
		model.addAttribute("item", item);
		
		return "redirect:/post/detail";
	}
	
	@GetMapping("/findpw")
	String findpw() {
		return "findpw";
	}
	
	//검색기능
//	@GetMapping("/search")
//	String search(@RequestParam("keyword") String keyword, Model model) {
//		List<SearchResult> results = sservice.searchResult(keyword);
//		model.addAttribute("results", results);
//		return "searchresult";
//	}
}
