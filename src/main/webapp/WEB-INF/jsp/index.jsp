<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title><spring:message code="spring.data.jpa.example.title"/></title>
    <link rel="stylesheet" type="text/css" href="/static/stylesheets/style.css"/>
</head>
<body>
    <h1><spring:message code="spring.data.jpa.example.homepage.title"/></h1>
    <p>
        <spring:message code="spring.data.jpa.example.welcome.message"/>
    </p>
    <form:form method="POST" commandName="userSignInForm">
		<form:errors path="*" cssClass="errorblock" element="div" />
		<table>
			<tr>
				<td>Username :</td>
				<td><form:input path="userName" />
				</td>
				<td><form:errors path="userName" cssClass="error" />
				</td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><form:input path="password" />
				</td>
				<td><form:errors path="password" cssClass="error" />
				</td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" />
				</td>
			</tr>
		</table>
	</form:form>
</body>
</html>