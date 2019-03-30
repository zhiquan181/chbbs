<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
	<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>社区论坛 - 后台登录系统</title>
	<style type="text/css">
		*{margin:0;padding:0;font-size:13px;font-family:microsoft yahei}
		html,body{width:100%;height:100%;background:#fff}
		#container{width:100%;height:100%;position:fixed;top:0;left:0;z-index:999}
		#output{width:100%;height:100%}
		.prompt{width:60%;height:30px;margin:5px auto;text-align:center;line-height:30px;font-family:microsoft yahei,Arial,sans-serif;font-size:13px;color:#df0000}
		.containerT{width:400px;height:300px;border: 1px solid rgba(255,255,255,.4);    background-color: rgba(255,255,255,.2);text-align:center;position:absolute;top:50%;left:50%;margin:-200px 0 0 -200px;border-radius:3px}
		.containerT h1{font-size:18px;padding: 25px 0 0 0;color: #fff;font-family:microsoft yahei,Arial,sans-serif;-webkit-transition-duration:1s;transition-duration:1s;-webkit-transition-timing-function:ease-in-put;transition-timing-function:ease-in-put;font-weight:500}
		form{padding:20px 0;position:relative;z-index:2}
		form input{-webkit-appearance:none;-moz-appearance:none;appearance:none;outline:0;border:1px solid rgba(255,255,255,.4);background-color:rgba(255,255,255,.2);width:200px;border-radius:3px;padding:8px 15px;margin:0 auto 10px;display:block;text-align:center;font-size:15px;color:#fff;-webkit-transition-duration:.25s;transition-duration:.25s;font-weight:300}
		form input:hover{background-color:rgba(255,255,255,.4)}
		form input:focus{background-color:#fff;width:230px;color:#333}
		form button{-webkit-appearance:none;-moz-appearance:none;appearance:none;outline:0;background-color:#fff;border:0;padding:10px 15px;color:#333;border-radius:3px;width:200px;cursor:pointer;font-family:microsoft yahei,Arial,sans-serif;font-size:16px;font-weight:400;-webkit-transition-duration:.25s;transition-duration:.25s}
		form button:hover{background-color:#f5f7f9}
		#entry_btn{background:rgba(255,255,255,.8);color:#000;cursor:pointer;}
		.checkCode_Box{display: block;padding-bottom:5px;}
	</style>
	<link rel="icon" type="image/png" sizes="32x32" href="/chbbs/resource/home/images/favicon.ico">
	<script type="text/javascript" src="/chbbs/resource/btzero7/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="/chbbs/resource/btzero7/js/vector.js"></script>

</head>
<body>

<div id="container">
	<div id="output">
		<div class="containerT">
			<h1>基于SSH的社区论坛系统的设计与实现</h1>
			<form class="form" id="entry_form" action="alogin">
				<input type="text" placeholder="用户名" id="entry_name" name="auser.username">
				<input type="password" placeholder="密码" id="entry_password" name="auser.password">
				
				<span class="checkCode_Box">
	    			<input class="checkCode" id="checkCode" name="checkCode" placeholder="请输入验证码" value="" type="text" required="required"/>
	    			<img id="createImage" src="createImage" onclick="refresh(this)" title="点击图片刷新验证码"/>
	    			<a class="refreshimg" onclick="refreshimg()">看不清，点击换一个哦!</a>
	    		</span>
				    		
				<input type="submit" id="entry_btn" value="登录"/>
				<span id="checkCode_span"></span>
				<div id="prompt" class="prompt"></div>
			</form>
		</div>
	</div>
</div>

<script type="text/javascript">
    $(function(){
        Victor("container", "output");   //登录背景函数
        $("#entry_name").focus();
        $(document).keydown(function(event){
            if(event.keyCode==13){
                $("#entry_btn").click();
            }
        });
    });
</script>

<script type="text/javascript">
     function refresh(obj){
         obj.src="createImage.action?id="+Math.random();
     }
     function refreshimg(){
     var obj_img = document.getElementById("createImage");
         obj_img.src="createImage.action?id="+Math.random();
     }
     
     function check() {   
		var checkCode = document.getElementById("checkCode").value;
		if(checkCode == ""&&checkCode==null) {
			alert("请填写图形验证码");
			return false;
		}
		return true;
	}
</script>
					
</body>
</html>
