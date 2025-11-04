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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.recipe.model.Mealkit;
import com.recipe.model.Notification;
import com.recipe.model.Recipe;
import com.recipe.model.RecipeUser;
import com.recipe.pager.Pager;
import com.recipe.service.MealkitService;
import com.recipe.service.QuestionService;
import com.recipe.service.RecipeUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	RecipeUserService rservice;
	
	@Autowired
	QuestionService qservice;
	
	//레시피 수정 페이지
	@GetMapping("/update/{userid}")
	String update(@PathVariable String userid, Model model) {
		RecipeUser item = rservice.item(userid);
		
		model.addAttribute("item", item);
		return "user/update";
	}
	
	//레시피 수정 폼 제출
	@PostMapping("/update/{userid}")
	String update(@PathVariable String userid, @ModelAttribute("item") @Valid RecipeUser item, BindingResult bindingResult) {
		item.setUserid(userid);
		
		if (bindingResult.hasErrors()) {
	        return "user/update"; 
	    }
		
		rservice.update(item);	
		return "redirect:/post/mypage";
	}
	
	@PostMapping("/userout")
	String delete(@PathVariable String userid) {
		rservice.delete(userid);
		return "redirect:/";
	}
	
	//비밀번호 변경 페이지
	@GetMapping("/changepw/{userid}")
	String changepw(@PathVariable String userid) {
		
		return "user/changepw";
	}
	
	//비밀번호 변경 폼 제출
	@PostMapping("/changepw/{userid}")
	String changepw(@RequestParam("newpw") String newpw, HttpSession session, RedirectAttributes redirectAttributes) {
		//String encodedPw = passwordEncoder.encode(newpw);   Spring security 사용시
		
		RecipeUser recipeUser = (RecipeUser) session.getAttribute("recipeuser");
		
		recipeUser.setUserpw(newpw);
		rservice.update(recipeUser);
		
		redirectAttributes.addFlashAttribute("resetpw", true);
		
		return "redirect:/post/mypage";
	}
	
	//고객센터 페이지
	@GetMapping("/usercenter")
	String usercenter(Model model, Pager pager) {
		List<Notification> nlist = qservice.nlist(pager);
		model.addAttribute("nlist", nlist);
		
		return "user/usercenter";
	}
	
		
}
