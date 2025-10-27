package com.recipe.service;

import java.util.List;

import com.recipe.model.Recipe;

public interface SearchService {

	List<Recipe> search(String keyword);

}
