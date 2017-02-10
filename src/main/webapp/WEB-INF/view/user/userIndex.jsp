<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="100%" border="1" cellpadding="1" cellspacing="1">
		<caption>员工列表</caption>
		<tr>
			<th>序号</th>
			<th>id</th>
			<th>nickname</th>
			<th>state号</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${usetList}" var="info" varStatus="stats">
			<tr>
				<td>${stats.count}</td>
				<td>${info.id}</td>
				<td>${info.nickname}</td>
				<td>${info.state}</td>
				<td><a href="${ctx}/user/userUpd.do?uid=${info.id}">修改</a>
				&nbsp;<a href="${ctx}/user/userDel.do?uid=${info.id}">删除</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<a href="${ctx}/user/userAdd.do"><input type="button" value="添加"></a>
</body>
</html>