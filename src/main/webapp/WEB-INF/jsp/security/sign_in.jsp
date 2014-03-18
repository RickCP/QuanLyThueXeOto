<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<meta name="msapplication-TileColor" content="#5bc0de" />
<meta name="msapplication-TileImage" content="assets/img/metis-tile.png" />
<link rel="stylesheet" href="assets/lib/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/lib/magic/magic.css">
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
				<img src="assets/img/logo.png" alt="Metis Logo">
			</div>
			<div class="tab-content">
				<div id="login" class="tab-pane active">
					<form action="${pageContext.request.contextPath}/login" class="form-signin">
						<p class="text-muted text-center">Enter your username and
							password</p>
						<input type="text" placeholder="Username" class="form-control">
						<input type="password" placeholder="Password" class="form-control">
						<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
							in</button>
					</form>
					<form:form method="POST" commandName="loginForm" cssClass="form-signin"
						action="${pageContext.request.contextPath}/login" >
						<form:errors path="*" cssClass="errorblock" element="div" />
						
						<form:label path="message"></form:label>
						<p class="text-muted text-center">Enter your username and
							password</p>
						<table>
							<tr>
								<td>User Name :</td>
								<td><form:input path="username"  placeholder="Username" class="form-control" /></td>
								<td><form:errors path="username" cssClass="error" /></td>
							</tr>
							<tr>
								<td>Password:</td>
								<td><form:input path="password" placeholder="Password" class="form-control" /></td>
								<td><form:errors path="password" cssClass="error" /></td>
							</tr>
							<tr>
								<td colspan="3"><input type="submit" /></td>
							</tr>
						</table>
					</form:form>
					<div class="error">${message} aaaaa</div>
					
				</div>
				<div id="forgot" class="tab-pane">
					<form action="index.html" class="form-signin">
						<p class="text-muted text-center">Enter your valid e-mail</p>
						<input type="email" placeholder="mail@domain.com"
							required="required" class="form-control"> <br>
						<button class="btn btn-lg btn-danger btn-block" type="submit">Recover
							Password</button>
					</form>
				</div>
				<div id="signup" class="tab-pane">
					<form action="index.html" class="form-signin">
						<input type="text" placeholder="username" class="form-control">
						<input type="email" placeholder="mail@domain.com"
							class="form-control"> <input type="password"
							placeholder="password" class="form-control">
						<button class="btn btn-lg btn-success btn-block" type="submit">Register</button>
					</form>
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
