<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<ul>
	<s:iterator value="#request['topics_left']" var="topic_left">
		<a href="topicDetail?topicid=${topic_left.id}"><li>
		     <div class="wt-fl fl">
		           <div class="wt-a1"><img src="/chbbs/resource/academy/upload/com-b.jpg"></div>
		           <div class="wt-a2">${topic_left.user.username}</div>
		     </div>
		     <div class="wt-fr fl">
		            <div class="wt-r1"><span>${topic_left.type}</span>${topic_left.title}<em>New</em></div>
		            <div class="wt-r2"> 阅读（${topic_left.pv}） 丨  ${topic_left.createat}</div>
		            
		     </div>
		</li></a>
	</s:iterator>
</ul>