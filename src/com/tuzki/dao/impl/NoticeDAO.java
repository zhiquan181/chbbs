package com.tuzki.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.tuzki.dao.BaseDAO;
import com.tuzki.dao.INoticeDAO;
import com.tuzki.vo.Notice;

public class NoticeDAO extends BaseDAO implements INoticeDAO {

	@Override
	public Notice NoticeDisplay(String key) {
		Session session = getSession();
		String sql="from Notice n where n.keynt=?";
		Query q=session.createQuery(sql);
		q.setParameter(0,key);
		List<?> notice=q.list();
		Notice n=(Notice)notice.get(0);
		session.close();
		return n;
	}

	@Override
	public Notice NoticeUpdateEdit(String key) {
		Session session = getSession();
		String sql="from Notice n where n.keynt=?";
		Query q=session.createQuery(sql);
		q.setParameter(0,key);
		List<?> notice=q.list();
		Notice n=(Notice)notice.get(0);
		session.close();
		return n;
	}

	@Override
	public int NoticeUpdate(Notice notice,String key) {
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		String sql="from Notice n where n.keynt=?";
		Query q=session.createQuery(sql);
		q.setParameter(0,key);
		List<?> notices=q.list();
		Notice n=(Notice)notices.get(0);
		n.setKeynt(notice.getKeynt());
		n.setTitle(notice.getTitle());
		n.setContent(notice.getContent());
        tx.commit();
        session.close();
		return 1;
	}

}
