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
	<sql:update dataSource="${chyx }">
		 update tb set param_name='${param.paramName }',param_value='${param.paramValue }',remark='${param.remark }' where id=${param.id }; 
	</sql:update>
	<jsp:forward page="/show.jsp"></jsp:forward>
</body>
</html>