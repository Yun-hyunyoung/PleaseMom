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


<form action="UpdateProfileServlet">
	<h1>필수 정보</h1> <hr>
	아이디<input class="form-control input-lg" type="text" name="userid" value="${prof.mem_id}" autofocus readonly="readonly">
	비밀번호<input class="form-control input-lg" type="password" name="passwd" id="passwd">
	비밀번호 확인<input class="form-control input-lg" type="password" name="passwd2" id="passwd2"><span id="result2"></span><br>
	<c:set var="xxx" value="${prof.mem_phone}" scope="session"></c:set>
	<c:if test="${xxx == null}">
	전화번호<input class="form-control input-lg" type="text" name="phone" placeholder="-없이 입력해주세요.">
	</c:if>
	<c:if test="${xxx != null}">
	전화번호<input class="form-control input-lg" type="text" name="phone" value="${prof.mem_phone}">
	</c:if>
	생일<input class="form-control input-lg" type="text" name="birth" value="${prof.mem_birth}" readonly="readonly">
	이름<input class="form-control input-lg" type="text" name="username" value="${prof.mem_name}">
	<hr>
	<input class="form-control input-lg" type="submit" value="수정">
</form>
<script type="text/javascript" src="js/jquery-3.1.0.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
	   
		$("#passwd2").on("keyup", function(event){
		 $("#result2").removeClass();
		   var p = $("#passwd").val();
		   var p2 = $("#passwd2").val();
		   if(p == p2){
			   $("#result2").text("일치").addClass("blue");
		   }else{
			   $("#result2").text("불일치").addClass("red");;
		   }
	   });
	   
		$("form").on("submit", function(event){
			var passwd = $("#passwd").val();
			var passwd2 = $("#passwd2").val();
			if(passwd != passwd2){
				alert("비밀번호가 다릅니다.");
			}else{
				alert("성공적으로 수정하였습니다.");
			}
		});
	   
	});
	

</script>