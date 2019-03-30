<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>发表帖子</title>
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
	
	<form method="post" action="topicAdd">
		<input type="hidden" class="form-control" value="${session.user_active.id}" name="userid" required>
		<p>帖子话题&nbsp;@&nbsp;<input type="text" class="form-control" value="" name="topic.title" placeholder="请输入帖子话题 如：教你如何一步步把妹子泡到手！" required></p>
		
		<p>帖子类别&nbsp;@&nbsp;<select name="topic.type">
				<option selected="selected">恋爱</option>
				<option>编程</option>
				<option>科学</option>
				<option>动漫</option>
				<option>文艺</option>
				<option>游戏</option>
				<option>电影</option>
			</select>
		</p>
		<p><textarea class="form-control col-lg-12" id="description" required rows="50" name="topic.content">这里是帖子内容。。。</textarea></p>
		<p align="center"><button type="submit" class="btn-submit">完成</button></p>
	          
        <script src="/chbbs/resource/Kindeditor/kindeditor-all-min.js" type="text/javascript"></script>
        <script src="/chbbs/resource/Kindeditor/zh-CN.js" type="text/javascript"></script>
        <link href="/chbbs/resource/Kindeditor/themes/default/default.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript">
        	KindEditor.ready(function(K) {
                window.editor = K.create('#description',{
                    items : [
                            'source', '|', 'undo', 'redo', '|', 'preview', 'print', 'template', 'code', 'cut', 'copy', 'paste',
                            'plainpaste', 'wordpaste', '|', 'justifyleft', 'justifycenter', 'justifyright',
                            'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript',
                            'superscript', 'clearhtml', 'quickformat', 'selectall', '|', 'fullscreen', '/',
                            'formatblock', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
                            'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|', 'image', 'multiimage',
                            'flash', 'media', 'insertfile', 'table', 'hr', 'emoticons', 'baidumap', 'pagebreak',
                            'anchor', 'link', 'unlink', '|', 'about'
                    ],
                    allowFileManager:true,
                    uploadJson : '../../image_upload.action',
                    fileManagerJson : '../../image_manage.action'
                });
              });
        </script>
	</form>
	
	<jsp:include page="/WEB-INF/home/foot.jsp"/>
</s:else>
<style type="text/css">
	form p{width:1000px;background:rgb(250,250,250);margin:20px auto;padding:15px 0;text-align: center;font-size:16px;}
	form p input,form p select{width:500px;height:40px;text-indent:1em;font-size:16px;}
	form .ke-container{width:1000px!important;height:;margin:auto;}
	.btn-submit{padding:10px 20px;background:orange;border-radius:5px;cursor:pointer;outline:none;border:none;color:#fff;}
</style>
</body>
</html>