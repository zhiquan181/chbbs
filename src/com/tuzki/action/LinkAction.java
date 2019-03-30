package com.tuzki.action;

import java.util.List;
import java.util.Map;

import com.tuzki.service.ILinkService;
import com.tuzki.util.PagerLink;
import com.tuzki.vo.Link;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LinkAction extends ActionSupport{
	private static final long serialVersionUID = 3702285027814147509L;
	private Link link;
	protected ILinkService linkService;
	
	protected Integer currentPage=1;
	private int linkid;
	private String keyword;
	
	public Link getLink() {
		return link;
	}

	public void setLink(Link link) {
		this.link = link;
	}

	public ILinkService getLinkService() {
		return linkService;
	}

	public void setLinkService(ILinkService linkService) {
		this.linkService = linkService;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public int getLinkid() {
		return linkid;
	}

	public void setLinkid(int linkid) {
		this.linkid = linkid;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}


	// 友情链接列表分页
	public String linkListPaging() throws Exception{
		System.out.println("当前页码："+currentPage);
		int totalSize = linkService.getTotalLink();
		PagerLink pager = new PagerLink(currentPage,totalSize);
		List links = linkService.getLinkPaging(currentPage, pager.getPageSize());
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("links",links);
		request.put("pager",pager);
		System.out.println(links);
		return SUCCESS;
	}
	
	// 友情链接新增编辑操作
	public String linkInsertEdit() throws Exception{
		return SUCCESS;
	}
	
	// 友情链接新增操作
	public String linkInsert() throws Exception{
		int state = linkService.linkInsert(link);
		if(state>0){
			return SUCCESS;
		}
		return ERROR;
	}
	
	// 友情链接删除操作
	public String linkDelete() throws Exception{
		int state = linkService.linkDelete(this.linkid);
		if(state>0){
			return SUCCESS;
		}
		return ERROR;
	}
	
	// 友情链接修改编辑操作
	public String linkUpdateEdit() throws Exception{
		Link au=linkService.linkUpdateEdit(this.linkid);
		if(au!=null){
			Map session=ActionContext.getContext().getSession();
			session.put("link_update", au);
			return SUCCESS;
		}
		return ERROR;
	}
	
	// 友情链接修改操作
	public String linkUpdate() throws Exception{
		int state = linkService.linkUpdate(link);
		System.out.println(state);
		if(state>0){
			return SUCCESS;
		}
		return ERROR;
	}
	
	// 友情链接查询操作
	public String linkQuery() throws Exception{
		System.out.println("当前页码："+currentPage);
		int totalSize = linkService.getTotalLinkBykeyword(keyword);
		PagerLink pager = new PagerLink(currentPage,totalSize);
		List links = linkService.getLinkPagingBykeyword(keyword,currentPage, pager.getPageSize());
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("links",links);
		request.put("pager",pager);
		System.out.println(links);
		return SUCCESS;
	}

}
