package com.tuzki.vo;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="Topic")
public class Topic {
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String title;
	private String content;
	private String type;
	private Date createat;
	private User user;
	private Integer pv;
	
	/** default constructor */
	public Topic() {}

	/** full constructor */
	public Topic(String title, String content, String type, Date createat, User user, Integer pv) {
		this.title = title;
		this.content = content;
		this.type = type;
		this.createat = createat;
		this.user = user;
		this.pv = pv;
	}
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	@GenericGenerator(name="paymentableGenerator",strategy = "native")
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	@Column(name="title")
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	@Column(name="content")
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	@Column(name="type")
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@Column(name="createat")
	public Date getCreateat() {
		return createat;
	}
	public void setCreateat(Date createat) {
		this.createat = createat;
	}
	
	@ManyToOne()
	@JoinColumn(name = "userid")
	/*@Basic(fetch=FetchType.LAZY)*/
	public User getUser() {
		return this.user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	@Column(name="pv")
	public Integer getPv() {
		return pv;
	}
	public void setPv(Integer pv) {
		this.pv = pv;
	}
	
	
}
