package com.recipe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recipe.dao.MealkitDao;
import com.recipe.model.Mealkit;

@Service
public class MealkitServiceImpl implements MealkitService {

	@Autowired
	MealkitDao dao;
	
	@Override
	public void add(Mealkit item) {
		dao.add(item);
	}

	@Override
	public List<Mealkit> list() {
		return dao.list();
	}
	
}
