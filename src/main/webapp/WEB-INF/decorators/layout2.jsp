<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<%@page contentType="text/html; charset=UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<style>
.mainTable {
	width: 100%;
}

#page-header{
	height: 75px;
}

#nav-container{
	height: 30px;
	background-color: #bfbfbf;
}

#left-nav-container{
	width: 150px;
}

</style>
<head>

<title>http://bharatonjava.wordpress.com | <decorator:title
	default="Sitemesh Example" /></title>

<link rel="stylesheet" type="text/css" href="/assets/css/style.css">

<decorator:head />


</head>

<body>
<table class="mainTable" id="page-container" cellpadding="5" cellspacing="0" border="1"
	align="center">
	<tr>
		<td colspan="2" id="page-header"><%@ include
			file="/WEB-INF/includes/header.jsp"%></td>
	</tr>
	<tr>
		<td id="nav-container" colspan="2"><%@ include
			file="/WEB-INF/includes/navigation.jsp"%></td>
	</tr>
	<tr>
		<td id="left-nav-container"><%@ include
			file="/WEB-INF/includes/navigationLeft.jsp"%></td>
		<td id="content-container"><decorator:body /></td>
	</tr>
	<tr>
		<td colspan="2" id="page-footer"><%@ include
			file="/WEB-INF/includes/footer.jsp"%></td>
	</tr>
</table>
<table align="center">
	<tr>
		<td align="center"><br /><a
			href='http://bharatonjava.wordpress.com'>Source code available on Rick's Blog</a></td>
	</tr>
</table>
</body>
</html>

