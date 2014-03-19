<%@ include file="/WEB-INF/jsp/include/taglibs_include.jsp"%>
<%@ include file="/WEB-INF/jsp/include/server_variables.jsp"%>
<%@ include file="/WEB-INF/jsp/include/js_variables.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<meta name="msapplication-TileColor" content="#5bc0de" />
<meta name="msapplication-TileImage"
	content="${contextPath}/assets/img/metis-tile.png" />
<link rel="stylesheet"
	href="${contextPath}/assets/lib/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="${contextPath}/assets/css/main.css">
<link rel="stylesheet" href="${contextPath}/assets/lib/magic/magic.css">
<style type="text/css">
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
<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script', '//www.google-analytics.com/analytics.js',
			'ga');
	ga('create', 'UA-1669764-16', 'onokumus.com');
	ga('send', 'pageview');
</script>
</head>
<body class="login">
	<!-- /container -->
	<div class="container">
		<div class="text-center">
			<img src="${contextPath}/assets/img/logo.png" alt="Metis Logo">
		</div>
		<div class="tab-content">
			<div id="login" class="tab-pane active">
				<form:form method="POST" commandName="loginForm"
					cssClass="form-signin"
					action="${pageContext.request.contextPath}/login/sign_up">
					<form:errors path="*" cssClass="errorblock" element="div" />
					<div class="error">${message}</div>
					<form:label path="message"></form:label>
					<p class="text-muted text-center">Enter your username and
						password</p>
					<form:input path="username" placeholder="Username"
						class="form-control" />
					<form:input path="password" placeholder="Password"
						class="form-control" />
					<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
						in</button>

				</form:form>
			</div>
			<div id="forgot" class="tab-pane">
				<form method="post"
					action="${pageContext.request.contextPath}/login/sign_up"
					class="form-signin">
					<p class="text-muted text-center">Enter your valid e-mail</p>
					<input type="email" placeholder="mail@domain.com"
						required="required" class="form-control"> <br>
					<button class="btn btn-lg btn-danger btn-block" type="submit">Recover
						Password</button>
				</form>
			</div>
			<div id="signup" class="tab-pane">
				<form method="post"
					action="${pageContext.request.contextPath}/login/sign_up"
					class="form-signin">
					<input type="text" placeholder="username" class="form-control">
					<input type="email" placeholder="mail@domain.com"
						class="form-control"> <input type="password"
						placeholder="password" class="form-control">
					<button class="btn btn-lg btn-success btn-block" type="submit">Register</button>
				</form>
				<form:form method="POST" commandName="userForm"
					action="${pageContext.request.contextPath }/login/register">
					<form:errors path="*" cssClass="errorblock" element="div" />
					<form:input path="userName" cssClass="form-control" />
					<form:errors path="userName" cssClass="error" />

					<form:password path="password" cssClass="form-control" />
					<form:errors path="password" cssClass="error" />


					<form:password path="confirmPassword" cssClass="form-control" />
					<form:errors path="confirmPassword" cssClass="error" />



					<form:input path="email" cssClass="form-control" />
					<form:errors path="email" cssClass="error" />




					<form:radiobutton path="gioiTinh" value="M" />Male <form:radiobutton
						path="gioiTinh" value="F" />Female
						<form:errors path="gioiTinh" cssClass="error" />


					<form:select path="dmQuyen">
						<form:option value="NONE" label="--- Select ---" />
						<form:options items="${dmQuyenList}" />
					</form:select>
					<form:errors path="dmQuyen" cssClass="error" />



					<form:input path="ngaySinh" cssClass="form-control" />
					<form:errors path="ngaySinh" cssClass="error" />


					<form:input path="dienThoai" cssClass="form-control" />
					<form:errors path="dienThoai" cssClass="error" />


					<form:input path="cmnd" cssClass="form-control" />
					<form:errors path="cmnd" cssClass="error" />

					<form:input path="diachi" cssClass="form-control" />
					<form:errors path="diachi" cssClass="error" />
					<button class="btn btn-lg btn-success btn-block" type="submit">Register</button>
				</form:form>
			</div>
		</div>
		<div class="text-center">
			<ul class="list-inline">
				<li><a class="text-muted" href="#login" data-toggle="tab">Login</a>
				</li>
				<li><a class="text-muted" href="#forgot" data-toggle="tab">Forgot
						Password</a></li>
				<li><a class="text-muted" href="#signup" data-toggle="tab">Signup</a>
				</li>
			</ul>
		</div>
	</div>

	<script src="assets/lib/jquery.min.js"></script>
	<script src="assets/lib/bootstrap/js/bootstrap.js"></script>
	<script>
		$('.list-inline li > a').click(function() {
			var activeForm = $(this).attr('href') + ' > form';
			//console.log(activeForm);
			$(activeForm).addClass('magictime swap');
			//set timer to 1 seconds, after that, unload the magic animation
			setTimeout(function() {
				$(activeForm).removeClass('magictime swap');
			}, 1000);
		});
	</script>
</body>
</html>
