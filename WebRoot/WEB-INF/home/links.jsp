<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<style>
<!--
.div_links{width:100%;height:180px;margin:auto;background-color: #222;}
.link-title {font-size: 14px;color: #fff;padding:15px;text-align: center;}
.ul_links{width:996px;height:100px;margin:auto;}
.ul_links a{margin:20px 20px 0 20px;font-size:14px;float:left;color:#909090;}
-->
</style>
<div class="div_links">
	<div class="link-title">友情链接</div>
	<ul class="ul_links">
		<s:iterator value="#request['links']" var="link">
			<a href="${link.domain}" target="_blank"><li>${link.title}</li></a>
		</s:iterator>
	</ul>
</div>
