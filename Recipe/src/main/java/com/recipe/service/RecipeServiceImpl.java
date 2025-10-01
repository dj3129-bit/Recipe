package com.recipe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recipe.dao.RecipeDao;
import com.recipe.model.Ingredient;
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
	
	@Override
	public Ingredient ingredient(int recipeid) {
		return dao.ingredient(recipeid);
	}
	
	@Transactional
	@Override
	public void update(Recipe item) {
		dao.update(item);
	}

	@Override
	@Transactional
	public void delete(int recipeid) {
		dao.deletefirst(recipeid);
		dao.delete(recipeid);
	}

	@Override
	public void addmore(Ingredient ingredient) {
		dao.addmore(ingredient);
	}

	@Override
	public void updatemore(Ingredient ingredient) {
		dao.updatemore(ingredient);
	}

	@Override
	public int recup(int recipeid) {
		return dao.recup(recipeid);
	}

	@Override
	public int recview(int recipeid) {
		return dao.recview(recipeid);
	}

}
