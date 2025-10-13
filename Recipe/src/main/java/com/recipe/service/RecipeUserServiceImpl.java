package com.recipe.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recipe.dao.RecipeUserDao;
import com.recipe.model.RecipeUser;

@Service
public class RecipeUserServiceImpl implements RecipeUserService{
	
	@Autowired
	RecipeUserDao dao;

	@Override
	public RecipeUser login(RecipeUser recipeuser) {
		RecipeUser result = dao.item(recipeuser.getUserid());
		
		if(result != null && recipeuser.getUserpw().equals(result.getUserpw())) {
			BeanUtils.copyProperties(result, recipeuser);
			result.setUserpw(null);
			
			return result;
		}
		
		return null;
	}

	@Override
	public void add(RecipeUser item) {
		dao.add(item);
	}

	@Override
	public RecipeUser item(String userid) {
		return dao.item(userid);
	}

	@Override
	public void update(RecipeUser item) {
		dao.update(item);
	}

	@Override
	public boolean checkId(String userid) {
		RecipeUser item = dao.item(userid);
		
		if(item ==  null)
			return true;
		
		return false;
	}

	@Override
	public String findUserId(String username, String useremail) {
		return dao.findUserId(username, useremail);
	}

	@Override
	public void delete(String userid) {
		dao.delete(userid);
	}
}
