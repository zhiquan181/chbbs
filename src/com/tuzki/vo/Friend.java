package com.tuzki.vo;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="friend")
public class Friend implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private int aid;
	private int bid;

	/** default constructor */
	public Friend() {}

	/** full constructor */
	public Friend(int aid, int bid) {
		this.aid = aid;
		this.bid = bid;
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

	@Column(name="Aid")
	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	@Column(name="Bid")
	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}
}