package com.tuzki.vo;

import javax.persistence.*;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="link")
public class Link implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private String title;
	private String domain;

	/** default constructor */
	public Link() {}

	/** full constructor */
	public Link(String title, String domain) {
		this.title = title;
		this.domain = domain;
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

	@Column(name="title")
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	@Column(name="domain")
	public String getDomain() {
		return this.domain;
	}

	public void setDomain(String domain) {
		this.domain = domain;
	}
	

	
	
	
}