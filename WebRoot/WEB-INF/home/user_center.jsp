<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>我的主页</title>
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
    <s:if test="#session.user_active==null">
    	<script language="javascript"type="text/javascript"> 
			alert("您的登录回话已过期，请重新登录！"); 
			window.location.href="http://localhost:8080/chbbs/"; 
		</script>
	</s:if>
	<s:else>
		<jsp:include page="/WEB-INF/home/head.jsp"/>
	
		<div class="content">
		    <div class="focus-banner">
		           <div class="wrap">
		                
		                <div class="focus-a1"><img src="/chbbs/resource/academy/upload/focus-a2.png"></div>
		                <div class="focus-a2">${session.user_active.username}</div>
		                <div class="focus-a3">
		                          <div class="py-a fl">文章 20</div>
		                          <div class="pyl  fl">关注 500</div>
		                          <div class="py-a fl">粉丝 500</div>
		                          <div class="py-b fl">收藏 80</div>
		                </div>
		           </div>    
		    </div>
		    
		    <div class="focus-b-box">
                  <div class="focus-list"><div class="focus-title">${session.user_active.username}  的关注</div></div>
                  <div class="focus-b">
                  		<s:action name="starMyself" namespace="/" executeResult="true">
                  			<s:param name="aid">
			    				<s:property value="#session.user_active.id"></s:property>
			    			</s:param>
                  		</s:action>
                  </div>
		    </div>  
		</div>
	
		<jsp:include page="/WEB-INF/home/foot.jsp"/>
	</s:else>
  </body>
</html>
