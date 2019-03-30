<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<ul>
	<s:iterator value="#request['topics_right']" var="topic_right">
		<div class="ru-c5">
               <div class="ru-d fl">热</div>
               <div class="ru-e fl">
                   <div class="ru-e1"><a href="topicDetail?topicid=${topic_right.id}">${topic_right.title}</a></div>
                   <div class="ru-e2"><img src="/chbbs/resource/academy/upload/focus-a2.png">${topic_right.user.username}<span>${topic_right.createat}</span></div>
               </div>
        </div>
	</s:iterator>
</ul>