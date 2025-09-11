package com.recipe.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.recipe.model.RecipeUser;

@Repository
public class RecipeUserDaoImpl implements RecipeUserDao{

	@Autowired
	SqlSession sql;

	@Override
	public RecipeUser item(String userid) {
		return sql.selectOne("recipeuser.item", userid);
	}

	@Override
	public void add(RecipeUser item) {
		sql.insert("recipeuser.add", item);
	}

	@Override
	public void update(RecipeUser item) {
		sql.update("recipeuser.update", item);
	}
}
