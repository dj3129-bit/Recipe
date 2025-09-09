package com.recipe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recipe.dao.RecipeDao;
import com.recipe.model.Recipe;

@Service
public class RecipeServiceImpl implements RecipeService{
	
	@Autowired
	RecipeDao dao;

	@Override
	public List<Recipe> list() {
		return dao.list();
	}

	@Override
	public void add(Recipe item) {
		dao.add(item);
	}

}
