<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<ul>
	<s:iterator value="#request['users_star']" var="user_star">
		<li>
			<div class="rng-a"><img src="/chbbs/resource/academy/upload/rng.jpg"></div>
			<script type="text/javascript">
				function star_add(obj){
					var aid = document.getElementById("aid").value;
					var bid = document.getElementById("bid").value;
					
					if(!aid){
						alert("请登录后再关注达人！");
						return false;
					}
					else if(aid&&bid){
				   		alert("已关注，可在【我的主页】 查看关注的达人！");
				   		return ture;
					}
				 }
		  	</script>
			<form action="starAdd" method="post" name="form">
				<input type="hidden" id="aid" name="aid" value="${session.user_active.id}"/>
				<input type="hidden" id="bid" name="bid" value="${user_star.id}"/>
				<input type="image" class="rng-b" onclick="return star_add(this.form)" src="/chbbs/resource/academy/images/more.jpg"/>
			</form>
            
            <p class="rng-c">${user_star.username}</p>
        </li>
	</s:iterator>
	
	<script type="text/javascript">
		var a_id = document.getElementById("a_id").value;
		var b_id = document.getElementById("b_id").value;
		function starAdd(){
			if(!b_id){
				alert("请登录后再关注达人！");
			}
			else if(a_id&&b_id){
	   			alert("已关注，可在  我的主页  查看关注的达人。");
	   			window.location.href="http://localhost:8080/chbbs/starAdd?aid="+a_id+"&bid="+b_id;
			}
		}
	</script>
</ul>