<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Register New Article</title>
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
	<div class="jumbotron">
		<div class="container">
			<h3>Register New Article</h3>
			<h5>Please enter the article you want.</h5>
			<a class="btn btn-default" href="member?action=logout" role="button">Log-out</a>
		</div>
	</div>
	<div class="container">
		<form action="board" method="post">
			<input type="hidden" name="action" value="addBoard">
			<!-- 제목 -->
			<input name="title" type="text" class="form-control"
				placeholder="Title" required="" autofocus=""><br>
			<!-- 작성자 -->
			<input name="writer" type="text" class="form-control"
				placeholder="Writer" required="" autofocus=""><br>
			<!-- 내용 -->
			<input name="content" type="text" class="form-control"
				placeholder="Writer" required="" autofocus=""><br>

			<button class="btn btn-lg btn-primary btn-block" type="submit">Register
				New Article</button>
		</form>
		<hr>
	</div>
</body>
</html>