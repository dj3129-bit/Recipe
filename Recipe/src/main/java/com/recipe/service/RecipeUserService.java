package com.recipe.service;

import org.springframework.stereotype.Service;

import com.recipe.model.RecipeUser;

@Service
public interface RecipeUserService {

	boolean login(RecipeUser recipeuser);

	void add(RecipeUser item);
}
