package com.recipe.service;

import java.util.List;

import com.recipe.model.RecipeUser;

public interface RecipeUserService {

	RecipeUser login(RecipeUser recipeuser);

	void add(RecipeUser item);

	RecipeUser item(String userid);

	void update(RecipeUser item);

	boolean checkId(String userid);

	String findUserId(String username, String useremail);

	void delete(String userid);

	List<RecipeUser> findAll();
}
