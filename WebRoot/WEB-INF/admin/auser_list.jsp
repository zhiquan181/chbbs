<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="/WEB-INF/admin/global_top.jsp" />
<section class="content">

	<div class="col-md-12">
		<section class="panel">
			<header class="panel-heading"> 后台系统 / 系统用户 / 系统用户列表 </header>
			<div class="panel-body table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>#</th>
							<th>Username</th>
							<th>Password</th>
							<th>Oprate</th>
						</tr>
					</thead>
					<tbody>
					<s:iterator value="#request['ausers']" var="a_user">
							<tr>
								<td>${a_user.id}</td>
								<td>${a_user.username}</td>
								<td>${a_user.password}</td>
								<td>
									<div class="pull-right hidden-phone">
										<button class="btn btn-default btn-xs">
											<i class="fa fa-check"></i>
										</button>
										<button class="btn btn-default btn-xs">
											<a class="update" href="auserUpdateEdit?userid=${a_user.id}"><i class="fa fa-pencil"></i></a>
										</button>
										<button class="btn btn-default btn-xs">
											<a href="auserDelete?userid=${a_user.id}"><i class="fa fa-times"></i></a>
										</button>
									</div>
								</td>
							</tr>
					</tbody>
					</s:iterator>
					
					<div class=" add-task-row">
	                    <a class="btn btn-success btn-sm pull-left" href="auserInsertEdit">Add New</a>
	                    <a class="btn btn-default btn-sm pull-right" href="auserListPaging?currentPage=1">See All</a>
	                </div>
				</table>
				
				<!-- <div class="box-tools">
				    <ul class="pagination pagination-sm m-b-10 m-t-10 pull-right">
				        <li><a href="#">&laquo;</a></li>
				        <li><a href="#">1</a></li>
				        <li><a href="#">2</a></li>
				        <li><a href="#">3</a></li>
				        <li><a href="#">&raquo;</a></li>
				    </ul>
				</div> -->
				
				<div class="box-tools">
					<ul class="pagination pagination-sm m-b-10 m-t-10 pull-right">
								<s:set value="#request['pager']" var="pager"/>
								<!-- 首页 -->
								<s:if test="#pager.hasFirst">
								  <li><a class="pager_commom" href="auserListPaging.action?currentPage=1">首页</a></li>
								</s:if>
								<s:else>
								  <li><a class="pager_commom pager_commom_not" href="javascript:volid(0)">首页</a></li>
								</s:else>
								
								<!-- 上一页 -->
								<s:if test="#pager.hasPrevious">
									<li><a class="pager_commom" href="auserListPaging.action?currentPage=<s:property value="#pager.currentPage-1"/>">上一页</a></li>
								</s:if>
								<s:else>
									<li><a class="pager_commom pager_commom_not" href="javascript:volid(0)">上一页</a></li>
								</s:else>
																
								<!-- 下一页 -->
								<s:if test="#pager.hasNext">
								  <li><a class="pager_commom" href="auserListPaging.action?currentPage=<s:property value="#pager.currentPage+1"/>">下一页</a></li>
								</s:if>
								<s:else>
									<li><a class="pager_commom pager_commom_not">下一页</a></li>
								</s:else>
								
								<!-- 尾页 -->
								<s:if test="#pager.hasLast">
								  <li><a class="pager_commom" href="auserListPaging.action?currentPage=<s:property value="#pager.totalPage"/>">尾页</a></li>
								</s:if>
								<s:else>
								  <li><a class="pager_commom pager_commom_not" href="javascript:volid(0)">尾页</a></li>
								</s:else>
								
								<li><a class="pager_total" href="javascript:volid(0)">当前第<s:property value="#pager.currentPage"/>页/共<s:property value="#pager.totalPage"/>页</a></li>
					</ul>
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
</style>
<jsp:include page="/WEB-INF/admin/global_bottom.jsp" />