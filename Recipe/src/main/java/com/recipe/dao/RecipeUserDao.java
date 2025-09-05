package com.recipe.dao;

import com.recipe.model.RecipeUser;

public interface RecipeUserDao {

	RecipeUser item(String userid);

	void add(RecipeUser item);

}
