/*	include/image-find
	ImageSearch Event	*/ 
$(".img-text").on("click", function() {
	var country = $(this)[0].textContent;
	$("#imgSearchCountry").val(country);
	$("#imgSearchForm").submit();
})

/*	include/find.jsp
 *  Search Button Event		*/
function boardList(f){
	f.action="BoardListServlet";
	f.submit();
}

/*  login/loginForm.jsp 
	find Password Events	*/
$("#findPwBtn").on("click", function(event) {
	$.ajax({
		type:'post',
		url:'search/memberSearchByPasswd.jsp',
		data:{userid:$("#userid_findpw").val()},
		dataType:'text',
		success:function(responseData){
			if(responseData.trim() == 'none'){
				$("#checkId").html("<h5 style='color:red;'>이메일이 일치하지 않습니다.</h5>");
			}else{
				$("#showSubmit").html("<h4><input class='form-control input-lg' type='submit' value='발송'></h4>");
			}
		}
	})
})

$("#findPwBtn").on('click', function() {
	$("#checkId").html("");
	$("#showSubmit").html("");
})

$("#findPwClose").on('click', function() {
	window.close();
})

/*   login/loginForm.jsp 
 *   Login Validation Event*/
/*$("#userid").on("keydown", function() {
	$("#id-valid").html("");
})
$("#passwd").on("keydown", function() {
	$("#pass-valid").html("");
})
$("#submit").on("click", function(event) {
	$("#id-valid").html("");
	$("#pass-valid").html("");
	if($("#userid").val() == ""){
		$("#id-valid").html("아이디를 입력하세요");
		event.preventDefault();
	}else if($("#passwd").val() == ""){
		$("#pass-valid").html("비밀번호를 입력하세요");
		event.preventDefault();
	}
})*/

/*	member/addMemberForm.jsp
	add member Validation Event		*/
$(".id-valid-ck").on("keyup", function() {
	$.ajax({
		type:'post',
		url:'search/memberSearchByPw.jsp',
		data: {userid: $(".id-valid-ck").val()},
		dataType: 'text',
		success: function(data) {
			if(data.trim() == 'none'){
				$('.valid-id').html('<h5>사용 가능한 아이디입니다.</h5>');
				$(".valid-submit").prop("type", "submit");
			}else{
				$('.valid-id').html('<h5>중복된 아이디입니다.</h5>');
				$(".valid-submit").prop("type", "button");
			}
		}
	})
})

$(".valid-submit").on("click", function(event) {
	$.ajax({
		type:'post',
		url:'search/memberSearchByPw.jsp',
		data: {userid: $(".id-valid-ck").val()},
		dataType: 'text',
		success: function(data) {
			console.log(data.trim());
			if(data.trim() != 'none'){
				$('.valid-id').html('<h5>중복된 아이디입니다!!!</h5>');
			}
			if (($("#passwd2").val() != $("#passwd").val())){
				$(".valid-pass").html("<h5>비밀번호가 일치하지 않습니다!!!</h5>");
			}
		}
	})
})
$("#passwd2").on("focusout", function() {
	if ($("#passwd2").val() == $("#passwd").val()) {
		$(".valid-pass").html("<h5>비밀번호 일치힙니다.</h5>");
		$(".valid-submit").prop("type", "submit");
	} else{
		$(".valid-pass").html("<h5>비밀번호 불일치합니다.</h5>");
		$(".valid-submit").prop("type", "button");
	}
})

/*	write.jsp
 * 	Board Write Form Event
 *  return list function
 */
function boardWrite(f) { 
	f.action="BoardWriteServlet"; 
	f.submit(); 
} 
function goBack(){ 
	window.history.back(); 
} 

/*	update.jsp
 * 	Board Update Form Event
 *  return retrieve function
 */
function update(f) {
	f.action="BoardUpdateServlet";
	f.submit();
}
function cancle(f){
	f.action="BoardRetrieveServlet";
	f.submit();
}

/*
 * 	mediate.jsp
 *  Button Event => request/guider
 */
$(document).ready(function () {
	$("#request").on("click",function(){
		location.href="BoardMediateListServlet?separator=request";
	});
	
	$("#guider").on("click",function(){
		location.href="BoardMediateListServlet?separator=guider";
	});
});

/*
 *	mediateRetrieve.jsp
 *	confirm,cancle,list function 
*/
function mediateConfirmfunction(f) {
	location.href="BoardMediateConfirmServlet";
}
function mediateCancelfunction(f) {
	location.href="BoardMediateCancelServlet";
}
function mediateListfunction(f) {
	location.href="BoardMediateListServlet";
}