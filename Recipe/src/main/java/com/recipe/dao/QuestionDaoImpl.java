package com.recipe.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.recipe.model.Question;

@Repository
public class QuestionDaoImpl implements QuestionDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public void add(Question item) {
		sql.insert("question.add", item);
	}

	@Override
	public List<Question> list() {
		return sql.selectList("question.list");
	}
}
