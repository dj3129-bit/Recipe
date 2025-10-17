package com.recipe.model;

import javax.validation.constraints.Size;

public class RecipeUser {
	@Size(min = 4, message = "아이디를 4글자 이상 입력하세요.")
	private String userid;
	
	@Size(min = 4, message = "비밀번호를 4글자 이상 입력하세요.")
	private String userpw;
	
	@Size(min = 2, message = "이름을 2글자 이상 입력하세요.")
	private String username;
	
	private String nickname;
	private String useremail;
	
	private String usertel;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUsertel() {
		return usertel;
	}
	public void setUsertel(String usertel) {
		this.usertel = usertel;
	}
}
