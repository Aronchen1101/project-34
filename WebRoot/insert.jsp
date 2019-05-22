<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="insert_show.jsp" method="post">
		<table align="center" width="600px" cellpadding="0" cellspacing="0">
		<tr>
			<td>参数名：</td>
			<td><input type="text" name="paramName" /><br/></td>
		</tr>
		<tr>
			<td>参数值：</td>
			<td><input type="text" name="paramValue" /><br/></td>
		</tr>
		<tr>
			<td>备注：</td>
			<td><input type="text" name="remark" /><br/></td>
		</tr>
		<tr>
			<td align="center" colspan="2"><br/><input type="submit" value="添加"></td>
		</tr>
		</table>
	</form>
</body>
</html>