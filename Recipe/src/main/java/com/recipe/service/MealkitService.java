package com.recipe.service;

import java.util.List;

import com.recipe.model.Mealkit;

public interface MealkitService {

	void add(Mealkit item);

	List<Mealkit> list();

	Mealkit item(int kitid);

}
