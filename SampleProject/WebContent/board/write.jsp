<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">
	function boardWrite(f) {
		f.action="BoardWriteServlet";
		f.submit();
	}
	function goBack(){
		window.history.back();
	}
</script>

<form name="myForm">
	제목<input type="text" name="scb_title">
	출발지<input type="text" name="scb_from">
	경유<input type="text" name="scb_via">회
	목적지<input type="text" name="scb_to">
	출발일<input type="text" name="scb_sdate">
	글내용<input type="text" name="scb_content">
	<input type="button" value="글쓰기" onclick="boardWrite(myForm)">
	<input type="button" value="취소" onclick="goBack()">
</form>

