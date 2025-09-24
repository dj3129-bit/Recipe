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

import com.recipe.model.Question;
import com.recipe.pager.Pager;
import com.recipe.service.QuestionService;
import com.recipe.service.RecipeUserService;

@Controller
@RequestMapping("/user")
public class QuestionController {
	@Autowired
	QuestionService service;
	
	@GetMapping("/question")
	String question() {
		return "user/question";
	}
	
	 @PostMapping("/question") 
	 String add(Question item, HttpSession session) {
		String userid = (String) session.getAttribute("userid");
		item.setUserid(userid);
		service.add(item);
	 
	 	return "redirect:/user/list"; 
	 }
	 
	 @GetMapping("/list")
	 String list(Model model, Pager pager) {
		List<Question> list = service.list(pager);
		
		model.addAttribute("list", list);
		return "user/list";
	 }
	 
	 @GetMapping("/delete/{questionid}")
		String delete(@PathVariable int questionid) {
			service.delete(questionid);
			
			return "redirect:/user/list";
		}
}
