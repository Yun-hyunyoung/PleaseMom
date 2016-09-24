<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<style type="text/css">
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '!';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
<div class="container">
    <div class="row">
		<div class="col-sm-3">
			<h4><a href="ManageAccountFormServlet">계정 관리</a></h4>
    	</div>
        <div class="col-sm-9">
	        <form name="myForm" class="form-horizontal">
				  <h1>인증 현황</h1>
				  <hr>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-3 control-label">아이디</label>
				    <div class="col-sm-7">
				      <input type="email" class="form-control input-lg" name="userid" value="${prof.mem_id}" readonly="readonly">
				    </div>
				    <c:set var="xxx" value="${prof.mem_email_ck}" scope="session"></c:set>
				    <div class="col-sm-2">
					    <c:if test="${xxx == 'N'}">
					    	<button class="btn btn-warning" onclick="emailAuthor(myForm)">인증하기</button>
				    	</c:if>
				    	<c:if test="${xxx == 'Y'}">
							<div class="btn btn-success">인증완료</div><br>
						</c:if>
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-3 control-label">전화번호</label>
				    <div class="col-sm-7">
				      <input type="text" class="form-control input-lg" name="phone" value="${prof.mem_phone}">
				    </div>
				    <div class="col-sm-2">
				    	<button class="btn btn-warning">인증하기</button>
				    </div>
				  </div>
				  <hr style="margin-top: 100px;margin-bottom: 100px;height: 1px;background-color: black">
				  <h1>계정 삭제 요청</h1> <hr>
				<button class="button" style="vertical-align:middle" onclick="deleteMember(myForm)" ><span>계정 삭제</span></button>
			</form>
        </div>
    </div>
</div>

<script type="text/javascript" src="js/jquery-3.1.0.js"></script>
<script type="text/javascript">

	function emailAuthor(f){
		   f.action="sendMail.jsp";
	}
	function deleteMember(f){
		   f.action="";
	}
	

</script>