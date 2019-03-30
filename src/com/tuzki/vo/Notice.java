package com.tuzki.vo;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="Notice")
public class Notice implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private String keynt;
	private String title;
	private String content;

	/** default constructor */
	public Notice() {}

	/** full constructor */
	public Notice(String keynt, String title,String content) {
		this.keynt = keynt;
		this.title = title;
		this.content = content;
	}
	
	@Id
	@Column(name="keynt")
	@GeneratedValue(strategy=GenerationType.AUTO)
	public String getKeynt() {
		return keynt;
	}

	public void setKeynt(String keynt) {
		this.keynt = keynt;
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


	
	

	
	
	
}