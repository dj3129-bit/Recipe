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
	
	//관리자 대시보드
	@GetMapping("/dashboard")
	public String dashboard() {
		return "admin/dashboard";
	}
	
	//사용자 목록 조회
	@GetMapping("/userlist")
	public String userList(Model model) {
		List<RecipeUser> users = ruservice.findAll();
		model.addAttribute("users", users);
		return "admin/userlist";
	}
	
	//공지사항 등록
	@PostMapping("/dashboard")
	public String notify(Notification item, HttpSession session) {
		String userid = (String) session.getAttribute("userid");
		item.setUserid(userid);
		
		qservice.add(item);
		return "redirect:/user/usercenter"; 
	}
	
	//문의 유형
	public enum Status{
		NORMAL("일반"),
		REPLY("답변"),
		IMPORTANT("중요");
		
		private final String label;

	    Status(String label) {
	        this.label = label;
	    }

	    public String getLabel() {
	        return label;
	    }
	}
}
