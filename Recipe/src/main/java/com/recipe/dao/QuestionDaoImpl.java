package com.recipe.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.recipe.model.Notification;
import com.recipe.model.Question;
import com.recipe.pager.Pager;

@Repository
public class QuestionDaoImpl implements QuestionDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public void add(Question item) {
		sql.insert("question.add", item);
	}

	@Override
	public List<Question> list(Pager pager) {
		return sql.selectList("question.list", pager);
	}

	@Override
	public void delete(int questionid) {
		sql.delete("question.delete", questionid);
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("question.total", pager);
	}

	@Override
	public void add(Notification item) {
		sql.insert("question.notifyadd", item);
	}

	@Override
	public List<Notification> nlist(Pager pager) {
		return sql.selectList("question.nlist", pager);
	}
}
