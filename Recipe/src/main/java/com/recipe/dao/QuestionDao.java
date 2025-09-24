package com.recipe.dao;

import java.util.List;

import com.recipe.model.Question;
import com.recipe.pager.Pager;

public interface QuestionDao {

	void add(Question item);

	List<Question> list(Pager pager);

	void delete(int questionid);

	int total(Pager pager);
}
