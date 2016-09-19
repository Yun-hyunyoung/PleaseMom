<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form action="AddMemberServlet">
	<input class="form-control" name="userid" type="text" placeholder="아이디(E-mail)">
	<input class="form-control" name="passwd" type="password" placeholder="비밀번호">
	<input class="form-control" name="passConfirm" type="password" placeholder="비밀번호확인">
	<input class="form-control" name="username" type="text" placeholder="이름">
	<input class="form-control" name="birthYear" type="text" placeholder="년">
	<input class="form-control" name="birthMonth" type="text" placeholder="월">
	<input class="form-control" name="birthDate" type="text" placeholder="일">
	<input class="form-control" type="submit">
</form>