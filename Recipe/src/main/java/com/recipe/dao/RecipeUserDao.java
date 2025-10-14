package com.recipe.dao;

import java.util.List;

import com.recipe.model.RecipeUser;

public interface RecipeUserDao {

	RecipeUser item(String userid);

	void add(RecipeUser item);

	void update(RecipeUser item);

	String findUserId(String username, String useremail);

	void delete(String userid);

	List<RecipeUser> findAll();

}
