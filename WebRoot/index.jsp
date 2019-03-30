<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Tuzki-社区论坛</title>
	<link rel="icon" type="image/png" sizes="32x32" href="/chbbs/resource/home/images/favicon.ico">
	<link rel="stylesheet" href="/chbbs/resource/academy/css/base.css">
	<link rel="stylesheet" href="/chbbs/resource/academy/css/style.css">
</head>
<body>
<jsp:include page="/WEB-INF/home/head.jsp"/>

<div class="content">
	<div class="idx-banner">
            <div class="fullSlide">
                   <div class="box">
                        <ul>
                           <li style="background:url(/chbbs/resource/academy/upload/ban1.jpg) no-repeat center center;">
                                  <a href="javascript:;"></a></li>
                           <li style="background:url(/chbbs/resource/academy/upload/ban2.jpg) no-repeat center center;">
                                  <a href="javascript:;"></a></li>
                           <li style="background:url(/chbbs/resource/academy/upload/ban3.jpg) no-repeat center center;">
                                  <a href="javascript:;"></a></li>
                        </ul>
                    </div>
                    <div class="hbox">
                        <ul></ul>
                    </div> 
            </div>
    </div>
    
    <div class="wrap">
    	  
          <div class="kg-title-io">采用Rand( )随机函数 · 推荐</div>
          <div class="community">
               <div class="com-fl fl">
                       <div class="hd">
                          <ul><li style="background:url(/chbbs/resource/academy/upload/com-a.jpg) no-repeat center center;height:289px"></li>
                              <li style="background:url(/chbbs/resource/academy/upload/com-a-a.jpg) no-repeat center center;height:289px"></li>
                       </div>
                       <div class="bd"><ul></ul></div> 
               </div>
               <div class="com-fr fr">
                       <div class="com-a">
                            <div class="com-a1">教你如何一步步把妹子泡到手！</div>
                            <div class="com-a2">浪子教你如何一步步把女神泡到手,撩妹段子套路...<a href="http://localhost:8080/chbbs/topicDetail?topicid=1">[查看全文]</a></div>
                       </div>
                       <div class="com-b">
                            <s:action name="topicLimitTop" namespace="/" executeResult="true"></s:action>
                       </div> 
               </div>
          </div>
          
          <div class="rng-box">
			        <div class="kg-title">达人推荐</div>
			        <ul class="rng-ul">
			        	<s:action name="star" namespace="/" executeResult="true"></s:action>
			        </ul>
			    </div>
          
          <div class="ru">
          		<div class="kg-title">论坛帖子</div>
                <div class="ru-fl fl">
                        <div class="ru-a">
                               <div class="ru-title">
                                       <div class="cou-b1"><img src="/chbbs/resource/academy/images/cou-b1.jpg">最新帖子</div>
                               </div>
                         </div>
                         <div class="ru-b">
                         	<s:action name="topicLimitLeft" namespace="/" executeResult="true"></s:action>
                                
                            <div class="skt-more com-more"><a href="topicAllPaging?currentPage=1">查看全部</a></div>
                         </div>       
                </div><!--ru-fl--> 
                
                <div class="ru-fr fr">
                	   <input id="topic_userid" type="hidden" value="${session.user_active.id}"/>
                       <div class="ru-c1" id="add_topic" onclick="add_topic()">发表帖子</div>
                       <script type="text/javascript">
							function add_topic(){
								var userid = document.getElementById("topic_userid").value;
								if(!userid){
									alert("请登录后再发表帖子！");
								}
								
								else {
							   		alert("即将进入发表帖子页面！");
							   		window.location.href="http://localhost:8080/chbbs/topicAddEdit";
								}
							 }
					  	</script>
                       <div class="ru-c2"><img src="/chbbs/resource/academy/images/cou-b1.jpg">热门标签</div>
                       <div class="ru-c3">
                           <span>恋爱</span>
                           <span>型男</span>
                           <span>美女</span>
                           <span>矛盾</span>
                           <span>矛盾</span>
                           <span>恋爱</span>
                           <span>型男</span>
                           <span>美女</span>
                       </div>
                       <div class="ru-c2"><img src="/chbbs/resource/academy/images/cou-b1.jpg">热门帖子</div>
                       <div class="ru-c4">
                       		<s:action name="topicLimitRight" namespace="/" executeResult="true"></s:action>
                       </div>
                </div>
                
                
          </div><!--ru-->
          
          
    </div> 
</div>


<jsp:include page="/WEB-INF/home/foot.jsp"/>
</body>
</html>

