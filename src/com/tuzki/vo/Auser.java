package com.tuzki.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="auser")
public class Auser implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private String username;
	private String password;
	
	// Constructors

	/** default constructor */
	public Auser() {}

	/** full constructor */
	public Auser(String username, String password) {
		this.username = username;
		this.password = password;
	}

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	@GenericGenerator(name="paymentableGenerator",strategy = "native")
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name="username")
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	@Column(name="password")
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


}