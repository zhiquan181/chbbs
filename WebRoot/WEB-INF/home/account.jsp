<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>账号设置</title>
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
		    <div class="wrap">
		         <div class="tsm-height"></div>
		         <div class="account">
		         	<form action="accountUpdate" method="post">
		                 <div class="account-title">账户设置</div>
		                 <div class="tsm-box">
		                      <div class="tsm-title">个人资料
		                      </div>
		                      <div class="tsm-a" style="display:block;">
		                      			   <input type="hidden" value="${user_update.id}" name="user.id">
		                                   <div class="tsm-a1">
		                                         <div class="tsm-a2 fl">用户名：</div>
		                                         <div class="tsm-a3"><input type="text" class="tsm-text1" value="${user_update.username}" name="user.username" maxlength="5" required></div>
		                                   </div>
		                                                                      
		                                   <div class="tsm-a1">
		                                         <div class="tsm-a2 fl">密码：</div>
		                                         <div class="tsm-a3"><input type="password" class="tsm-text1" value="${user_update.password}" name="user.password" required></div>
		                                   </div>
		                                   
		                                   <div class="tsm-a1">
		                                         <div class="tsm-a2 fl">性别：</div>
		                                         <div class="tsm-a3"><input type="text" class="tsm-text1" value="${user_update.sex}" name="user.sex"/ readonly><small style="color:red;">（性别不可更改）</small></div>
		                                   </div>
		                                   
		                                   <div class="tsm-a1">
		                                         <div class="tsm-a2 fl">邮箱：</div>
		                                         <div class="tsm-a3"><input type="email" class="tsm-text1" value="${user_update.email}" name="user.email" required></div>
		                                   </div>
		                                   
		                                   <div class="tsm-a1">
		                                         <div class="tsm-a2 fl">手机：</div>
		                                         <div class="tsm-a3"><input type="text" class="tsm-text1" value="${user_update.phone}" name="user.phone" maxlength="11" required></div>
		                                   </div>
		                                   <div class="tsm-a1">
		                                         <div class="tsm-a2 fl">地址：</div>
		                                         <div class="tsm-a3"><input type="text" class="tsm-text1" value="${user_update.address}" name="user.address" required></div>
		                                   </div>
		                                   
		                                   <div class="tsm-a1">
		                                         <div class="tsm-a2 fl">出生日期：</div>
		                                         <div class="tsm-a3"><input type="text" id="birthday2" class="tsm-text1" value="<s:date name="#request['user_update'].birthday" format="yyyy-MM-dd" />" name="user.birthday" required></div>
		                                   </div>
		                                   <!-- 出生日期js -->
											<script src="/chbbs/resource/btzero7/js/datePicker.js" type="text/javascript"></script>
											<script>
												var calendar = new datePicker();
												calendar.init({
													'trigger': '#birthday2', /*按钮选择器，用于触发弹出插件*/
													'type': 'date',/*模式：date日期；datetime日期时间；time时间；ym年月；*/
													'minDate':'1900-1-1',/*最小日期*/
													'maxDate':'2100-12-31',/*最大日期*/
													'onSubmit':function(){/*确认时触发事件*/
														var theSelectData=calendar.value;
													},
													'onClose':function(){/*取消时触发事件*/
													}
												});
											</script>
		                        </div>
		                 </div>
		                
		                 <div class="tsm-box">
		                      <div class="tsm-title">关联账户（暂未实现）</div>
		                      <div class="tsm-a">
	                                   <div class="tsm-a1">
	                                         <div class="tsm-a2 fl">微信：</div>
	                                         <div class="tsm-a3"><input type="text" class="tsm-text1"></div>
	                                   </div>
	 
	                                   <div class="tsm-a1">
	                                         <div class="tsm-a2 fl">微博：</div>
	                                         <div class="tsm-a3"><input type="text" class="tsm-text1"></div>
	                                   </div>
	                                   <div class="tsm-a1">
	                                         <div class="tsm-a2 fl">QQ：</div>
	                                         <div class="tsm-a3"><input type="text" class="tsm-text1"></div>
	                                   </div>
		                        </div>
		                 </div>
		                 
		                 <div class="tsm-href"><input type="submit" class="tsm-btn" value="保存"></div>
		             </form>   
		         </div>
		    </div>
		 
		</div>
	</s:else>
	
	<jsp:include page="/WEB-INF/home/foot.jsp"/>
  </body>
</html>
	