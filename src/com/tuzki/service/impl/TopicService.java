package com.tuzki.service.impl;

import java.util.List;
import com.tuzki.dao.ITopicDAO;
import com.tuzki.service.ITopicService;
import com.tuzki.vo.Topic;
import com.tuzki.vo.Water;

public class TopicService implements ITopicService {
	private ITopicDAO topicDAO;
	
	public ITopicDAO getTopicDAO() {
		return topicDAO;
	}

	public void setTopicDAO(ITopicDAO topicDAO) {
		this.topicDAO = topicDAO;
	}

	@Override
	public int TopicAdd(Topic topic,int userid) {
		return topicDAO.TopicAdd(topic,userid);
	}

	@Override
	public List topicLimitLeft() {
		return topicDAO.topicLimitLeft();
	}

	@Override
	public List topicLimitRight() {
		return topicDAO.topicLimitRight();
	}

	@Override
	public List topicLimitTop() {
		return topicDAO.topicLimitTop();
	}

	@Override
	public List topicMyself(int userid) {
		return topicDAO.topicMyself(userid);
	}

	@Override
	public int getTotalTopic() {
		return topicDAO.getTotalTopic();
	}

	@Override
	public List getTopicPaging(Integer currentPage, int pageSize) {
		return topicDAO.getTopicPaging(currentPage, pageSize);
	}

	@Override
	public int topicDelete(int topicid) {
		return topicDAO.topicDelete(topicid);
	}

	@Override
	public Topic topicDetail(int topicid) {
		return topicDAO.topicDetail(topicid);
	}

	@Override
	public int WaterAdd(Water water, int userid, int topicid) {
		return topicDAO.WaterAdd(water, userid, topicid);
	}

	@Override
	public List waterList(int topicid) {
		return topicDAO.waterList(topicid);
	}

	@Override
	public int getTotalWater() {
		return topicDAO.getTotalWater();
	}

	@Override
	public List getWaterPaging(Integer currentPage, int pageSize) {
		return topicDAO.getWaterPaging(currentPage, pageSize);
	}

}
