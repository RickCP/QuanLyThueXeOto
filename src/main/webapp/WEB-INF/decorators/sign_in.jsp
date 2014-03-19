<%@ include file="/WEB-INF/jsp/include/taglibs_include.jsp" %>
<%@ include file="/WEB-INF/jsp/include/server_variables.jsp" %>
<%@ include file="/WEB-INF/jsp/include/js_variables.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<meta name="msapplication-TileColor" content="#5bc0de" />
<meta name="msapplication-TileImage" content="${contextPath}/assets/img/metis-tile.png" />
<link rel="stylesheet" href="${contextPath}/assets/lib/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="${contextPath}/assets/css/main.css">
<link rel="stylesheet" href="${contextPath}/assets/lib/magic/magic.css">
<style type="text/css">

.error {
	color: #ff0000;
}
.errorblock{
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding:8px;
	margin:16px;
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
		<decorator:body></decorator:body>
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
