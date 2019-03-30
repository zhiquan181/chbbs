package com.tuzki.service;

import java.util.List;
import com.tuzki.vo.Link;
public interface ILinkService {	
	public int getTotalLink();
	public List getLinkPaging(Integer currentPage, int pageSize);
	
	public int linkInsert(Link link);
	
	public int linkDelete(int linkid);

	public Link linkUpdateEdit(int linkid);

	public int linkUpdate(Link link);
	
	public int getTotalLinkBykeyword(String keyword);
	public List getLinkPagingBykeyword(String keyword, Integer currentPage,int pageSize);
	
}