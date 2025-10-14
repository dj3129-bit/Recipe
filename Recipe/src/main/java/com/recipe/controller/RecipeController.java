package com.recipe.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.recipe.model.Ingredient;
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
		model.addAttribute("userid", userid);
		
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
		String add(Recipe item, @ModelAttribute Ingredient ingredient, HttpSession session, @RequestParam("file") MultipartFile uploadFile) {
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
		
		ingredient.setRecipeid(item.getRecipeid());
		rservice.addmore(ingredient);
		
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
		Ingredient ingredient = rservice.ingredient(recipeid);
		
		model.addAttribute("item", item);
		model.addAttribute("ingredient", ingredient);
		return "post/update";
	}
	
	@PostMapping("/update/{recipeid}")
	String update(@PathVariable int recipeid, Recipe item, @ModelAttribute Ingredient ingredient) {
		item.setRecipeid(recipeid);
		ingredient.setRecipeid(item.getRecipeid());
		
		rservice.update(item);
		rservice.updatemore(ingredient);
		return "redirect:/post/mypage";
	}
	
	@GetMapping("/delete/{recipeid}")
	String delete(@PathVariable int recipeid) {
		rservice.delete(recipeid);
		
		return "redirect:/post/mypage";
	}
	
	@GetMapping("/detail/{recipeid}")
	String detail(@PathVariable int recipeid, Model model) {
		rservice.viewsup(recipeid);
		
		Recipe item = rservice.item(recipeid);
		Ingredient ingredient = rservice.ingredient(recipeid);
		
		model.addAttribute("item", item);
		model.addAttribute("ingredient", ingredient);
		return "post/detail";
	}
	
	@PostMapping("/recommend")
	@ResponseBody
	public Map<String, Object> recommend(@RequestBody Map<String, Object> payload) {
		Map<String, Object> result = new HashMap<>();
		try {
			int recipeid = Integer.parseInt(payload.get("recipeid").toString());
			rservice.recup(recipeid);
			int recommend = rservice.recview(recipeid);
			
			Recipe item = rservice.item(recipeid);
			result.put("success", true);
			result.put("recommend", item.getRecommend());
		}catch(Exception e) {
			e.printStackTrace();
			result.put("success", false);
		}
		return result;
	}
	
	@GetMapping("/hotpost")
	String hotpost(Model model) {
		List<Recipe> list = rservice.list();
		
		// 추천수 기준 내림차순 정렬
		List<Recipe> recommendList = new ArrayList<>(list);
		recommendList.sort((a, b) -> Integer.compare(b.getRecommend(), a.getRecommend()));
		
		// 조회수 기준 내림차순 정렬
	    List<Recipe> viewList = new ArrayList<>(list);
	    viewList.sort((a, b) -> Integer.compare(b.getRecipeviews(), a.getRecipeviews()));
	    
	    model.addAttribute("recommendList", recommendList);
	    model.addAttribute("viewList", viewList);
		
		return "post/hotpost";
	}
}

