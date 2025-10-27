package com.recipe.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recipe.model.Recipe;
import com.recipe.model.RecipeUser;
import com.recipe.service.RecipeService;
import com.recipe.service.RecipeUserService;
import com.recipe.service.SearchService;

@Controller
public class RootController {
	
	@Autowired
	RecipeUserService service;
	
	@Autowired
	RecipeService rservice;
	
	@Autowired
	SearchService sservice;

	//메인 페이지
	@GetMapping("/")
	String index(Model model){
		List<Recipe> list = rservice.list();
		model.addAttribute("list", list);
		
		return "index";
	}	
	
	////로그인 페이지
	@GetMapping("/login")
	String login() {
		return "login";
	}
	
	//로그인 폼 제출
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
	
	//약관 동의
	@GetMapping("/agree")
	String agree() {
		return "agree";
	}
	
	//회원가입 페이지
	@GetMapping("/signup")
	String signup(Model model) {
		model.addAttribute("recipeuser", new RecipeUser());
		
		return "signup";
	}
	
	//회원가입 폼 제출
	@PostMapping("/signup")
	String signup(@ModelAttribute("recipeuser") @Valid RecipeUser recipeuser, 
			BindingResult bindingResult,
			@RequestParam("emailid") String emailid,
            @RequestParam("domain") String domain,
            Model model) {
		
		if (bindingResult.hasErrors()) {
	        return "signup"; 
	    }
		
		recipeuser.setUseremail(emailid + "@" + domain);
		
		service.add(recipeuser);
		
		return "redirect:welcome";
	}
	
	//로그아웃
	@GetMapping("/logout")
	String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
	//아이디찾기 페이지
	@GetMapping("/findid")
	String findid() {
		return "findid";
	}
	
	//아이디찾기 폼 제출
	@PostMapping("/findid")
	String findid(String username, String useremail, Model model) {
		String userId = service.findUserId(username, useremail);
		model.addAttribute("userId", userId);
		return "findresult";
	}
	
	//아이디찾기 완료 페이지
	@GetMapping("/findresult")
	String findresult() {
		return "findresult";
	}
	
	//회원가입 완료 및 환영 페이지
	@GetMapping("/welcome")
	String welcome() {
		return "welcome";
	}
	
	//중복확인
	@ResponseBody
	@GetMapping("/check_id/{userid}")
	String checkId(@PathVariable String userid) {
		if(service.checkId(userid))
			return "OK";
		return "FAIL";
	}
	
	//레시피 상세페이지
	@GetMapping("/detail/{recipeid}")
	String detail(@PathVariable int recipeid, Model model) {
		Recipe item = rservice.item(recipeid);
		
		model.addAttribute("item", item);
		
		return "redirect:/post/detail";
	}
	
	//비밀번호 찾기 페이지
	@GetMapping("/findpw")
	String findpw() {
		return "findpw";
	}
	
	//검색기능
	@GetMapping("/search")
	String search(@RequestParam("q") String keyword, Model model) {
		List<Recipe> results = sservice.search(keyword);
		model.addAttribute("results", results);
		return "searchresult";
	}
}
