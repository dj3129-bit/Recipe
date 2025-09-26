package com.recipe.model;

public class Ingredient {
	private int recipeid;
	private int ingorder;
	private String ingname;
	private String quantity;
	private String unit;
	private String exp;
	public int getRecipeid() {
		return recipeid;
	}
	public void setRecipeid(int recipeid) {
		this.recipeid = recipeid;
	}
	public int getIngorder() {
		return ingorder;
	}
	public void setIngorder(int ingorder) {
		this.ingorder = ingorder;
	}
	public String getIngname() {
		return ingname;
	}
	public void setIngname(String ingname) {
		this.ingname = ingname;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getExp() {
		return exp;
	}
	public void setExp(String exp) {
		this.exp = exp;
	}
	
	
}
