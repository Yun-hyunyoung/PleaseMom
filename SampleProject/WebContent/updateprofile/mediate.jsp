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
			<h4><a href="BoardReviewListServlet">후기</a></h4>
		</div>
		<div class="col-sm-9">
			<form class="form-horizontal" action="UpdateProfileServlet">
				
			</form>
				<c:set var="requestBoardList" value="${requestBoard}"></c:set>
				<c:set var="rBoard" value="${requestBoard.boardList}"></c:set>
				<c:set var="rStart" value="${requestBoard.mediateStart}"></c:set>
				<c:set var="rArrival" value="${requestBoard.mediateArrival}"></c:set>
				
				<c:set var="guiderBoardList" value="${guiderBoard}"></c:set>
				<c:set var="gBoard" value="${guiderBoard.boardList}"></c:set>
				<c:set var="gStart" value="${guiderBoard.mediateStart}"></c:set>
				<c:set var="gArrival" value="${guiderBoard.mediateArrival}"></c:set>
				<c:set var="size" value="${size}"></c:set>
			<button id="request"> 동행요청한 게시글</button>
			<button id="guider"> 내가작성한 게시글</button>
			<c:if test="${ requestBoardList !=null}">
				<c:if test="${size != 0}">
					<br>-----reqeuest----<br>
					<c:forEach begin="0" end="${size-1}" varStatus="status">
						<a href="BoardMediateRetrieveServlet?scb_num=${ rBoard[status.index].scb_num}" style="text-decoration: none;">
						<div>
							글번호:${rBoard[status.index].scb_num}<br>
							글제목:${rBoard[status.index].scb_title}<br>
							글상태:${rBoard[status.index].scb_case}<br>
							출발공항:${rStart[status.index]}<br>
							경유:${rBoard[status.index].scb_via}<br>
							도착공항:${rArrival[status.index]}<br>
							글내용:${rBoard[status.index].scb_content}<br><br>
						</div>
						</a>
					</c:forEach>
				</c:if>
				<c:if test="${size == 0 }">
					<br>자료가 없습니다.
				</c:if>
			</c:if>
			<c:if test="${ guiderBoardList !=null}">
				<c:if test="${size != 0}">
					<br>-----guider----<br>
					<c:forEach begin="0" end="${size-1}" varStatus="status">
						<a href="BoardMediateRetrieveServlet?scb_num=${ gBoard[status.index].scb_num}" style="text-decoration: none;">
							<div>
								글번호:${gBoard[status.index].scb_num}<br>
								글제목:${gBoard[status.index].scb_title}<br>
								글상태:${rBoard[status.index].scb_case}<br>
								출발공항:${gStart[status.index]}<br>
								경유:${gBoard[status.index].scb_via}<br>
								도착공항:${gArrival[status.index]}<br>
								글내용:${gBoard[status.index].scb_content}<br><br>
							</div>
						</a>
					</c:forEach>
				</c:if>	
				<c:if test="${size == 0 }">
					<br>자료가 없습니다.
				</c:if>
			</c:if>
			
		</div>
    </div>
</div>
