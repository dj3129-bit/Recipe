package com.recipe.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.recipe.model.Recipe;

@Repository
public class SearchDaoImpl implements SearchDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Recipe> search(String keyword) {
		return sql.selectList("recipe.searchresult", keyword);
	}

}
