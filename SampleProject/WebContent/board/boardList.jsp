<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    

<div class="container">
        <div class="row">
        	<div class="col-lg-12 col-md-12">
        		<c:set var="board" value="${page.list}"></c:set>
				<c:set var="start" value="${start }"></c:set>
				<c:set var="arrival" value="${arrival }"></c:set>
				<div class="board">
					<c:set var="board" value="${page.list}"></c:set>
						<div class="board-line">
						<c:if test="${board[0].scb_num != null}">
						  <div class="board-one">
						  <div class="b-inline-a">
							<div class="board-status">
								<div class="alert alert-info" role="alert">${board[0].scb_case}</div>
							</div>
						  </div>
						  <div class="b-inline-b">
							<div class="board-location">
								<div class="from-to">
									<span class="label label-success">${start[0]}</span>
								</div>
								->
								<div class="via">
									<span class="label label-info">${board[0].scb_via}</span>
								</div>
								->
								<div class="from-to">
									<span class="label label-success">${arrival[0]}</span>
								</div>
							</div>
							<div class="board-date-time">
								<span class="label label-info">${board[0].scb_sdate}</span>
							</div>
							<div class="board-title">
								<a href="BoardRetrieveServlet?scb_num=${board[0].scb_num}"><span class="label label-success">${board[0].scb_title}</span></a>
							</div>
						  </div>
						</div>
						</c:if>
						<c:if test="${board[1].scb_num != null}">
						  <div class="board-one">
						  <div class="b-inline-a">
							<div class="board-status">
								<div class="alert alert-info" role="alert">${board[1].scb_case}</div>
							</div>
						  </div>
						  <div class="b-inline-b">
							<div class="board-location">
								<div class="from-to">
									<span class="label label-success">${start[1]}</span>
								</div>
								->
								<div class="via">
									<span class="label label-info">${board[1].scb_via}</span>
								</div>
								->
								<div class="from-to">
									<span class="label label-success">${arrival[1]}</span>
								</div>
							</div>
							<div class="board-date-time">
								<span class="label label-info">${board[1].scb_sdate}</span>
							</div>
							<div class="board-title">
								<a href="BoardRetrieveServlet?scb_num=${board[1].scb_num}"><span class="label label-success">${board[1].scb_title}</span></a>
							</div>
						  </div>
						</div>
						</c:if>
					</div>	
						<div class="board-line">
						<c:if test="${board[2].scb_num != null}">
						  <div class="board-one">
						  <div class="b-inline-a">
							<div class="board-status">
								<div class="alert alert-info" role="alert">${board[2].scb_case}</div>
							</div>
						  </div>
						  <div class="b-inline-b">
							<div class="board-location">
								<div class="from-to">
									<span class="label label-success">${start[2]}</span>
								</div>
								->
								<div class="via">
									<span class="label label-info">${board[2].scb_via}</span>
								</div>
								->
								<div class="from-to">
									<span class="label label-success">${arrival[2]}</span>
								</div>
							</div>
							<div class="board-date-time">
								<span class="label label-info">${board[2].scb_sdate}</span>
							</div>
							<div class="board-title">
								<a href="BoardRetrieveServlet?scb_num=${board[2].scb_num}"><span class="label label-success">${board[2].scb_title}</span></a>
							</div>
						  </div>
						</div>
						</c:if>
						<c:if test="${board[3].scb_num != null}">
						  <div class="board-one">
						  <div class="b-inline-a">
							<div class="board-status">
								<div class="alert alert-info" role="alert">${board[3].scb_case}</div>
							</div>
						  </div>
						  <div class="b-inline-b">
							<div class="board-location">
								<div class="from-to">
									<span class="label label-success">${start[3]}</span>
								</div>
								->
								<div class="via">
									<span class="label label-info">${board[3].scb_via}</span>
								</div>
								->
								<div class="from-to">
									<span class="label label-success">${arrival[3]}</span>
								</div>
							</div>
							<div class="board-date-time">
								<span class="label label-info">${board[3].scb_sdate}</span>
							</div>
							<div class="board-title">
								<a href="BoardRetrieveServlet?scb_num=${board[3].scb_num}"><span class="label label-success">${board[3].scb_title}</span></a>
							</div>
						  </div>
						</div>
						</c:if>
					</div>			
				</div>
				<jsp:include page="page.jsp" flush="true" />
            </div>
        </div>
	</div>