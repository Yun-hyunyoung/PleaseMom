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
			<form class="form-horizontal" action="UpdateProfileServlet">
			</form>
			<c:set var="mediateRetrieve" value="${ mediateRetrieve}" scope="session"></c:set>
			<c:set var="mediateRetrieveDto" value="${ mediateRetrieveDto}" scope="session"></c:set>
			<c:set var="requestMember" value="${mediateRetrieveRequestMember}"></c:set>
			<c:set var="login" value="${login}" scope="session"></c:set>
			글작성자:${mediateRetrieveDto.mem_name}<br>
			사진:${mediateRetrieveDto.mem_picture}<br>
			전화번호:${mediateRetrieveDto.mem_phone}<br>
			이메일 인증:${mediateRetrieveDto.mem_email_ck}<br>
			휴대폰 인증:${mediateRetrieveDto.mem_phone_ck}<br>
			
			게시판상태:${mediateRetrieve.bDto.scb_case}<br>
			출발공항:${mediateRetrieve.start}<br>
			경유:${mediateRetrieve.bDto.scb_via}<br>
			도착공항:${mediateRetrieve.arrival}<br>
			출발시간:${mediateRetrieve.bDto.scb_sdate}<br>
			
			<c:if test="${requestMember!=null }">
				----------신청자 정보--------------<br>
				동행요청 신청자:${requestMember.mem_name}<br>
				사진:${requestMember.mem_picture}<br>
				전화번호:${requestMember.mem_phone}<br>
				이메일 인증:${requestMember.mem_email_ck}<br>
				휴대폰 인증:${requestMember.mem_phone_ck}<br>
			</c:if>
			${login.mem_case }
				<%-- <button name="mediateConfirm" onclick="mediateConfirmfunction()" <c:if test="${login.mem_case=='CONFIRM'}">disabled="disabled" style="text-decoration: none;background-color: rgb(100,100,100);"</c:if>>동행승인</button>		
				<button name="mediateCancle" onclick="mediateCancelfunction()" <c:if test="${login.mem_case=='CANCEL' }">disabled="disabled" style="text-decoration: none;background-color: rgb(100,100,100);"</c:if>>동행취소</button> --%>		
				<button name="mediateConfirm" onclick="mediateConfirmfunction()">동행승인</button>		
				<button name="mediateCancle" onclick="mediateCancelfunction()">동행취소</button>		
				<button name="mediateList" onclick="mediateListfunction()">목록보기</button>			
			
		</div>
    </div>
</div>
