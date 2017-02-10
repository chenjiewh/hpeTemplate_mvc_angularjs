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
	<form
		action="${ctx}/user/doUserAdd.do"
		method="post">
		state:<input type="text" name="state" value="${user.state}"/><br /> nickname:<input
			type="text" name="nickname" value="${user.nickname}"/><br /> <input type="submit"
			value="添加" /> <input type="reset" value="重置" />
	</form>
</body>
</html>