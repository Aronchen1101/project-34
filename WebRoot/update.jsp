<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<sql:setDataSource var="chyx" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/weiyidata?useUnicode=true&characterEncoding=utf-8"
	user="root" password="123456"/>
	<sql:query dataSource="${chyx }" var="result">
		select * from tb where id = ${param.id };
	</sql:query>
	<c:forEach items="${result.rows }" var="tb">
	<form action="update_show.jsp" method="post">
		<input type="hidden" name="id" value="${param.id  }" />
		<table align="center" width="600px" cellpadding="0" cellspacing="0">
		<tr>
			<td>参数名：</td>
			<td><input type="text" name="paramName" value="${tb.param_name }" /><br/></td>
		</tr>
		<tr>
			<td>参数值：</td>
			<td><input type="text" name="paramValue" value="${tb.param_value }" /><br/></td>
		</tr>
		<tr>
			<td>备注：</td>
			<td><input type="text" name="remark" value="${tb.remark }"/><br/></td>
		</tr>
		<tr>
			<td align="center" colspan="2"><br/><input type="submit" value="修改"></td>
		</tr>
		</table>
	</form>
	</c:forEach>
</body>
</html>