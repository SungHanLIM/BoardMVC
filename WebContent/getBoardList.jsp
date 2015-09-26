<%@page import="com.tacademy.board.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tacademy.board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	BoardDAO dao = new BoardDAO();
	
	ArrayList<Board> list = dao.getBoardList();
	request.setAttribute("list", list);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List Of Article</title>
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
	<center><h1>List Of Article</h1></center><br>
	<div class="container">
		<div class="panel panel-success">
			<!-- Default panel contents -->
			<div class="panel-heading">
				<h5>
					<b>Welcome to my " ${name } "</b> &nbsp;&nbsp;<a class="btn btn-default" href="addBoard.jsp" role="button">Register New Article</a>&nbsp;&nbsp;<a class="btn btn-default" href="member?action=logout" role="button">Log-out</a>
				</h5>
			</div>

			<!-- Table -->
			<table class="table">
				<thead>
					<tr>
						<th>Number</th>
						<th>Title</th>
						<th>Writer</th>
						<th>registration date</th>
					</tr>
				</thead>
				<c:forEach var="board" items="${list }">
					<tr>
						<td>${board.seq }</td>
						<td align="left"><a
							href="board?action=getBoard&seq=${board.seq }">${board.title }</a></td>
						<td>${board.writer }</td>
						<td>${board.regDate }</td>
						<%-- <td>${board.cnt }</td> --%>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

</body>
</html>