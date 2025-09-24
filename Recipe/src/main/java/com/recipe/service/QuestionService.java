package com.recipe.service;

import java.util.List;

import com.recipe.model.Question;
import com.recipe.pager.Pager;

public interface QuestionService {

	void add(Question item);

	List<Question> list(Pager pager);

	void delete(int questionid);
}
