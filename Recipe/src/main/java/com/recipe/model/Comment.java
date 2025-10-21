package com.recipe.model;

import java.time.LocalDateTime;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Comment {
	private int commentid;
	private int recipeid;
	private String commentcontent;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm")
	private Date commentdate;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm")
	private Date commentfixdate;
	private Boolean isreport;
	private String userid;
	public Comment() {}
	
	public int getCommentid() {
		return commentid;
	}
	public void setCommentid(int commentid) {
		this.commentid = commentid;
	}
	public int getRecipeid() {
		return recipeid;
	}
	public void setRecipeid(int recipeid) {
		this.recipeid = recipeid;
	}
	public String getCommentcontent() {
		return commentcontent;
	}
	public void setCommentcontent(String commentcontent) {
		this.commentcontent = commentcontent;
	}
	public Date getCommentdate() {
		return commentdate;
	}
	public void setCommentdate(Date commentdate) {
		this.commentdate = commentdate;
	}
	public Date getCommentfixdate() {
		return commentfixdate;
	}
	public void setCommentfixdate(Date commentfixdate) {
		this.commentfixdate = commentfixdate;
	}
	public Boolean getIsreport() {
		return isreport;
	}
	public void setIsreport(Boolean isreport) {
		this.isreport = isreport;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
}
