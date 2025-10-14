package com.recipe.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	@Override
	public String findUserId(String username, String useremail) {
		Map<String, String> param = new HashMap<>();
		param.put("username", username);
		param.put("useremail", useremail);
		return sql.selectOne("recipeuser.findId", param);
	}

	@Override
	public void delete(String userid) {
		sql.delete("recipeuser.delete", userid);
	}

	@Override
	public List<RecipeUser> findAll() {
		return sql.selectList("recipeuser.item");
	}
}
