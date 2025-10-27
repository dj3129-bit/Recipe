package com.recipe.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.recipe.model.Recipe;

public interface SearchDao {

	List<Recipe> search(@Param("q") String keyword);

}
