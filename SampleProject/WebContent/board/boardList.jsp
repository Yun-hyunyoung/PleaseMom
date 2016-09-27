<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
 <%@ taglib prefix="c-rt" uri="http://java.sun.com/jstl/core_rt" %> 

<div class="container">
	<div class="row">
		<div class="col-lg-12 col-md-12">
				<c:forEach var="board" items="${page.list}" varStatus="s">
					<c:if test="${board != null}">
					<div class="board-container col-lg-6 col-md-6 col-sm-12 col-xs-12">
						<div class="board-content">
							<div class="status ">
								<c:if test="${board.scb_case == 'WAIT'}">
									<img src="img/ic_sub.jpg">
								</c:if>
								<c:if test="${board.scb_case == 'DURING'}">
									<img src="img/ic_pro.jpg">
								</c:if>
								<c:if test="${board.scb_case == 'CONFIRM'}">
									<img src="img/ic_com.jpg">
								</c:if>	
							</div>
							<div class="contents ">
								<div class="location">
									<img src="img/plane.png" style="width:20px; height:20px"></img>
									<div class="from-to">
										<div>${start[s.index]}</div>
									</div>
									<img src="img/right-arrow.jpg" style="width:20px; height:20px"></img>
									<div class="via">
										<div>${board.scb_via}회</div>
									</div>
									<img src="img/right-arrow.jpg" style="width:20px; height:20px"></img>
									<div class="from-to">
										<div>${arrival[s.index]}</div>
									</div>
								</div>
								<div class="board-date-time">
									<div>${board.scb_sdate}</div>
								</div>
								<div class="board-title">
									<a href="BoardRetrieveServlet?scb_num=${board.scb_num}"><div>${board.scb_title}</div></a>
								</div>
							</div>
						</div>
					</div>
					</c:if>
				</c:forEach>
			<jsp:include page="page.jsp" flush="true" />
		</div>
	</div>
</div>