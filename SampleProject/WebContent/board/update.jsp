<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<script type="text/javascript">
	function update(f) {
		f.action="BoardUpdateServlet";
		f.submit();
	}
	function cancle(f){
		f.action="BoardRetrieveServlet";
		f.submit();
	}
</script>

<form name="myForm">
	제목<input type="text" name="scb_title" value="${retrieveMap.bDto.scb_title} ">
	출발지<input type="text" name="scb_from" value="${retrieveMap.start }">
	경유<input type="text" name="scb_via" value="${retrieveMap.bDto.scb_via }">회
	목적지<input type="text" name="scb_to" value="${retrieveMap.arrival }">
	출발일<input type="text" name="scb_sdate" value="${retrieveMap.bDto.scb_sdate}">
	글내용<input type="text" name="scb_content" value="${retrieveMap.bDto.scb_content}">
	<input type="button" value="수정하기" onclick="update(myForm)">
	<input type="button" value="취소" onclick="cancle(myForm)">
	<input type="hidden" name="scb_num" value="${retrieveMap.bDto.scb_num}">
</form>
