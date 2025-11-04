package com.recipe.dao;

import java.util.List;

import com.recipe.model.Mealkit;

public interface MealkitDao {

	void add(Mealkit item);

	List<Mealkit> list();

}
