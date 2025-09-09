package com.recipe.service;

import com.recipe.model.RecipeUser;

public interface RecipeUserService {

	boolean login(RecipeUser recipeuser);

	void add(RecipeUser item);
}
