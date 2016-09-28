<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<style type="text/css">

 .abc{
 	form-control : none !important;
 	input-lg : none !important;
 }
 .blue{
   color:blue;
 }
 .red{
   color:red;
 }
</style>

<div class="container">
    <div class="row">
        <div class="col-sm-3">
			<h4><a href="UpdateProfileFormServlet">프로필 수정</a></h4>
			<h4><a href="BoardMediateListServlet">중개 현황</a></h4>
			<h4><a href="#">후기</a></h4>
		</div>
		<div class="col-sm-9">
			mediateRetrieve
			<form class="form-horizontal" action="UpdateProfileServlet">
			</form>
				<button name="mediateConfirm" onclick="mediateConfirmfunction()">승인완료</button>			
				<button name="mediateCancle" onclick="mediateCanclefunction()">동행취소</button>			
				<button name="mediateList" onclick="mediateListfunction()">목록보기</button>			
			
		</div>
    </div>
</div>
