<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

이름:${mDto.mem_name}<br>
이메일인증:${mDto.mem_email_ck}<br>
휴대폰인증:${mDto.mem_phone_ck}<br>
가이더 사진:${mDto.mem_picture}<br>
출발 공항:${retrieveMap.start}<br>
경유:${retrieveMap.bDto.scb_via}회<br>
도착 공항:${retrieveMap.arrival}<br>
출발일:${retrieveMap.bDto.scb_sdate}<br>
글제목:${retrieveMap.bDto.scb_title}<br>
글내용:${retrieveMap.bDto.scb_content}<br>
${map }
${map.min }
<form name="myForm" method="get">
<c:set var="loginMemberNum" value="${login.mem_num}" scope="session"></c:set>
<c:set var="DtoMemberNum" value="${mDto.mem_num}"></c:set>
<c:set var="boardNum" value="${retrieveMap.bDto.scb_num}"></c:set>
<c:set var="searchMapFrom" value="${map.scb_from}" scope="session"></c:set>
<c:if test="${loginMemberNum!=DtoMemberNum}">
	<input type="button" value="동행요청" onclick="during(myForm)" >
</c:if>
<c:if test="${loginMemberNum==DtoMemberNum}">
	<input type="button" value="수정" onclick="boardUpdate(myForm)">
	<input type="button" value="삭제" onclick="boardDelete(myForm,${boardNum})">
</c:if>
	<input type="button" value="목록보기" onclick="boardList(myForm,'${map.scb_from}','${map.scb_to }','${map.min}','${map.max}','${curPage1}')">
</form>

<script type="text/javascript">
	function boardDelete(f,num) {
		alert(num);
		location.href="BoardDeleteServlet?scb_num="+num;
	}
	function boardUpdate(f) {
		f.action="update.jsp";
		f.submit();
	}
	function during(f){
		f.action="";
		f.submit();
		
	}
	function boardList(f,scb_from,scb_to,min,max,curPage) {
		location.href="BoardListServlet?scb_from="+scb_from+"&scb_to="+scb_to+"&min="+min+"&max="+max+"&curPage="+curPage;
	}
</script>