package com.recipe.service;

import java.util.List;

import com.recipe.model.Ingredient;
import com.recipe.model.Recipe;

public interface RecipeService {

	List<Recipe> list();

	void add(Recipe item);

	Recipe item(int recipeid);
	
	Ingredient ingredient(int recipeid);

	void update(Recipe item);

	void delete(int recipeid);

	void addmore(Ingredient ingredient);

	void updatemore(Ingredient ingredient);

	int recup(int recipeid);

	int recview(int recipeid);

	void viewsup(int recipeid);

}
