 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>

	.board{
		margin: 50px auto;
		height: 600px;
		width: 100%;
	}
	.board-line{		
		width: 100%;
		text-align:center;
	}
	.board-one{
		width: 45%;
		height: 250px;
		margin: 20px;
		display: inline-block;
		border: 2px solid lightBlue;
		border-radius: 8px;
		border-style: rounded;
	}
	.b-inline-a{
		float:left;
		width:80px;
		height:100%;
	}
	.b-inline-b{
		float:right;
		width:80%;
		height:100%;
		vertical-align: center;
	}
	.board-status {
		padding: 120% 0;
    	text-align: center;
	}
	.board-location{
		padding: 7% 0;
		text-align:center
	}
	.board-location .from-to{
		display: inline-block;
	}
	.board-location .via{
		display: inline-block;
	}
	.board-date-time{
		padding: 7% 0;
	}
	.board-title{
		padding: 5% 0;
	}
</style> 
<header class="intro-header">
    <div class="container">
    </div>
</header>
    
<jsp:include page="../include/find.jsp"></jsp:include>
<div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
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
									<span class="label label-success">${board[0].scb_from}</span>
								</div>
								->
								<div class="via">
									<span class="label label-info">${board[0].scb_via}</span>
								</div>
								->
								<div class="from-to">
									<span class="label label-success">${board[0].scb_to}</span>
								</div>
							</div>
							<div class="board-date-time">
								<span class="label label-info">${board[0].scb_sdate}</span>
							</div>
							<div class="board-title">
								<span class="label label-success">${board[0].scb_title}</span>
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
									<span class="label label-success">${board[1].scb_from}</span>
								</div>
								->
								<div class="via">
									<span class="label label-info">${board[1].scb_via}</span>
								</div>
								->
								<div class="from-to">
									<span class="label label-success">${board[1].scb_to}</span>
								</div>
							</div>
							<div class="board-date-time">
								<span class="label label-info">${board[1].scb_sdate}</span>
							</div>
							<div class="board-title">
								<span class="label label-success">${board[1].scb_title}</span>
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
									<span class="label label-success">${board[2].scb_from}</span>
								</div>
								->
								<div class="via">
									<span class="label label-info">${board[2].scb_via}</span>
								</div>
								->
								<div class="from-to">
									<span class="label label-success">${board[2].scb_to}</span>
								</div>
							</div>
							<div class="board-date-time">
								<span class="label label-info">${board[2].scb_sdate}</span>
							</div>
							<div class="board-title">
								<span class="label label-success">${board[2].scb_title}</span>
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
									<span class="label label-success">${board[3].scb_from}</span>
								</div>
								->
								<div class="via">
									<span class="label label-info">${board[3].scb_via}</span>
								</div>
								->
								<div class="from-to">
									<span class="label label-success">${board[3].scb_to}</span>
								</div>
							</div>
							<div class="board-date-time">
								<span class="label label-info">${board[3].scb_sdate}</span>
							</div>
							<div class="board-title">
								<span class="label label-success">${board[3].scb_title}</span>
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