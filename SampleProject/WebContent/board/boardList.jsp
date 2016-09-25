<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    

<div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                           
				<c:set var="board" value="${page.list}"></c:set>
				<c:set var="start" value="${start }"></c:set>
				<c:set var="arrival" value="${arrival }"></c:set>
				<c:forEach var="i" begin="0" end="${start.size()}">
					${board[i].scb_num}
					
					${start[i]}
					${board[i].scb_via}
					${arrival[i]}
					${board[i].scb_sdate}
					<a href="BoardRetrieveServlet?scb_num=${board[i].scb_num}">${board[i].scb_title}</a>
					${board[i].scb_wdate}
					${board[i].scb_case}
				<br>
				</c:forEach>
				<jsp:include page="page.jsp" flush="true" />
            </div>
        </div>
	</div>