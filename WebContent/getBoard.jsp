<%@page import="com.tacademy.board.vo.Board"%>
<%@page import="com.tacademy.board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contents</title>
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
				<h3>Contents</h3>
				<h5>You can modify this article.</h5>
				<a class="btn btn-default" href="member?action=logout" role="button">Log-out</a>
			</div>
		</div>
<div class="container">
		<form action="board" method="post">
			<input type="hidden" name= "seq" value = "${board.seq }">
			<input type = "hidden" name = "action" value = "updateBoard">
			<!-- 작성자 -->
			<div class="bs-example" data-example-id="simple-strong">
			<p>Writer : <strong>${board.writer }</strong>&nbsp;&nbsp;&nbsp; Date of registration : <strong>${board.regDate }</strong></p>
  			</div>
			<!-- 제목 -->
			<input name="title" type="text" value="${board.title }" class="form-control" /><br>
			<!-- 내용 -->
			<textarea class="form-control" name="content" cols="40" rows="10">${board.content }</textarea><br>
			
			<button class="btn btn-lg btn-primary btn-block" type="submit">Entry</button>
		</form>
		<hr>
	</div>
	
</body>
</html>