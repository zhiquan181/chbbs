package com.tuzki.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.tuzki.dao.BaseDAO;
import com.tuzki.dao.IUserDAO;
import com.tuzki.vo.Friend;
import com.tuzki.vo.User;

public class UserDAO extends BaseDAO implements IUserDAO {	
	@Override
	public int getTotalUser() {
		Session session = getSession();
		String hql = "from User u";
		Query query = session.createQuery(hql);
		List users=query.list();
		int totalSize = users.size();
		session.close();
		return totalSize;
	}
	@Override
	public List getUserPaging(Integer currentPage, int pageSize) {
		Session session = getSession();
		String hql = "from User u";
		Query query = session.createQuery(hql);
		//	确定游标
		int startRow = (currentPage-1)*pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List users=query.list();
		session.close();
		return users;
	}
	
	@Override
	public int userInsert(User user) {
//		System.out.println(user.getUsername()+" "+user.getPassword()+" "+user.getEmail()+" "+user.getSex()+" "+user.getPhone()+" "+user.getBirthday()+" "+user.getAddress());
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		User lu = new User(user.getUsername(),user.getPassword(),user.getEmail(),user.getSex(),user.getPhone(),user.getBirthday(),user.getAddress());
		session.save(lu);
       // session.flush();
        tx.commit();
        session.close();
		return 1;
	}
	
	@Override
	public int userDelete(int userid) {
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		User u =(User)session.get(User.class,userid); 
		session.delete(u);
		tx.commit();
		session.close();
		return 1;
	}
	
	@Override
	public User userUpdateEdit(int userid) {
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		User u =(User)session.get(User.class,userid);
		session.close();
		return u;
	}

	@Override
	public int userUpdate(User user) {
		Session session = getSession();
		Transaction tx = session.beginTransaction();

		User lu =(User)session.get(User.class,user.getId());
		
		if(lu!=null){
			lu.setId(user.getId());
			lu.setUsername(user.getUsername());
			lu.setPassword(user.getPassword());
			lu.setBirthday(user.getBirthday());
			lu.setEmail(user.getEmail());
			lu.setSex(user.getSex());
			lu.setPhone(user.getPhone());
			lu.setAddress(user.getAddress());
		}else{
			return 0;
		}
		
        tx.commit();
        session.close();
        
		return 1;
	}

	@Override
	public int getTotalUserBykeyword(String keyword) {
		Session session = getSession();
		String hql = "from User u where u.username like '%"+keyword+"%'";
		Query query = session.createQuery(hql);
		List users=query.list();
		int totalSize = users.size();
		session.close();
		return totalSize;
	}
	@Override
	public List getUserPagingBykeyword(String keyword, Integer currentPage, int pageSize) {
		Session session = getSession();
		String hql = "from User u where u.username like '%"+keyword+"%'";
		Query query = session.createQuery(hql);
		//	确定游标
		int startRow = (currentPage-1)*pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List users=query.list();
		session.close();
		return users;
	}
	
	@Override
	public User userValidate(User user) {
		String sql="from User u where u.username=? and u.password=?";
		Session session=getSession();
		Query q=session.createQuery(sql);
		q.setParameter(0, user.getUsername());
		q.setParameter(1, user.getPassword());
		List<?> users=q.list();
		if(users.isEmpty()){
			System.out.println("NULL");
			return null;
		}
		User u=(User)users.get(0);
		session.close();
		return u;
	}
	
	@Override
	public List userStar() {
		Session session = getSession();
		String hql = "from User u ORDER BY RAND()";
		Query query = session.createQuery(hql);
	    query.setMaxResults(5);
		List users=query.list();
		session.close();
		return users;
	}
	
	@Override
	public int starAdd(int aid,int bid) {
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		
		String sql="from Friend u where u.aid = ? and u.bid = ?";
		Query q=session.createQuery(sql);
		q.setParameter(0, aid);
		q.setParameter(1, bid);
		List<?> users=q.list();
		
		
		if(users.isEmpty()){
			Friend f = new Friend(aid,bid);
			session.save(f);
	        tx.commit();
	        session.close();
			return 1;
		}else{
//			Friend f=(Friend)users.get(0);
//			f.setAid(aid);
//			f.setBid(bid);
			return 2;
		}
	}
	
	@Override
	public List starMyself(int aid) {
//		Session session = getSession();
//		String sql="from Friend u where u.aid = ?";
//		Query query = session.createQuery(sql);
//		query.setParameter(0, aid);
//		List<?> s = query.list();
//		session.close();
//		return s;
		
		Session session = getSession();
		SQLQuery query = session.createSQLQuery("SELECT User.username FROM Friend INNER JOIN User ON Friend.bid = User.id WHERE Friend.aid = ?;");
		
		query.setParameter(0, aid);
		List<?> e = query.list();
		session.close();
		return e;
	}
}
