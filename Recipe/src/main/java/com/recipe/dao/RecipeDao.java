package com.recipe.dao;

import java.util.List;

import com.recipe.model.Recipe;

public interface RecipeDao {

	List<Recipe> list();

	void add(Recipe item);

	Recipe item(int recipeid);

	void update(Recipe item);

	void delete(int recipeid);
}
