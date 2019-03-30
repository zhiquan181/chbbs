<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="/WEB-INF/admin/global_top.jsp" />
<section class="content">

<div class="col-md-12">
	<section class="panel">
		<header class="panel-heading"> 后台系统 / 会员管理 / 论坛会员添加 </header>
		<div class="panel-body table-responsive">
			<form class="form-horizontal" role="form" action="userInsert">
				
				<div class="form-group">
	                <label class="col-sm-2 col-sm-2 control-label">用户名</label>
	                <div class="col-sm-10">
	                    <input type="text" class="form-control" value="" name="user.username" maxlength="5" required/>
	                </div>
	            </div>
	               
	            <div class="form-group">
	                <label class="col-sm-2 col-sm-2 control-label">密码</label>
	                <div class="col-sm-10">
	                    <input type="password" class="form-control" value="" name="user.password" required/>
	                </div>
	            </div>
	            
	            <div class="form-group">
	                <label class="col-sm-2 col-sm-2 control-label">邮箱</label>
	                <div class="col-sm-10">
	                    <input type="email" class="form-control" value="" name="user.email" required/>
	                </div>
	            </div>
	            
	            <div class="form-group">
	                <label class="col-sm-2 col-sm-2 control-label">性别</label>
	                <div class="col-sm-10">
	                    <select class="form-control" name="user.sex">
                            <option selected = "selected">男</option>
                            <option>女</option>
                        </select>
	                </div>
	            </div>
	            
	            <div class="form-group">
	                <label class="col-sm-2 col-sm-2 control-label">手机</label>
	                <div class="col-sm-10">
	                    <input type="text" class="form-control" value="" name="user.phone" maxlength="11" required/>
	                </div>
	            </div>
	            
	            <div class="form-group">
	                <label class="col-sm-2 col-sm-2 control-label">出生日期</label>
	                <div class="col-sm-10">
	                    <input type="text" id="birthday" class="form-control" value="" name="user.birthday" required/>
	                </div>
	            </div>
	            <script src="/chbbs/resource/btzero7/js/datePicker.js" type="text/javascript"></script>
	            <script>
					var calendar = new datePicker();
					calendar.init({
						'trigger': '#birthday', /*按钮选择器，用于触发弹出插件*/
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
	            
	            <div class="form-group">
	                <label class="col-sm-2 col-sm-2 control-label">地址</label>
	                <div class="col-sm-10">
	                    <input type="text" class="form-control" value="" name="user.address" required/>
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
