package com.tuzki.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.tuzki.dao.BaseDAO;
import com.tuzki.dao.ILinkDAO;
import com.tuzki.vo.Link;

public class LinkDAO extends BaseDAO implements ILinkDAO {	
	@Override
	public int getTotalLink() {
		Session session = getSession();
		String hql = "from Link u";
		Query query = session.createQuery(hql);
		List links=query.list();
		int totalSize = links.size();
		session.close();
		return totalSize;
	}
	@Override
	public List getLinkPaging(Integer currentPage, int pageSize) {
		Session session = getSession();
		String hql = "from Link u";
		Query query = session.createQuery(hql);
		//	确定游标
		int startRow = (currentPage-1)*pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List links=query.list();
		session.close();
		return links;
	}
	
	@Override
	public int linkInsert(Link link) {
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		Link lu = new Link(link.getTitle(),link.getDomain());
		session.save(lu);
       // session.flush();
        tx.commit();
        session.close();
		return 1;
	}
	
	@Override
	public int linkDelete(int linkid) {
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		Link u =(Link)session.get(Link.class,linkid); 
		session.delete(u);
		tx.commit();
		session.close();
		return 1;
	}
	
	@Override
	public Link linkUpdateEdit(int linkid) {
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		Link u =(Link)session.get(Link.class,linkid);
		session.close();
		return u;
	}

	@Override
	public int linkUpdate(Link link) {
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		Link lu =(Link)session.get(Link.class,link.getId());
		lu.setId(link.getId());
		lu.setTitle(link.getTitle());
		lu.setDomain(link.getDomain());
        tx.commit();
        session.close();
		return 1;
	}

	@Override
	public int getTotalLinkBykeyword(String keyword) {
		Session session = getSession();
		String hql = "from Link u where u.title like '%"+keyword+"%'";
		Query query = session.createQuery(hql);
		List links=query.list();
		int totalSize = links.size();
		session.close();
		return totalSize;
	}
	@Override
	public List getLinkPagingBykeyword(String keyword, Integer currentPage, int pageSize) {
		Session session = getSession();
		String hql = "from Link u where u.title like '%"+keyword+"%'";
		Query query = session.createQuery(hql);
		//	确定游标
		int startRow = (currentPage-1)*pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List links=query.list();
		session.close();
		return links;
	}
	
}
