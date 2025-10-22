package com.recipe.model;

import java.sql.Timestamp;

import org.springframework.format.annotation.DateTimeFormat;

import com.recipe.controller.AdminController.Status;

public class Notification {
	private int notificationid;
	private String notifytitle;
	private Status type;
	private String message;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Timestamp createdate;
	private String userid;
	public int getNotificationid() {
		return notificationid;
	}
	public void setNotificationid(int notificationid) {
		this.notificationid = notificationid;
	}
	public String getNotifytitle() {
		return notifytitle;
	}
	public void setNotifytitle(String notifytitle) {
		this.notifytitle = notifytitle;
	}
	public Status getType() {
		return type;
	}
	public void setType(Status type) {
		this.type = type;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Timestamp getCreatedate() {
		return createdate;
	}
	public void setCreatedate(Timestamp createdate) {
		this.createdate = createdate;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	
}
