package com.recipe.service;

import java.util.List;

import com.recipe.model.Question;

public interface QuestionService {

	void add(Question item);

	List<Question> list();

	void delete(int questionid);
}
