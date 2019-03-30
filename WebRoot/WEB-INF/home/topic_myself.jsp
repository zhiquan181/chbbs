<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<div class="tsm-height"></div>
<div class="account-title">我的帖子</div>
<div class="tsm-title">这些是我发表的帖子。。。 </div>

<ul>
	<s:iterator value="#request['topics_my']" var="topic_my">
		<a href="topicDetail?topicid=${topic_my.id}"><li>
		     <div class="wt-fl fl">
		           <div class="wt-a1"><img src="/chbbs/resource/academy/upload/com-b.jpg"></div>
		           <div class="wt-a2">${topic_my.user.username}</div>
		     </div>
		     <div class="wt-fr fl">
		            <div class="wt-r1"><span>${topic_my.type}</span>${topic_my.title}<em>New</em></div>
		            <div class="wt-r2"> 阅读（${topic_my.pv}） 丨  ${topic_my.createat}</div>
		            
		     </div>
		</li></a>
	</s:iterator>
</ul>