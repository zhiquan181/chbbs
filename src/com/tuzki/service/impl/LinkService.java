package com.tuzki.service.impl;

import java.util.List;
import com.tuzki.dao.ILinkDAO;
import com.tuzki.service.ILinkService;
import com.tuzki.vo.Auser;
import com.tuzki.vo.Link;

public class LinkService implements ILinkService {
	private ILinkDAO linkDAO;
	
	public ILinkDAO getLinkDAO() {
		return linkDAO;
	}
	public void setLinkDAO(ILinkDAO linkDAO) {
		this.linkDAO = linkDAO;
	}
	
	@Override
	public int getTotalLink() {
		return linkDAO.getTotalLink();
	}
	
	@Override
	public List getLinkPaging(Integer currentPage, int pageSize) {
		return linkDAO.getLinkPaging(currentPage, pageSize);
	}
	
	@Override
	public int linkInsert(Link link) {
		return linkDAO.linkInsert(link);
	}
	
	@Override
	public int linkDelete(int linkid) {
		return linkDAO.linkDelete(linkid);
	}
	
	@Override
	public Link linkUpdateEdit(int linkid) {
		return linkDAO.linkUpdateEdit(linkid);
	}
	
	@Override
	public int linkUpdate(Link link) {
		return linkDAO.linkUpdate(link);
	}
	
	@Override
	public int getTotalLinkBykeyword(String keyword) {
		return linkDAO.getTotalLinkBykeyword(keyword);
	}
	
	@Override
	public List getLinkPagingBykeyword(String keyword, Integer currentPage,int pageSize) {
		return linkDAO.getLinkPagingBykeyword(keyword,currentPage,pageSize);
	}
		

	
	
	

}
