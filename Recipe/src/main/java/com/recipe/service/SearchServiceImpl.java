package com.recipe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recipe.dao.SearchDao;
import com.recipe.model.Recipe;

@Service
public class SearchServiceImpl implements SearchService {

	@Autowired
	SearchDao dao;
	
	@Override
	public List<Recipe> search(String keyword) {
		return dao.search(keyword);
	}

}
