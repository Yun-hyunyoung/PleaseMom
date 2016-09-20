<header class="intro-header">
    <div class="container">
    </div>
</header>
    
<jsp:include page="../include/find.jsp"></jsp:include>
<div class="container">
       <div class="row">
           <div class="col-lg-10 col-lg-offset-1 col-md-8 col-md-offset-1">
				<c:set var="page" value="${page }"></c:set>
				<c:forEach var="board" items="${page.list}" varStatus="status">
					${board.scb_num}
					${board.scb_from}
					${board.scb_via}
					${board.scb_to}
					${board.scb_sdate}
					${board.scb_title}
					${board.scb_wdate}
					${board.scb_case}
				<br>
				</c:forEach>
				<jsp:include page="page.jsp" flush="true" />
			</div>
       </div>
</div>