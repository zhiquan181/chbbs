<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<ul class="focus-ul">
	<s:iterator value="#request['stars_my']" var="star_my">
	    <li>
	         <div class="focu-b1"><img src="/chbbs/resource/academy/upload/focus-b.jpg"></div>
	         <div class="focu-b2">${star_my}</div>
	         <div class="focu-b3">文章 20<span>丨</span>粉丝 300</div>
	         <div class="focu-b4"><a href="javascript:void(0)">+已关注</a><span></a></div>  
	    </li>
    </s:iterator>
</ul>
