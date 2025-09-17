package com.recipe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recipe.dao.QuestionDao;
import com.recipe.model.Question;

@Service
public class QuestionServiceImpl implements QuestionService {
	
	@Autowired
	QuestionDao dao;

	@Override
	public void add(Question item) {
		dao.add(item);
	}

	@Override
	public List<Question> list() {
		return dao.list();
	}
}
