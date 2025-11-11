package com.recipe.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.recipe.model.Comment;
import com.recipe.model.Ingredient;
import com.recipe.model.Mealkit;
import com.recipe.model.Recipe;
import com.recipe.model.RecipeUser;
import com.recipe.service.MealkitService;
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
	
	@Autowired
	MealkitService mservice;
	
	//마이페이지(레시피 목록 조회)
	@GetMapping("/mypage")
	String list(HttpSession session, Model model) {
		List<Recipe> list = rservice.list();
		String userid = (String) session.getAttribute("userid");
		
		model.addAttribute("list", list);
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
	
	//레시피 등록
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
	
	//프로필 사진 등록
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
	
	//레시피 수정 페이지
	@GetMapping("/update/{recipeid}")
	String update(@PathVariable int recipeid, Model model) {
		Recipe item = rservice.item(recipeid);
		Ingredient ingredient = rservice.ingredient(recipeid);
		
		model.addAttribute("item", item);
		model.addAttribute("ingredient", ingredient);
		return "post/update";
	}
	
	//레시피 수정 폼 제출
	@PostMapping("/update/{recipeid}")
	String update(@PathVariable int recipeid, Recipe item, @ModelAttribute Ingredient ingredient, HttpSession session, @RequestParam("file") MultipartFile changeFile) {
		item.setRecipeid(recipeid);
		ingredient.setRecipeid(item.getRecipeid());
		
		if(!changeFile.isEmpty()) {
			String newFileName = UUID.randomUUID().toString() + "-" + changeFile.getOriginalFilename();
			File newImage = new File(uploadPath, newFileName);
			
			try {
				changeFile.transferTo(newImage);
				session.setAttribute("fileName", newFileName);
				item.setImagepath("/upload/" + newFileName);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		rservice.update(item);
		rservice.updatemore(ingredient);
		return "redirect:/post/mypage";
	}
	
	//레시피 삭제
	@GetMapping("/delete/{recipeid}")
	String delete(@PathVariable int recipeid) {
		rservice.delete(recipeid);
		
		return "redirect:/post/mypage";
	}
	
	//레시피 상세보기
	@GetMapping("/detail/{recipeid}")
	String detail(@PathVariable int recipeid, Model model) {
		rservice.viewsup(recipeid);
		
		Recipe item = rservice.item(recipeid);
		Ingredient ingredient = rservice.ingredient(recipeid);
		List<Comment> comlist = rservice.comlist(recipeid);
		
		model.addAttribute("item", item);
		model.addAttribute("ingredient", ingredient);
		model.addAttribute("comlist", comlist);
		return "post/detail";
	}
	
	//레시피 추천 시 추천수 증가
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
	
	//Hot레시피 페이지
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
	
	//셰프 목록
	@GetMapping("/chef")
	String chef() {
		return "post/chef";
	}
	
	//댓글 추가
	@PostMapping("/comment")
	@ResponseBody
	Map<String, Object> comment(@RequestBody Comment comment, HttpSession session) {
		String userid = (String) session.getAttribute("userid");
		
		comment.setUserid(userid);
		comment.setCommentdate(Timestamp.valueOf(LocalDateTime.now()));
		rservice.comment(comment.getRecipeid(), comment);
		
		Map<String, Object> result = new HashMap<>();
		result.put("success", true);
		result.put("comment", comment);
		
		return result;
	}
	
	//밀키트 판매 페이지
	@GetMapping("/mealkit")
	String mealkit(Model model) {
		List<Mealkit> list = mservice.list();
		
		model.addAttribute("list", list);
		
		return "post/mealkit";
	}
	
	//밀키트 상세보기
	@GetMapping("/detail2/{kitid}")
	String detail2(@PathVariable int kitid, Model model) {
		//밀키트 조회수 기능 처리시 복구
		//rservice.viewsup(kitid);
		
		Mealkit item = mservice.item(kitid);
		
		model.addAttribute("item", item);
		return "post/detail2";
	}
	
	//밀키트 주문/결제
	@GetMapping("/order/{kitid}")
	String order(@PathVariable int kitid, Model model, 
			@RequestParam(required=false) String quantity,
			@RequestParam(required=false) String totalprice) {
		Mealkit item = mservice.item(kitid);
		
		model.addAttribute("quantity", quantity);
        model.addAttribute("totalprice", totalprice);
		model.addAttribute("item", item);
		return "post/order";
	}
	
//	@GetMapping("/favor")
//	String favor(@RequestParam("recipeid") int recipeid, HttpSession session, RedirectAttributes redirectAttributes) {
//		String userid = (String) session.getAttribute("userid");
//		if(userid != null) {
//			rservice.addfavor(userid, recipeid);
//		}
//		
//		redirectAttributes.addAttribute("recipeid", recipeid);
//		return "redirect:/post/detail/{recipeid}";
//	}
	
}

