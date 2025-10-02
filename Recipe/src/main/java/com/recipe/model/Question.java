package com.recipe.model;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

public class Question {
	private int questionid;
	private String questiontitle;
	private String questioncontent;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate questiondate;
	private LocalDate questionfixdate;
	private Boolean ischecked;
	private String userid;
	private String imagepath;
	public int getQuestionid() {
		return questionid;
	}
	public void setQuestionid(int questionid) {
		this.questionid = questionid;
	}
	public String getQuestiontitle() {
		return questiontitle;
	}
	public void setQuestiontitle(String questiontitle) {
		this.questiontitle = questiontitle;
	}
	public String getQuestioncontent() {
		return questioncontent;
	}
	public void setQuestioncontent(String questioncontent) {
		this.questioncontent = questioncontent;
	}
	public LocalDate getQuestiondate() {
		return questiondate;
	}
	public void setQuestiondate(LocalDate questiondate) {
		this.questiondate = questiondate;
	}
	public LocalDate getQuestionfixdate() {
		return questionfixdate;
	}
	public void setQuestionfixdate(LocalDate questionfixdate) {
		this.questionfixdate = questionfixdate;
	}
	public Boolean getIschecked() {
		return ischecked;
	}
	public void setIschecked(Boolean ischecked) {
		this.ischecked = ischecked;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getImagepath() {
		return imagepath;
	}
	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}
}
