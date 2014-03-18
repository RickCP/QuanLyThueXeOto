<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<h2>Sign Up Form</h2>

	<form:form method="POST" commandName="userForm" action="${pageContext.request.contextPath }/register">

		<form:errors path="*" cssClass="errorblock" element="div" />

		<table>
			<tr>
				<td>UserName :</td>
				<td><form:input path="userName" /></td>
				<td><form:errors path="userName" cssClass="error" /></td>
			</tr>

			<tr>
				<td>Password :</td>
				<td><form:password path="password" /></td>
				<td><form:errors path="password" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Confirm Password :</td>
				<td><form:password path="confirmPassword" /></td>
				<td><form:errors path="confirmPassword" cssClass="error" /></td>
			</tr>

			<tr>
				<td>Email :</td>
				<td><form:input path="email" /></td>
				<td><form:errors path="email" cssClass="error" /></td>
			</tr>


			<tr>
				<td>Gioi Tinh :</td>
				<td><form:radiobutton path="gioiTinh" value="M" />Male <form:radiobutton
						path="gioiTinh" value="F" />Female</td>
				<td><form:errors path="gioiTinh" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Chuc Vu :</td>
				<td><form:select path="dmQuyen">
						<form:option value="NONE" label="--- Select ---" />
						<form:options items="${dmQuyenList}" />
					</form:select></td>
				<td><form:errors path="dmQuyen" cssClass="error" /></td>
			</tr>

			<tr>
				<td>Ngay Sinh :</td>
				<td><form:input path="ngaySinh" /></td>
				<td><form:errors path="ngaySinh" cssClass="error" /></td>
			</tr>

			<tr>
				<td>Dien Thoai :</td>
				<td><form:input path="dienThoai" /></td>
				<td><form:errors path="dienThoai" cssClass="error" /></td>
			</tr>

			<tr>
				<td>CMND :</td>
				<td><form:input path="cmnd" /></td>
				<td><form:errors path="cmnd" cssClass="error" /></td>
			</tr>

			<tr>
				<td>Dia Chi :</td>
				<td><form:input path="diachi" /></td>
				<td><form:errors path="diachi" cssClass="error" /></td>
			</tr>


			<tr>
				<td colspan="3"><input type="submit" value="Register" /></td>
			</tr>
		</table>
	</form:form>

</body>
</html>