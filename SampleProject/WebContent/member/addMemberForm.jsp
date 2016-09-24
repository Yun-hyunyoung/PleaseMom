<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">
    <form action="AddMemberServlet">
	    <div class="row">
	        <div class="col-lg-6 col-lg-offset-3 col-md-10 col-md-offset-1">
        		<div class="form-group">
			      <label class="col-sm-3 control-label"><h4>아이디</h4></label>
		  	      <div class="col-sm-9">
			        <input class="form-control input-lg" type="email" name="userid" placeholder="Email address" autofocus>
			      </div>
			    </div>
			    <div class="form-group">
			      <label class="col-sm-3 control-label"><h4>비밀번호</h4></label>
			      <div class="col-sm-9">
			        <input class="form-control input-lg" type="password" name="passwd" id="passwd">
			      </div>
			    </div>
			    <div class="form-group">
			      <label class="col-sm-3 control-label"><h4>비밀번호확인</h4></label>
			      <div class="col-sm-9">
			        <input class="form-control input-lg" type="password" name="passConfirm" id="passwd">
			      </div>
			    </div>
			    <div class="form-group">
			      <label class="col-sm-3 control-label"><h4>이름</h4></label>
			      <div class="col-sm-9">
			        <input class="form-control input-lg" type="text" name="username" id="passwd">
			      </div>
			    </div>
			    <div class="form-group">
			      <label class="col-sm-3 control-label"><h4>생년월일</h4></label>
			      <div class="col-sm-3">
				    <select class="selectpicker form-control" id="years" name="birthYear"></select>
				  </div>
				  <div class="col-sm-3">
				    <select class="selectpicker form-control" id="months" name="birthMonth"></select>
				  </div>
				  <div class="col-sm-3">
			        <select class="selectpicker form-control" id="days" name="birthDate"></select>
			      </div>
			    </div>
		    </div>
		</div>
    	<br>
    	<div class="row">
        	<div class="col-lg-6 col-lg-offset-3 col-md-10 col-md-offset-1">
        		<div class="col-sm-12">
        			<h4><input class="form-control input-lg" type="submit" value="회원가입"></h4>
        		</div>
       		</div>
    	</div>
	</form>
</div>

