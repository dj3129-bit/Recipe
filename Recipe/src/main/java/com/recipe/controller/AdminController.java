package com.recipe.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.recipe.model.Mealkit;
import com.recipe.model.Notification;
import com.recipe.model.RecipeUser;
import com.recipe.service.MealkitService;
import com.recipe.service.QuestionService;
import com.recipe.service.RecipeUserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	final String uploadPath = "d:/upload/";
	
	@Autowired
	RecipeUserService ruservice;
	
	@Autowired
	QuestionService qservice;
	
	@Autowired
	MealkitService mservice;
	
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
	
	//밀키트 등록 페이지
	@GetMapping("/kitadd")
	public String kitadd() {
		return "admin/kitadd";
	}
	
	//밀키트 등록
	@PostMapping("/kitadd")
	String add(Mealkit item, HttpSession session, @RequestParam("kitfile") MultipartFile uploadFile) {
		String userid = (String) session.getAttribute("userid");
		
		if (userid == null) {
	        return "redirect:/login"; 
	    }
		
		if(!uploadFile.isEmpty()) {
			String fileName = UUID.randomUUID().toString() + "-" + uploadFile.getOriginalFilename();
			File kitimage = new File(uploadPath, fileName);
			
			try {
				uploadFile.transferTo(kitimage);
				session.setAttribute("fileName", fileName);
				item.setImagepath("/upload/" + fileName);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		item.setUserid(userid);
		mservice.add(item);
		
		return "redirect:/user/mealkit";
	}
}
