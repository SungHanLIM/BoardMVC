<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<hr>
	<div class="container">
		<form class="form-signin" action="member" method="post">
			<h2 class="form-signin-heading">
				Login
				<h6>For Board Project</h6>
			</h2>

			<!-- <label for="inputID" class="sr-only">ID</label>  --><input
				class="form-control" type="hidden" name="action" value="login">
			<input name="id" type="text" id="inputEmail" class="form-control"
				placeholder="ID" required="" autofocus=""><br> <input
				name="password" type="password" id="inputPassword"
				class="form-control" placeholder="Password" required=""> <br>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Entrance</button>
		</form>
	</div>
	<br>
	<br>
	<hr>
</body>
</html>