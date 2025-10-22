package com.recipe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recipe.dao.QuestionDao;
import com.recipe.model.Notification;
import com.recipe.model.Question;
import com.recipe.pager.Pager;

@Service
public class QuestionServiceImpl implements QuestionService {
	
	@Autowired
	QuestionDao dao;

	@Override
	public void add(Question item) {
		dao.add(item);
	}

	@Override
	public List<Question> list(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Override
	public void delete(int questionid) {
		dao.delete(questionid);
	}

	@Override
	public void add(Notification item) {
		dao.add(item);
	}

	@Override
	public List<Notification> nlist(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.nlist(pager);
	}
}
