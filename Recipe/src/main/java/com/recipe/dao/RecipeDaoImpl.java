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

	@Override
	public Recipe item(int recipeid) {
		return sql.selectOne("recipe.item", recipeid);
	}

	@Override
	public void update(Recipe item) {
		sql.update("recipe.update", item);
	}

	@Override
	public void delete(int recipeid) {
		sql.delete("recipe.delete", recipeid);
	}
}
