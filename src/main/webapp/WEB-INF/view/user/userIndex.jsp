<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../common/common.jsp" %>

<!-- Main content --> 
<section class="content-header">
</section>

<!-- Main content -->
<section class="content">
	<div class="box">
		<div class="box-header">
			<h3 class="box-title">用户信息列表</h3>		
			<div class="row">
				<div class="col-sm-12">
					<div class="pagination pagination-sm no-margin pull-right">	
						<a href="${ctx}/user/userAdd.do"><input type="button" class="btn btn-info" value="添加"></a>					
						<button type="button" class="btn btn-danger">导出</button>
						<button type="button" class="btn btn-warning">导入</button>						
					</div>					
				</div>							
			</div>						
		</div>
		<!-- /.box-header -->
		<div class="box-body">
			<div class="row">
				<div class="col-sm-12">
					<table id="example1" class="table table-bordered table-striped">
						<thead>
						<tr>
							<th>序号</th>
							<th>ID</th>
							<th>用户名</th>
							<th>性别</th>
							<th>操作</th>
						</tr>
						</thead>
						<tbody>
							<c:forEach items="${usetList}" var="info" varStatus="stats">
							<tr>
								<td>${stats.count}</td>
								<td>${info.id}</td>
								<td>${info.nickname}</td>
								<td>${info.state}</td>
								<td>
									<a href="${ctx}/user/userUpd.do?uid"><input type="button" class="btn btn-info" value="编辑"></a>
									<a href="${ctx}/user/userDel.do?uid"><input type="button" class="btn btn-info" value="删除"></a>
                    			</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-5">
					<div class="dataTables_info" id="example1_info" role="status" aria-live="polite">显示 1 - 10，共计  57 条记录</div>
				</div>
				<div class="col-sm-7">
					<ul class="pagination pagination-sm no-margin pull-right">
						<li><a href="#">&laquo;</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">3</a></li>
                		<li><a href="#">&raquo;</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>