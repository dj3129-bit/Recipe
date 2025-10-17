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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.recipe.model.Question;
import com.recipe.pager.Pager;
import com.recipe.service.QuestionService;

@Controller
@RequestMapping("/user")
public class QuestionController {
	final String uploadPath = "d:/upload/";
	
	@Autowired
	QuestionService service;
	
	@GetMapping("/question")
	String question() {
		return "user/question";
	}
	 
	//문의 등록
	 @PostMapping("/question") 
	 String add(Question item, HttpSession session, @RequestParam(value = "imagefile", required = false) MultipartFile uploadFile) {
		String userid = (String) session.getAttribute("userid");
		item.setUserid(userid);
	 
		if(uploadFile != null && !uploadFile.isEmpty()) {
			String fileName = UUID.randomUUID().toString() + "-" + uploadFile.getOriginalFilename();
			File image = new File(uploadPath, fileName);
			
			try {
				uploadFile.transferTo(image);
				session.setAttribute("fileName", fileName);
				item.setImagepath("/upload/" + fileName);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		service.add(item);
	 	return "redirect:/user/list"; 
	 }
	 
	//문의 목록 조회
	 @GetMapping("/list")
	 String list(Model model, Pager pager) {
		List<Question> list = service.list(pager);
		
		model.addAttribute("list", list);
		return "user/list";
	 }
	 
	 //문의 삭제
	 @GetMapping("/delete/{questionid}")
		String delete(@PathVariable int questionid) {
			service.delete(questionid);
			
			return "redirect:/user/list";
		}
}
