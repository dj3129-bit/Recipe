package com.recipe.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.recipe.model.Recipe;

@Repository
public class RecipeDaoImpl implements RecipeDao{
	
	@Autowired
	SqlSession sql;

	@Override
	public List<Recipe> list() {
		return sql.selectList("recipe.list");
	}

	@Override
	public void add(Recipe item) {
		sql.insert("recipe.add", item);
	}
}
