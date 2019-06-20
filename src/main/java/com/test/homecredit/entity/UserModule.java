package com.test.homecredit.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;

@Entity
public class UserModule {

	@Size(max = 40)
	@Id
	private String id;

	@ManyToOne
	@JoinColumn(name = "USERCD")
	private User user;

	@ManyToOne
	@JoinColumn(name = "MODULE")
	private Module module;

	private int seq;
	private String createdBy;

	@Column(name = "CREATED_DT")
	private Date createdDate;

	private String updatedBy;

	@Column(name = "UPDATED_DT")
	private Date updatedDate;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Module getModule() {
		return module;
	}

	public void setModule(Module module) {
		this.module = module;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public String getUpdatedBy() {
		return updatedBy;
	}

	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}

	public Date getUpdatedDate() {
		return updatedDate;
	}

	public void setUpdatedDate(Date updatedDate) {
		this.updatedDate = updatedDate;
	}

}
