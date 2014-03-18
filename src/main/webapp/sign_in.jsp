<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
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
<h2>SignUp Form</h2>
    <div class="error">${message}</div>
	<form:form method="POST" commandName="loginForm" action="${pageContext.request.contextPath}/login">
		<form:errors path="*" cssClass="errorblock" element="div" />
		<form:label path="message"></form:label>
		<table>
			<tr>
				<td>User Name :</td>
				<td><form:input path="username" /></td>
				<td><form:errors path="username" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><form:input path="password" /></td>
				<td><form:errors path="password" cssClass="error" /></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>