<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
    <title>全部帖子</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="icon" type="image/png" sizes="32x32" href="/chbbs/resource/home/images/favicon.ico">
	<link rel="stylesheet" href="/chbbs/resource/academy/css/base.css">
	<link rel="stylesheet" href="/chbbs/resource/academy/css/style.css">
	<style type="text/css">
		.topic_all_box>div,.topic_all_box ul{width:996px;margin:auto;}
		.pagination{width:auto;height:20px;padding:20px;}
		.pagination li{width:auto;height:20px;background:#aaa;float:left;margin:0 3px;padding:5px;border-radius:5px;}
		.pagination li a{color:#fff;}
	</style>
</head>
  <body>
	<jsp:include page="/WEB-INF/home/head.jsp"/>
	
	<div class="topic_all_box">
		<div class="tsm-height"></div>
		<div class="account-title">全部帖子</div>
		<div class="tsm-title">这些是全部社区论坛会员发表的帖子。。。！！！ </div>
		
		<ul>
			<s:iterator value="#request['topics_all']" var="topic_all">
				<a href="topicDetail?topicid=${topic_all.id}"><li>
				     <div class="wt-fl fl">
				           <div class="wt-a1"><img src="/chbbs/resource/academy/upload/com-b.jpg"></div>
				           <div class="wt-a2">${topic_all.user.username}</div>
				     </div>
				     <div class="wt-fr fl">
				            <div class="wt-r1"><span>${topic_all.type}</span>${topic_all.title}<em>New</em></div>
				            <div class="wt-r2"> 阅读（${topic_all.pv}） 丨  ${topic_all.createat}</div>
				            
				     </div>
				</li></a>
			</s:iterator>
		</ul>
		
		<ul class="pagination pagination-sm m-b-10 m-t-10 pull-right">
			<s:set value="#request['pager']" var="pager"/>
			<!-- 首页 -->
			<s:if test="#pager.hasFirst">
			  <li><a class="pager_commom" href="topicAllPaging.action?currentPage=1">首页</a></li>
			</s:if>
			<s:else>
			  <li><a class="pager_commom pager_commom_not" href="javascript:volid(0)">首页</a></li>
			</s:else>
			
			<!-- 上一页 -->
			<s:if test="#pager.hasPrevious">
				<li><a class="pager_commom" href="topicAllPaging.action?currentPage=<s:property value="#pager.currentPage-1"/>">上一页</a></li>
			</s:if>
			<s:else>
				<li><a class="pager_commom pager_commom_not" href="javascript:volid(0)">上一页</a></li>
			</s:else>
											
			<!-- 下一页 -->
			<s:if test="#pager.hasNext">
			  <li><a class="pager_commom" href="topicAllPaging.action?currentPage=<s:property value="#pager.currentPage+1"/>">下一页</a></li>
			</s:if>
			<s:else>
				<li><a class="pager_commom pager_commom_not">下一页</a></li>
			</s:else>
			
			<!-- 尾页 -->
			<s:if test="#pager.hasLast">
			  <li><a class="pager_commom" href="topicAllPaging.action?currentPage=<s:property value="#pager.totalPage"/>">尾页</a></li>
			</s:if>
			<s:else>
			  <li><a class="pager_commom pager_commom_not" href="javascript:volid(0)">尾页</a></li>
			</s:else>
			
			<li><a class="pager_total" href="javascript:volid(0)">当前第<s:property value="#pager.currentPage"/>页/共<s:property value="#pager.totalPage"/>页</a></li>
		</ul>
	</div>
	
	<jsp:include page="/WEB-INF/home/foot.jsp"/>
  </body>
</html>