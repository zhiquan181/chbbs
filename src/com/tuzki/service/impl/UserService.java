package com.tuzki.service.impl;

import java.util.List;
import com.tuzki.dao.IUserDAO;
import com.tuzki.service.IUserService;
import com.tuzki.vo.User;

public class UserService implements IUserService {
	private IUserDAO userDAO;
	
	public IUserDAO getUserDAO() {
		return userDAO;
	}
	public void setUserDAO(IUserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	@Override
	public int getTotalUser() {
		return userDAO.getTotalUser();
	}
	
	@Override
	public List getUserPaging(Integer currentPage, int pageSize) {
		return userDAO.getUserPaging(currentPage, pageSize);
	}
	
	@Override
	public int userInsert(User user) {
		return userDAO.userInsert(user);
	}
	
	@Override
	public int userDelete(int userid) {
		return userDAO.userDelete(userid);
	}
	
	@Override
	public User userUpdateEdit(int userid) {
		return userDAO.userUpdateEdit(userid);
	}
	
	@Override
	public int userUpdate(User user) {
		return userDAO.userUpdate(user);
	}
	
	@Override
	public int getTotalUserBykeyword(String keyword) {
		return userDAO.getTotalUserBykeyword(keyword);
	}
	
	@Override
	public List getUserPagingBykeyword(String keyword, Integer currentPage,int pageSize) {
		return userDAO.getUserPagingBykeyword(keyword,currentPage,pageSize);
	}
	
	@Override
	public User userValidate(User user) {
		return userDAO.userValidate(user);
	}
	
	@Override
	public List userStar() {
		return userDAO.userStar();
	}
	
	@Override
	public int starAdd(int aid, int bid) {
		return userDAO.starAdd(aid,bid);
	}
	
	@Override
	public List starMyself(int aid) {
		return userDAO.starMyself(aid);
	}
		

	
	
	

}
