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
	public boolean login(RecipeUser recipeuser) {
		RecipeUser result = dao.item(recipeuser.getUserid());
		
		if(result != null && recipeuser.getUserpw().equals(result.getUserpw())) {
			BeanUtils.copyProperties(result, recipeuser);
			recipeuser.setUserpw(null);
			
			return true;
		}
		
		return false;
	}

	@Override
	public void add(RecipeUser item) {
		dao.add(item);
	}
}
