package com.bean;

import java.io.Serializable;

public class Company implements Serializable{
	private static final long serialVersionUID = 1L;
	private int com_id;
	private String com_name;
	private String com_principal;
	private String com_source;
	private String com_industry;
	private String com_people;
	private String com_money;
	private String com_education;
	private String com_address;
	private Integer start;            // 起始行
	private Integer rows;
	public int getCom_id() {
		return com_id;
	}
	public void setCom_id(int com_id) {
		this.com_id = com_id;
	}
	public String getCom_name() {
		return com_name;
	}
	public void setCom_name(String com_name) {
		this.com_name = com_name;
	}
	public String getCom_principal() {
		return com_principal;
	}
	public void setCom_principal(String com_principal) {
		this.com_principal = com_principal;
	}
	public String getCom_source() {
		return com_source;
	}
	public void setCom_source(String com_source) {
		this.com_source = com_source;
	}
	public String getCom_industry() {
		return com_industry;
	}
	public void setCom_industry(String com_industry) {
		this.com_industry = com_industry;
	}
	public String getCom_people() {
		return com_people;
	}
	public void setCom_people(String com_people) {
		this.com_people = com_people;
	}
	public String getCom_money() {
		return com_money;
	}
	public void setCom_money(String com_money) {
		this.com_money = com_money;
	}
	public String getCom_education() {
		return com_education;
	}
	public void setCom_education(String com_education) {
		this.com_education = com_education;
	}
	public String getCom_address() {
		return com_address;
	}
	public void setCom_address(String com_address) {
		this.com_address = com_address;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	
}
