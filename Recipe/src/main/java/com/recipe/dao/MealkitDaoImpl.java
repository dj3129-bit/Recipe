package com.recipe.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.recipe.model.Mealkit;

@Repository
public class MealkitDaoImpl implements MealkitDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Mealkit item) {
		sql.insert("mealkit.add", item);
	}

	@Override
	public List<Mealkit> list() {
		return sql.selectList("mealkit.list");
	}

	@Override
	public Mealkit item(int kitid) {
		return sql.selectOne("mealkit.item", kitid);
	}

}
