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

import com.recipe.model.Recipe;
import com.recipe.model.RecipeUser;
import com.recipe.service.RecipeService;
import com.recipe.service.RecipeUserService;

@Controller
@RequestMapping("/post")
public class RecipeController {
	final String uploadPath = "d:/upload/";
	
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
		String add(Recipe item, HttpSession session, @RequestParam("file") MultipartFile uploadFile) {
		String userid = (String) session.getAttribute("userid");
		
		if (userid == null) {
	        return "redirect:/login"; 
	    }
		
		if(!uploadFile.isEmpty()) {
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
		
		item.setUserid(userid);
		rservice.add(item);
		return "redirect:mypage";
	}
	
	@PostMapping("/profile")
	String addProfile(@RequestParam("profilefile") MultipartFile imageFile, Model model) {
		if(!imageFile.isEmpty()) {
			String profileFileName = UUID.randomUUID().toString() + "-" + imageFile.getOriginalFilename();
			File profileImage = new File(uploadPath, profileFileName);
			
			try {
				imageFile.transferTo(profileImage);
				model.addAttribute("profileImage", "/upload/" + profileFileName);
			} catch (IOException e) {
				e.printStackTrace();
				model.addAttribute("profileImage", "/images/defaultprofile.jpg");
			}
		}
		List<Recipe> list = rservice.list();
		model.addAttribute("list", list);
		
		return "post/mypage";
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
	
	@GetMapping("/detail/{recipeid}")
	String detail(@PathVariable int recipeid, Model model) {
		Recipe item = rservice.item(recipeid);
		
		model.addAttribute("item", item);
		
		return "post/detail";
	}
}

