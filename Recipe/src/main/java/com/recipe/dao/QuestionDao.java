package com.recipe.dao;

import java.util.List;

import com.recipe.model.Question;

public interface QuestionDao {

	void add(Question item);

	List<Question> list();

	void delete(int questionid);
}
