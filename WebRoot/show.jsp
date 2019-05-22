<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>weiyidata</title>
</head>
<body>
	<sql:setDataSource var="chyx" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/weiyidata?useUnicode=true&characterEncoding=utf-8"
	user="root" password="123456"/>
	<sql:query dataSource="${chyx }" var="result">
		select * from tb;
	</sql:query>
	<table align="center" border="1" width="600px" cellspacing="0" cellpadding="0">
		<tr>
			<th>id</th>
			<th>参数名</th>
			<th>参数值</th>
			<th>备注</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${result.rows }" var="tb">
		<tr align="center">
		<td>${tb.id }</td>
		<td>${tb.param_name }</td>
		<td>${tb.param_value }</td>
		<td>${tb.remark }</td>
		<td>
			<a href="${pageContext.request.contextPath }/insert.jsp">添加</a>
			<a href="${pageContext.request.contextPath }/update.jsp?id=${tb.id}">修改</a>
			<a href="${pageContext.request.contextPath }/delete.jsp?id=${tb.id}">删除</a>
		</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>