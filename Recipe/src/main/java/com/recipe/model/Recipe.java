package com.recipe.model;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

public class Recipe {
	private int recipeid;
	private String recipetitle;
	private String introduce;
	private String recipetag;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate recipewritedate;
	private LocalDate recipefixdate;
	private int recipeviews;
	private int recommend;
	private boolean isprivate;
	private String imagepath;
	private int maincategoryid;
	private String userid;
	
	public int getRecipeid() {
		return recipeid;
	}
	public void setRecipeid(int recipeid) {
		this.recipeid = recipeid;
	}
	public String getRecipetitle() {
		return recipetitle;
	}
	public void setRecipetitle(String recipetitle) {
		this.recipetitle = recipetitle;
	}
	public LocalDate getRecipewritedate() {
		return recipewritedate;
	}
	public void setRecipewritedate(LocalDate recipewritedate) {
		this.recipewritedate = recipewritedate;
	}
	public LocalDate getRecipefixdate() {
		return recipefixdate;
	}
	public void setRecipefixdate(LocalDate recipefixdate) {
		this.recipefixdate = recipefixdate;
	}
	public int getRecipeviews() {
		return recipeviews;
	}
	public void setRecipeviews(int recipeviews) {
		this.recipeviews = recipeviews;
	}
	public int getRecommend() {
		return recommend;
	}
	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}
	public boolean isIsprivate() {
		return isprivate;
	}
	public void setIsprivate(boolean isprivate) {
		this.isprivate = isprivate;
	}
	public int getMaincategoryid() {
		return maincategoryid;
	}
	public void setMaincategoryid(int maincategoryid) {
		this.maincategoryid = maincategoryid;
	}
	public String getRecipetag() {
		return recipetag;
	}
	public void setRecipetag(String recipetag) {
		this.recipetag = recipetag;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getImagepath() {
		return imagepath;
	}
	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
}
