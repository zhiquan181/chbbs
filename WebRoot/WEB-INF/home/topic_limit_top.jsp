<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<ul>
	<s:iterator value="#request['topics_top']" var="topic_top">
		<div class="com-b1"><a href="topicDetail?topicid=${topic_top.id}">${topic_top.title}[${topic_top.pv}次浏览]<span>${topic_top.user.username}</span></a></div>
	</s:iterator>
</ul>