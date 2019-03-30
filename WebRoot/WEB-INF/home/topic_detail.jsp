<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>帖子详情-${topic_detail.title}</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="icon" type="image/png" sizes="32x32" href="/chbbs/resource/home/images/favicon.ico">
	<link rel="stylesheet" href="/chbbs/resource/academy/css/base.css">
	<link rel="stylesheet" href="/chbbs/resource/academy/css/style.css">
  </head>  
  <body>
  	<jsp:include page="/WEB-INF/home/head.jsp"/>

  	<div class="content">
	    <div class="wrap">	          
	          <div class="det-a">
	                 <div class="det-title"><img src="/chbbs/resource/academy/images/det-c.jpg">${topic_detail.title}</div>
	                 <small>浏览量：${topic_detail.pv}（每刷新帖子详情页，浏览量会加1哦）</small>
	                 <p>${topic_detail.content}</p>
	          </div> 
	          
	           <div class="det-b">
	           		<s:if test="#session.user_active==null">
	           			<div class="det-title"><img src="/chbbs/resource/academy/images/det-c.jpg">在线评论</div>
			            <div class="det-b1">
			            	<textarea class="det-area"></textarea>
			            	<div class="det-b2"><a href="javascript:void(0)" class="login-click">登录</a>发表</div>
			            </div>
			            <div class="det-b3"><input type="submit" class="det-btn" value="发表" onclick="dologin()"></div>
			           <script type="text/javascript">
							function dologin(){
								alert("请先登录再发表！");
							}
			            </script>
	           		</s:if>
	           		<s:else>
	           			<form action="waterAdd" method="post">
			                 <div class="det-title"><img src="/chbbs/resource/academy/images/det-c.jpg">在线评论</div>
			                 <div class="det-b1">
			                 	  <input type="hidden" name="userid" name="userid" value="${session.user_active.id}"/>
			                 	  <input type="hidden" name="topicid" name="topicid" value="${topic_detail.id}"/>
			                      <textarea class="det-area" name="water.content" required></textarea>		                      
			                 </div>
			                 <div class="det-b3"><input type="submit" class="det-btn" value="发表"></div>
		                 </form>
					</s:else>
	           </div>
	           
	           <div class="skt">
	                 <div class="skt-title">
	                       <span class="skt-cut">默认评论</span>
	                 </div>
	                 <div class="skt-tab">
	                          <div class="skt-btm">
	                               <ul class="skt-ul">
	                               		<s:iterator value="#request['waters']" var="a_water">
											<li>
									              <div class="skt-a1"><img src="/chbbs/resource/academy/upload/det-tx.jpg"><b>${a_water.user.username}</b>&nbsp;&nbsp;${a_water.createat}
									                                  <div class="menu"><a href="javascript:void(0)"><img src="/chbbs/resource/academy/images/menu.jpg"></a></div></div>
									              <div class="skt-a2">${a_water.content}</div>
									              <div class="skt-a3"><a href=""><img src="/chbbs/resource/academy/upload/det-b.jpg">我要点评</a>
									                      <div class="menu-a"><img src="/chbbs/resource/academy/images/menu-a1.jpg">0
									                                          <span><img src="/chbbs/resource/academy/images/menu-a2.jpg">0</span></div>
									              </div>
											</li> 
										</s:iterator>                                     
	                               </ul>
	                          </div>
	                 </div>
	           </div>      
	    </div> 
	</div>
	
	<jsp:include page="/WEB-INF/home/foot.jsp"/>
  </body>
</html>
	