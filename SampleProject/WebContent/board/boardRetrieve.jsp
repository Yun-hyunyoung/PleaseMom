<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container" style="padding: 10px;">
	<div class="row">
		<div class="col-lg-10 col-lg-offset-1 col-md-12" style="border: 2px solid; padding-top: 20px">
			<div class="profile">
				<div class="profile-photo col-lg-4">
					<div style="width:230px; height:230px; background-image:url(${mDto.mem_picture})"></div>
				</div>
				<div class="profile-content col-lg-8 well well-large">
						<h4>이름 ${mDto.mem_name}</h4>

  						<div class="label label-success">출발 공항 : ${retrieveMap.start}</div>
						<div class="label label-default">경유 : ${retrieveMap.bDto.scb_via}회</div>
						<div class="label label-success">도착 공항 : ${retrieveMap.arrival}</div>
					
					
					<div class="col-lg-12" style="padding: 20px; height:40px; align:center;">
						<div class="label label-success">출발일 : ${retrieveMap.bDto.scb_sdate}</div>
					</div>
					<div>이메일인증 : ${mDto.mem_email_ck}</div>
					<div>휴대폰인증 : ${mDto.mem_phone_ck}</div>
					
				</div>
			</div>
			<div class="board-content col-lg-12 well well-large">
			글제목:${retrieveMap.bDto.scb_title}<br>
			글내용:${retrieveMap.bDto.scb_content}<br>
			</div>
		</div>
	</div>
</div>

<form name="myForm" method="get">
<c:set var="case2" value="${retrieveMap.bDto.scb_case}"></c:set>
<c:set var="loginMemberNum" value="${login.mem_num}" scope="session"></c:set>
<c:set var="retrieveMap" value="${retrieveMap}" scope="session"></c:set>
<c:set var="DtoMemberNum" value="${mDto.mem_num}"></c:set>
<c:set var="boardNum" value="${retrieveMap.bDto.scb_num}"></c:set>
<c:set var="searchMapFrom" value="${map.scb_from}" scope="session"></c:set>
<c:set var="mDto" value="${mDto}" scope="session"></c:set>
<c:if test="${loginMemberNum!=DtoMemberNum}">
	<input type="button" value="동행요청" <c:if test="${case2=='DURING'}">disabled="disabled" style="background: rgb(100,100,100);"</c:if> onclick="boardMediate()" >
</c:if>
<c:if test="${loginMemberNum==DtoMemberNum}">
	<input type="button" value="수정" onclick="boardUpdate(myForm)">
	<input type="button" value="삭제" onclick="boardDelete(myForm,${boardNum})">
</c:if>
	<input type="button" value="목록보기" onclick="boardRetrieveToList(myForm,'${map.scb_from}','${map.scb_to }','${map.min}','${map.max}','${curPage1}')">
</form>

<script type="text/javascript">
	function boardDelete(f,num) {
		alert(num);
		location.href="BoardDeleteServlet?scb_num="+num;
	}
	function boardUpdate(f) {
		f.action="BoardUpdateUIServlet";
		console.log(f.action);
		location.href="BoardUpdateUIServlet";
	}
	function boardMediate(){
		if(${login==null}){
			alert("로그인을 하셔야 이용 할 수 있습니다.");
		}else{
			location.href="BoardMediateServlet";
		} 
	}
	function boardRetrieveToList(f,scb_from,scb_to,min,max,curPage) {
		location.href="BoardListServlet?scb_from="+scb_from+"&scb_to="+scb_to+"&min="+min+"&max="+max+"&curPage="+curPage;
	}
</script>