package com.tuzki.dao.impl;

import java.util.Date;
import java.util.List;
import com.tuzki.dao.BaseDAO;
import com.tuzki.dao.ITopicDAO;
import com.tuzki.vo.Topic;
import com.tuzki.vo.User;
import com.tuzki.vo.Water;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class TopicDAO extends BaseDAO implements ITopicDAO{

	@Override
	public int TopicAdd(Topic topic,int userid) {
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		
		User u =(User)session.get(User.class,userid);
        Date date = new Date();

		if(u!=null){
			Topic t = new Topic(topic.getTitle(),topic.getContent(),topic.getType(),date,u,1);
			session.save(t);
		}else{
			return 0;
		}
		// session.flush();
		tx.commit();
        session.close();
		return 1;
	}

	@Override
	public List topicLimitLeft() {
		Session session = getSession();
		String hql = "from Topic t order by createat desc";
		Query query = session.createQuery(hql);
	    query.setMaxResults(8);
		List topics=query.list();
		session.close();
		return topics;
	}
	
	@Override
	public List topicLimitRight() {
		Session session = getSession();
		String hql = "from Topic t order by pv desc";
		Query query = session.createQuery(hql);
	    query.setMaxResults(7);
		List topics=query.list();
		session.close();
		return topics;
	}
	
	@Override
	public List topicLimitTop() {
		Session session = getSession();
		String hql = "from Topic t ORDER BY RAND()";
		Query query = session.createQuery(hql);
	    query.setMaxResults(10);
		List topics=query.list();
		session.close();
		return topics;
	}

	@Override
	public List topicMyself(int userid) {
		Session session = getSession();		
		String hql = "from Topic where userid = "+userid;
		Query query = session.createQuery(hql);
		List topics=query.list();
		session.close();
		return topics;
	}

	@Override
	public int getTotalTopic() {
		Session session = getSession();
		String hql = "from Topic t";
		Query query = session.createQuery(hql);
		List topics=query.list();
		int totalSize = topics.size();
		session.close();
		return totalSize;
	}

	@Override
	public List getTopicPaging(Integer currentPage, int pageSize) {
		Session session = getSession();
		String hql = "from Topic t";
		Query query = session.createQuery(hql);
		//	确定游标
		int startRow = (currentPage-1)*pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List topics=query.list();
		session.close();
		return topics;
	}

	@Override
	public int topicDelete(int topicid) {
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		Topic u =(Topic)session.get(Topic.class,topicid); 
		session.delete(u);
		tx.commit();
		session.close();
		return 1;
	}

	@Override
	public Topic topicDetail(int topicid) {
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		Topic t =(Topic)session.get(Topic.class,topicid);
		t.setPv(t.getPv()+1);
		tx.commit();
		session.close();
		return t; 
	}

	@Override
	public int WaterAdd(Water water, int userid, int topicid) {
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		
		User u =(User)session.get(User.class,userid);
		Topic t =(Topic)session.get(Topic.class,topicid);
        Date date = new Date();

		if(u!=null && t!=null){
			Water w = new Water(water.getContent(),date,u,t,1);
			session.save(w);
		}else{
			return 0;
		}
		// session.flush();
		tx.commit();
        session.close();
		return 1;
	}

	@Override
	public List waterList(int topicid) {
		Session session = getSession();
		String hql = "from Water where topicid=?";
		Query query = session.createQuery(hql);
		query.setParameter(0, topicid);
		List<?> waters=query.list();
		System.out.println("DAO"+waters);
		session.close();
		return waters;
	}

	@Override
	public int getTotalWater() {
		Session session = getSession();
		String hql = "from Water w";
		Query query = session.createQuery(hql);
		List waters=query.list();
		int totalSize = waters.size();
		session.close();
		return totalSize;
	}

	@Override
	public List getWaterPaging(Integer currentPage, int pageSize) {
		Session session = getSession();
		String hql = "from Water w";
		Query query = session.createQuery(hql);
		//	确定游标
		int startRow = (currentPage-1)*pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List waters=query.list();
		session.close();
		return waters;
	}

}
