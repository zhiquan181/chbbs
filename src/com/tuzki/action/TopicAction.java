package com.tuzki.action;

import java.util.List;
import java.util.Map;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tuzki.service.ITopicService;
import com.tuzki.util.PagerTopic;
import com.tuzki.util.PagerWater;
import com.tuzki.vo.Topic;
import com.tuzki.vo.Water;

public class TopicAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private Topic topic;
	private Water water;
	protected ITopicService topicService;
	private Integer userid;
	private Integer topicid;
	protected Integer currentPage=1;
	
	public Topic getTopic() {
		return topic;
	}

	public void setTopic(Topic topic) {
		this.topic = topic;
	}

	public Water getWater() {
		return water;
	}

	public void setWater(Water water) {
		this.water = water;
	}

	public ITopicService getTopicService() {
		return topicService;
	}

	public void setTopicService(ITopicService topicService) {
		this.topicService = topicService;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public Integer getTopicid() {
		return topicid;
	}

	public void setTopicid(Integer topicid) {
		this.topicid = topicid;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	// 我的帖子
	public String userTopic(){
		return SUCCESS;
	}
	
	// 话题帖子添加编辑
	public String topicAddEdit(){
		return SUCCESS;
	}
	
	// 话题帖子添加
	public String topicAdd(){
		int state = topicService.TopicAdd(topic,userid);
		if(state>0){
			return SUCCESS;
		}
		return ERROR;
	}
	
	// 话题帖子限制显示 左边
	public String topicLimitLeft(){
		List topics = topicService.topicLimitLeft();
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("topics_left",topics);
		return SUCCESS;
	}
	
	// 话题帖子限制显示 右边
	public String topicLimitRight(){
		List topics = topicService.topicLimitRight();
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("topics_right",topics);
		return SUCCESS;
	}
	
	// 话题帖子限制显示 顶部
	public String topicLimitTop(){
		List topics = topicService.topicLimitTop();
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("topics_top",topics);
		return SUCCESS;
	}
	
	// 话题帖子显示 个人 
	public String topicMyself(){
		List topics = topicService.topicMyself(userid);
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("topics_my",topics);
		return SUCCESS;
	}
	
	// 后台管理帖子列表
	public String topicListPaging() throws Exception{
		System.out.println("当前页码："+currentPage);
		int totalSize = topicService.getTotalTopic();
		PagerTopic pager = new PagerTopic(currentPage,totalSize);
		List topics = topicService.getTopicPaging(currentPage, pager.getPageSize());
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("topics",topics);
		request.put("pager",pager);
		System.out.println(topics);
		return SUCCESS;
	}
	
	// 帖子删除操作
	public String topicDelete() throws Exception{
		int state = topicService.topicDelete(this.topicid);
		if(state>0){
			return SUCCESS;
		}
		return ERROR;
	}
	
	// 帖子详情 以及该帖子回复列表
	public String topicDetail(){
		Topic topic = topicService.topicDetail(topicid);
		List waters = topicService.waterList(topicid);
		
		Map request = (Map)ActionContext.getContext().get("request");
		
		request.put("topic_detail",topic);
		request.put("waters",waters);
		
		return SUCCESS;
	}
	
	// 前台全部帖子列表
	public String topicAllPaging() throws Exception{
		int totalSize = topicService.getTotalTopic();
		PagerTopic pager = new PagerTopic(currentPage,totalSize);
		List topics = topicService.getTopicPaging(currentPage, pager.getPageSize());
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("topics_all",topics);
		request.put("pager",pager);
		System.out.println(topics);
		return SUCCESS;
	}
	
	// 水贴回复添加
	public String waterAdd(){
		
		if(userid==null||topicid==null||water==null){
			return ERROR;
		}
		else{
			int state = topicService.WaterAdd(water,userid,topicid);
			
			if(state>0){
				Topic topic = topicService.topicDetail(topicid);
				List waters = topicService.waterList(topicid);
				Map request = (Map)ActionContext.getContext().get("request");
				request.put("topic_detail",topic);
				request.put("waters",waters);
				return SUCCESS;
			}
			return ERROR;
		}
	}
	
	// 后台管理帖子列表
	public String waterListPaging() throws Exception{
		System.out.println("当前页码："+currentPage);
		int totalSize = topicService.getTotalWater();
		PagerWater pager = new PagerWater(currentPage,totalSize);
		List waters = topicService.getWaterPaging(currentPage, pager.getPageSize());
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("waters",waters);
		request.put("pager",pager);
//		System.out.println(waters);
		return SUCCESS;
	}
	
	
	
}
