<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="/WEB-INF/admin/global_top.jsp" />
<section class="content">

<div class="col-md-12">
	<section class="panel">
		<header class="panel-heading"> 后台系统 / 友情链接 / 友情链接修改 </header>
		<div class="panel-body table-responsive">
			<form class="form-horizontal" role="form" action="linkUpdate">
				<input type="hidden" value="${link_update.id}" name="link.id"/>
				
				<div class="form-group">
	                <label class="col-sm-2 col-sm-2 control-label">用户名</label>
	                <div class="col-sm-10">
	                    <input type="text" class="form-control" value="${link_update.title}" name="link.title" required/>
	                </div>
	            </div>
	               
	            <div class="form-group">
	                <label class="col-sm-2 col-sm-2 control-label">密码</label>
	                <div class="col-sm-10">
	                    <input type="text" class="form-control" value="${link_update.domain}" name="link.domain" required/>
	                </div>
	            </div>
	            <p align="center">
	            	<button type="submit" class="btn btn-success">提交</button>
	            </p>
	    	</form>
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
</style>
<jsp:include page="/WEB-INF/admin/global_bottom.jsp" />
