<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Add User page</title>
<style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
</head>
<body>
	<%
		ServletContext servletContext = request.getServletContext();
		String rootPath = servletContext.getContextPath();
	%>

	<h1>Add User page</h1>
	<p>Here you can add a new User.</p>
	<form:errors path="*" cssClass="errorblock" element="div" />
	<form:form method="POST" commandName="user"
		action="/ManagementCar/user/add.html">
		<table>
			<tbody>
				<tr>
					<td>Username:</td>
					<td><form:input path="userName" /></td>
					<td><form:errors path="userName" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><form:input path="password" /></td>
					<td><form:errors path="password" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Confirm Password:</td>
					<td><form:input path="confirmPassword" /></td>
					<td><form:errors path="confirmPassword" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Ho Va Ten:</td>
					<td><form:input path="hoTen" /></td>
					<td><form:errors path="hoTen" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Ngay Sinh:(dd/mm/yyyy)</td>
					<td><form:input path="ngaySinh" /></td>
					<td><form:errors path="ngaySinh" cssClass="error" /></td>
				</tr>

				<td>Gioi Tinh:</td>
				<td><form:radiobutton path="gioiTinh" value="M" />Male <form:radiobutton
						path="gioiTinh" value="F" />Female</td>
				</tr>
				<tr>
					<td>Dien Thoai:</td>
					<td><form:input path="dienThoai" /></td>
					<td><form:errors path="dienThoai" cssClass="error" /></td>
				</tr>
				<tr>
					<td>CMND:</td>
					<td><form:input path="cmnd" /></td>
					<td><form:errors path="cmnd" cssClass="error" /></td>
				</tr>
				<tr>
					<td>E-mail:</td>
					<td><form:input path="email" /></td>
					<td><form:errors path="email" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Dia Chi:</td>
					<td><form:input path="diachi" /></td>
					<td><form:errors path="diachi" cssClass="error" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Register" /></td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</form:form>

	<p>
		<a href="${pageContext.request.contextPath}/index.html">Home page</a>
	</p>
</body>
</html>