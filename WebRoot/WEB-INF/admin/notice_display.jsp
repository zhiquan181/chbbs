<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="/WEB-INF/admin/global_top.jsp" />
<section class="content">

<div class="col-md-12">
	<section class="panel">
		<header class="panel-heading"> 后台系统 / 公告管理 / 公告显示 </header>
		<div class="panel-body table-responsive">
			<table class="table table-hover">
					<div class="form-horizontal tasi-form" method="post">
						<div class="form-group">
			                <label class="col-sm-2 col-lg-2"><a class="btn btn-success btn-sm pull-left" href="noticeUpdateEdit">Updat Notice</a></label>
			            
			            </div>
			            
						<div class="form-group">
			                <label class="col-sm-2 control-label col-lg-2">公告标题</label>
			                <div class="col-lg-10">
			                    <div class="input-group m-b-10">
			                        <span class="input-group-addon">@</span>
			                        <p class="form-control">${notice.title}</p>
			                    </div>
			                </div>
			            </div>
			            
			            <div class="form-group">
			                <label class="col-sm-2 control-label col-lg-2">公告内容</label>
			                <div class="col-lg-10">
			                        ${notice.content}
			                </div>
			            </div>
			         </div>

		    </table>
	            
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
			</div>
		</div>
	</section>
</div>

</section>                        
<style type="text/css">
table {
	display: table;
	border-collapse: separate;
	border-spacing: 0px;
}
.table > thead > tr > th {
    vertical-align: bottom;
    border-bottom: 0px solid #dddddd;
}
.newsshow{border:1px solid #ddd;padding:10px;}
</style>
<jsp:include page="/WEB-INF/admin/global_bottom.jsp" />
