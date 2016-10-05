<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="main-panel" style="padding-top: 20px">
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4 col-md-5">
                        <div class="card card-user" style="border: 2px solid; border-radius: 8px; backgound-color: gray; padding-top: 20px; padding-bottom: 20px; margin-bottom: 20px">
                            <div class="content text-center">
                                <div class="author">
                                  <img class="avatar border-white" src="img/images.png" alt="..."/>
                                  <h4 class="title">Chet Faker<br />
                                     <a href="#"><small>@chetfaker</small></a>
                                  </h4>
                                </div>
                                <div class="text-center">
                                    죽기 전에 하고 싶은 말 있나?<br>
                                </div>
                            </div>
                            <hr>
                            <div class="text-center">
                            	<div class="row">
                            		<div class="col-md-5 col-md-offset-1">
                            			이메일인증<br />
	                                    <c:if test="${mDto.mem_email_ck == 'Y'}">
	                                    	<img style="width: 30px; height: 30px;" src="img/verified.png" alt="..."/>
	                                    </c:if>
	                                    <c:if test="${mDto.mem_email_ck == 'N'}">
	                                    	<img style="width: 30px; height: 30px;" src="img/unverified.png" alt="..."/>
	                                    </c:if>
                            		</div>
                            		<div class="col-md-4 col-md-offset-1">
                            			휴대폰인증<br />
	                                    <c:if test="${mDto.mem_phone_ck == 'Y'}">
	                                    	<img style="width: 30px; height: 30px;" src="img/verified.png" alt="..."/>
	                                    </c:if>
	                                    <c:if test="${mDto.mem_phone_ck == 'N'}">
	                                    	<img style="width: 30px; height: 30px;" src="img/unverified.png" alt="..."/>
	                                    </c:if>
	                                </div>
                            	</div>
                            </div>
                            <div class="text-center">
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-1">
                                        <h5>윤현영<br /><small>이름</small></h5>
                                    </div>
                                    <div class="col-md-4">
                                        <h5>25<br /><small>나이</small></h5>
                                    </div>
                                    <div class="col-md-3">
                                        <h5>대학생<br /><small>직업</small></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-7" style="border: 2px solid; border-radius: 8px; backgound-color: gray; padding-top: 10px; padding-bottom: 20px; margin-bottom: 20px">
                    	<div class="header text-center">
                           	<h3 class="title">${retrieveMap.bDto.scb_title}</h3>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-7" style="border: 2px solid; border-radius: 8px; backgound-color: gray; padding-top: 20px; padding-bottom: 20px">
                        <div class="card">
                            <div class="content">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>출발 공항</label>
                                                <br>
                                                <label>${retrieveMap.start}</label>
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label>경유</label>
                                                <br>
                                                <label>${retrieveMap.bDto.scb_via}</label>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>도착 공항</label>
                                                <br>
                                                <label>${retrieveMap.arrival}</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>출발 시간</label>
                                                <br>
                                                <label>${retrieveMap.bDto.scb_sdate}</label>
                                            </div>
                                        </div>
                                    </div>
									<div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>글 내용</label>
                                                <br>
                                                ${retrieveMap.bDto.scb_content}
                                            </div>
                                        </div>
                                    </div>
                                    <div class="text-center">
                                        <form name="myForm" method="get">
										<c:set var="case2" value="${retrieveMap.bDto.scb_case}"></c:set>
										<c:set var="loginMemberNum" value="${login.mem_num}" scope="session"></c:set>
										<c:set var="retrieveMap" value="${retrieveMap}" scope="session"></c:set>
										<c:set var="DtoMemberNum" value="${mDto.mem_num}"></c:set>
										<c:set var="boardNum" value="${retrieveMap.bDto.scb_num}"></c:set>
										<c:set var="searchMapFrom" value="${map.scb_from}" scope="session"></c:set>
										<c:set var="mDto" value="${mDto}" scope="session"></c:set>
										<c:if test="${loginMemberNum!=DtoMemberNum}">
											<input type="button" value="동행요청" <c:if test="${case2!='WAIT'}">disabled="disabled" style="background: rgb(100,100,100);"</c:if> onclick="boardMediate()" >
										</c:if>
										<c:if test="${loginMemberNum==DtoMemberNum}">
											<input class="btn btn-info btn-fill btn-wd" type="button" value="수정" onclick="boardUpdate(myForm)">
											<input class="btn btn-info btn-fill btn-wd" type="button" value="삭제" onclick="boardDelete(myForm,${boardNum})">
										</c:if>
											<input class="btn btn-info btn-fill btn-wd" type="button" value="목록보기" onclick="boardRetrieveToList(myForm,'${map.scb_from}','${map.scb_to }','${map.min}','${map.max}','${curPage1}')">
										</form>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>
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