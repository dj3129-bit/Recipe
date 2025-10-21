package com.recipe.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.recipe.model.Comment;
import com.recipe.model.Ingredient;
import com.recipe.model.Recipe;

@Repository
public class RecipeDaoImpl implements RecipeDao{
	
	@Autowired
	SqlSession sql;

	@Override
	public List<Recipe> list() {
		return sql.selectList("recipe.list");
	}

	@Override
	public void add(Recipe item) {
		sql.insert("recipe.add", item);
	}

	@Override
	public Recipe item(int recipeid) {
		return sql.selectOne("recipe.item", recipeid);
	}
	
	@Override
	public Ingredient ingredient(int recipeid) {
		return sql.selectOne("ingredient.ingredient", recipeid);
	}

	@Override
	public void update(Recipe item) {
		sql.update("recipe.update", item);
	}

	@Override
	public void deletefirst(int recipeid) {
		sql.delete("ingredient.deletefirst", recipeid);    //재료 삭제
	}
	
	@Override
	public void delete(int recipeid) {
		sql.delete("recipe.delete", recipeid);    //레시피 삭제
	}

	@Override
	public void addmore(Ingredient ingredient) {
		sql.insert("ingredient.addmore", ingredient);   //재료 추가
	}

	@Override
	public void updatemore(Ingredient ingredient) {
		sql.update("ingredient.updatemore", ingredient);   //재료 수정
	}

	@Override
	public int recup(int recipeid) {
		return sql.update("recipe.recommend", recipeid);  //추천수 증가
	}
	
	@Override
	public int recview(int recipeid) {
	    return sql.selectOne("recipe.recview", recipeid); // 추천수 조회
	}

	@Override
	public void viewsup(int recipeid) {
		sql.update("recipe.viewsup", recipeid);   //조회수 증가
	}

	@Override
	public void comment(int recipeid, Comment comment) { 
		sql.insert("recipe.comment", comment);    //댓글 추가
	}

	@Override
	public List<Comment> comlist(int recipeid) {   
		return sql.selectList("recipe.comlist", recipeid);    //댓글 조회
	}

}
