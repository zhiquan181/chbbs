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
@Table(name="Water")
public class Water {
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String content;
	private Date createat;
	private User user;
	private Topic topic;
	private Integer praise;
	
	/** default constructor */
	public Water() {}

	/** full constructor */
	public Water(String content, Date createat, User user, Topic topic, Integer praise) {
		this.content = content;
		this.createat = createat;
		this.user = user;
		this.topic = topic;
		this.praise = praise;
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
		
	@Column(name="content")
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	
	@ManyToOne()
	@JoinColumn(name = "topicid")
	/*@Basic(fetch=FetchType.LAZY)*/
	public Topic getTopic() {
		return this.topic;
	}
	public void setTopic(Topic topic) {
		this.topic = topic;
	}
	
	@Column(name="praise")
	public Integer getPraise() {
		return praise;
	}
	public void setPraise(Integer praise) {
		this.praise = praise;
	}
	
	
}
