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


<form name="myForm">
	<h1>인증 현황</h1> <hr>
	<div class="col-lg-8">
	아이디<input class="form-control input-lg" type="text" name="userid" value="${prof.mem_id}" readonly="readonly">
	</div>
	<c:set var="xxx" value="${prof.mem_email_ck}" scope="session"></c:set>
	<div class="col-lg-4">
	<c:if test="${xxx == 'N'}">
	<button class="btn btn-primary" onclick="emailAuthor(myForm)">인증하기</button><br>
	</c:if>
	<c:if test="${xxx == 'Y'}">
	<div class="label label-success">인증완료</div><br>
	</c:if>
	</div>
	<br>
	<div class="col-lg-12">
	전화번호<input class="form-control input-lg" type="text" name="phone" value="${prof.mem_phone}" readonly="readonly"><br>
	</div>
	<br>
	<h1>계정 삭제 요청</h1> <hr>
	<button class="button" style="vertical-align:middle" onclick="deleteMember(myForm)" ><span>계정 삭제</span></button>
</form>
<script type="text/javascript" src="js/jquery-3.1.0.js"></script>
<script type="text/javascript">

	function emailAuthor(f){
		   f.action="sendMail.jsp";
	}
	function deleteMember(f){
		   f.action="";
	}
	

</script>