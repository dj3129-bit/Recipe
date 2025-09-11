package com.recipe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

	@Override
	public Recipe item(int recipeid) {
		return dao.item(recipeid);
	}
	
	@Transactional
	@Override
	public void update(Recipe item) {
		dao.update(item);
	}

	@Override
	public void delete(int recipeid) {
		dao.delete(recipeid);
	}
}
