package com.tuzki.action;

import java.util.List;
import java.util.Map;

import com.tuzki.service.IUserService;
import com.tuzki.util.PagerUser;
import com.tuzki.vo.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private User user;
	protected IUserService userService;
	
	protected Integer currentPage=1;
	private int userid;
	private String keyword;
	
	private int aid,bid;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public IUserService getUserService() {
		return userService;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	// 会员列表分页
	public String userListPaging() throws Exception{
		System.out.println("当前页码："+currentPage);
		int totalSize = userService.getTotalUser();
		PagerUser pager = new PagerUser(currentPage,totalSize);
		List users = userService.getUserPaging(currentPage, pager.getPageSize());
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("users",users);
		request.put("pager",pager);
		System.out.println(users);
		return SUCCESS;
	}
	
	// 会员新增编辑操作
	public String userInsertEdit() throws Exception{
		return SUCCESS;
	}
	
	// 会员新增操作
	public String userInsert() throws Exception{
		int state = userService.userInsert(user);
		if(state>0){
			return SUCCESS;
		}
		return ERROR;
	}
	
	// 会员删除操作
	public String userDelete() throws Exception{
		int state = userService.userDelete(this.userid);
		if(state>0){
			return SUCCESS;
		}
		return ERROR;
	}
	
	// 会员修改编辑操作
	public String userUpdateEdit() throws Exception{
		User au=userService.userUpdateEdit(this.userid);
		if(au!=null){
			Map request = (Map)ActionContext.getContext().get("request");
			request.put("user_update", au);
			return SUCCESS;
		}
		return ERROR;
	}
	
	// 会员修改操作
	public String userUpdate() throws Exception{
		int state = userService.userUpdate(user);
		System.out.println(state);
		if(state>0){
			return SUCCESS;
		}
		return ERROR;
	}
	
	// 会员查询操作
	public String userQuery() throws Exception{
		System.out.println("当前页码："+currentPage);
		int totalSize = userService.getTotalUserBykeyword(keyword);
		PagerUser pager = new PagerUser(currentPage,totalSize);
		List users = userService.getUserPagingBykeyword(keyword,currentPage, pager.getPageSize());
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("users",users);
		request.put("pager",pager);
		System.out.println(users);
		return SUCCESS;
	}
	
	// 会员注册操作
	public String register() throws Exception{
		int state = userService.userInsert(user);
		if(state>0){
			return SUCCESS;
		}
		return ERROR;
	}
	
	// 会员登录
	public String login() throws Exception{
		Map session=ActionContext.getContext().getSession();
		User u = userService.userValidate(user);
		if(u!=null){
			session.put("user_active", u);
			// System.out.println(u.getUsername()+" "+u.getPassword());
			return SUCCESS;
		}
		else{
			return ERROR;
		}
	}
	
	// 会员登录注销
	public String loginOut() throws Exception{
		Map session=ActionContext.getContext().getSession();
		session.remove("user_active");
		//session.clear();
		return SUCCESS;
	}
	
	// 我的主页
	public String userCenter() throws Exception{
		return SUCCESS;
	}
	
	// 账户设置编辑操作
	public String accountUpdateEdit() throws Exception{
		User au=userService.userUpdateEdit(this.userid);
		if(au!=null){
			Map request = (Map)ActionContext.getContext().get("request");
			request.put("user_update", au);
			return SUCCESS;
		}
		return ERROR;
	}
	
	// 账户设置操作
	public String accountUpdate() throws Exception{
		int state = userService.userUpdate(user);
		if(state>0){
			return SUCCESS;
		}
		return ERROR;
	}
	
	// 达人推荐
	public String star() throws Exception{
		List l = userService.userStar();
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("users_star",l);
		return SUCCESS;
	}
	
	// 达人关注
	public String starAdd() throws Exception{
		int state = userService.starAdd(aid,bid);
		if(state>0){
			return SUCCESS;
		}
		return ERROR;
	}
	
	// 我关注的达人
	public String starMyself() throws Exception{
		List s = userService.starMyself(aid);
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("stars_my",s);
		return SUCCESS;
	}

}
