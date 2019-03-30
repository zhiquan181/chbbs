<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="head-top">
	<div class="head-top-box">
		<div class="head-top-box-content">
			<div class="head-a1 fl">
				<a href="javascript:void(0)"><img src="/chbbs/resource/academy/images/tb-a.png"></a>
			</div>
		    <div class="head-a1 fl">
		    	<a href="javascript:void(0)"><img src="/chbbs/resource/academy/images/tb-b.png"></a>
		    </div>
		    
		    <s:if test="#session.user_active==null">
				<div class="head-a3 login-click fl">登录</div>
			</s:if>
			<s:else>
				<div class="tbt fl">
			    	<img src="/chbbs/resource/academy/upload/ttt.png">
	               	<div class="hgt-btm">
		                <a href="userCenter?userid=${session.user_active.id}">我的主页</a>
		                <a href="javascript:void(0)">我的消息</a>
		                <a href="userTopic">我的帖子</a>
		                <a href="accountUpdateEdit?userid=${session.user_active.id}">帐号设置</a>
		                <a href="loginOut">退出</a>
		            </div>
	            </div>
			</s:else>
		    <div class="head-a4 reg-click fl">注册</div>
	    </div>
	</div>
</div>

<div class="head-box">
    <div class="head wrap">
          <div class="logo fl"><a href="http://localhost:8080/chbbs/"><img src="/chbbs/resource/academy/images/logo.png"></a></div>
          <div class="head-right fr">
              <div class="clearfix"></div>
              <div class="nav fr">
                  <ul>
                       <li class="nav-cut"><a href="http://localhost:8080/chbbs/">首页</a></li>
                       <li><a href="course">课程</a></li>
                       <li><a href="notice">公告</a></li>
                       <li><a href="activity">活动</a></li>
                       <li><a href="contact">联系我们</a></li>
                  </ul>
              </div>
              <div class="clearfix"></div>
          </div>
    </div>
</div>