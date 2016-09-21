<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form action="LoginServlet" method="post">
	<input class="form-control input-lg" type="text" name="userid" id="userid" placeholder="아이디(E-mail)" autofocus>
	<div id="id-valid"></div>
	<input class="form-control input-lg" type="password" name="passwd" id="passwd" placeholder="비밀번호">
	<div id="pass-valid"></div>
	<div id="login-valid"></div>
	<hr>
	<input class="form-control input-lg" type="submit" id="submit">
</form>