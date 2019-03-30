package com.tuzki.action;

import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport{
	private static final long serialVersionUID = 1L;

	// 跳转首页
	public String index() throws Exception{
		return SUCCESS;
	}
	
	// 课程
	public String course() throws Exception{
		return SUCCESS;
	}
	
	// 公告
	public String notice() throws Exception{
		return SUCCESS;
	}
	
	// 活动
	public String activity() throws Exception{
		return SUCCESS;
	}
	
	// 联系我们
	public String contact() throws Exception{
		return SUCCESS;
	}
}
