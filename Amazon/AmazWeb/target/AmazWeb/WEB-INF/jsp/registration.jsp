<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form:form method="POST" action="submitRegistration.do"  modelAttribute="RegistrationKey">
		<table width="100%" border="0">
			<tr>
				<td>User Name: <form:input path="firstname" id="firstname" />
				</td>
			</tr>
			<tr>
				<td>Password: <form:password path="lastname" id="lastname" /></td>
			</tr>
			<tr>
				<td>User Name: <form:input path="mobile" id="mobile" />
				</td>
			</tr>
			<tr>
				<td>User Name: <form:input path="email" id="email" />
				</td>
			</tr><tr>
				<td>User Name: <form:password path="password" id="password" />
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>