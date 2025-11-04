package com.recipe.model;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

public class Mealkit {
	private int kitid;
	private String kititle;
	private String kitintroduce;
	private String kitag;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate kitwritedate;
	private LocalDate kitfixdate;
	private int recommend;
	private String imagepath;
	private String userid;
	public int getKitid() {
		return kitid;
	}
	public void setKitid(int kitid) {
		this.kitid = kitid;
	}
	public String getKititle() {
		return kititle;
	}
	public void setKititle(String kititle) {
		this.kititle = kititle;
	}
	public String getKitintroduce() {
		return kitintroduce;
	}
	public void setKitintroduce(String kitintroduce) {
		this.kitintroduce = kitintroduce;
	}
	public String getKitag() {
		return kitag;
	}
	public void setKitag(String kitag) {
		this.kitag = kitag;
	}
	public LocalDate getKitwritedate() {
		return kitwritedate;
	}
	public void setKitwritedate(LocalDate kitwritedate) {
		this.kitwritedate = kitwritedate;
	}
	public LocalDate getKitfixdate() {
		return kitfixdate;
	}
	public void setKitfixdate(LocalDate kitfixdate) {
		this.kitfixdate = kitfixdate;
	}
	public int getRecommend() {
		return recommend;
	}
	public void setRecommend(int recommend) {
		this.recommend = recommend;
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
