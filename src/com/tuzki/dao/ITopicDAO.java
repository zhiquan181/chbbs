package com.tuzki.dao;

import java.util.List;
import com.tuzki.vo.Topic;
import com.tuzki.vo.Water;

public interface ITopicDAO {
	
	public int TopicAdd(Topic topic,int userid);
	
	public List topicLimitLeft();
	
	public List topicLimitRight();

	public List topicLimitTop();
	
	public List topicMyself(int userid);
	
	public int getTotalTopic();
	public List getTopicPaging(Integer currentPage, int pageSize);
	
	public int topicDelete(int topicid);

	public Topic topicDetail(int topicid);
	
	public int WaterAdd(Water water, int userid, int topicid);

	public List waterList(int topicid);
	
	public int getTotalWater();

	public List getWaterPaging(Integer currentPage, int pageSize);
}
