<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>公告</title>
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
	         <div class="account">
	         	 <br/>
                 <div class="account-title"><b>前方高能 · 陈瀚BBS · 系统公告</b></div>
                 <br/>
                 <div class="tsm-box">
                      <div class="tsm-title">${notice.title}</div>
                  	  <div class="tsm-box">${notice.content}</div> 
				 </div>
			</div>
	    </div> 
	</div>
	
	<jsp:include page="/WEB-INF/home/foot.jsp"/>
  </body>
</html>
	